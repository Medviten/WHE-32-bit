#!/usr/bin/env bash

set -Eeuo pipefail

###############################################################################
# Configuration
###############################################################################

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_FILE="$SCRIPT_DIR/deploy-dbc.conf"

if [[ ! -f "$CONFIG_FILE" ]]; then
    echo "ERROR: Configuration file not found:"
    echo "       $CONFIG_FILE"
    echo
    echo "Copy deploy-dbc.conf.dist to deploy-dbc.conf and edit it."
    exit 1
fi

# shellcheck disable=SC1090
source "$CONFIG_FILE"

# Usage: deploy-dbc.sh [realm]. A realm (DEFAULT_REALM when none is given)
# also sources deploy-dbc.<realm>.conf, if it exists, to override settings,
# e.g. REMOTE_BUILD_SCRIPT and LOCAL_SOURCE_DIR for a 32-bit realm. The
# realm is passed on to build-dbc.sh (BUILD_REALM), which then reads its
# build-dbc.<realm>.conf, and with LOCAL_DATA_DIR set the client files go
# to the realm's own patch, patch-<PATCH_STEM>.<CLIENT_TAG>.MPQ, which the
# client loads only while its realmName equals the tag.
if [[ $# -gt 1 || "${1:-}" == -* ]]; then
    echo "Usage: $(basename "$0") [realm]" >&2
    exit 1
fi

REALM="${1:-${DEFAULT_REALM:-}}"

if [[ -n "$REALM" ]]; then
    REALM_CONFIG_FILE="$SCRIPT_DIR/deploy-dbc.$REALM.conf"
    if [[ -f "$REALM_CONFIG_FILE" ]]; then
        # shellcheck disable=SC1090
        source "$REALM_CONFIG_FILE"
    fi
fi

# The realm build-dbc.sh is run for; empty runs it with build-dbc.conf only
# (e.g. a 32-bit build script whose build-dbc.conf is already that realm's).
BUILD_REALM="${BUILD_REALM-$REALM}"

# The realm tag of the client patch the files go to; the client compares it
# with realmName, ignoring case. Empty means the untagged patch.
CLIENT_TAG="${CLIENT_TAG-$REALM}"

# With LOCAL_DATA_DIR (the client's Data folder) set, the client folders
# follow from the tag; otherwise LOCAL_DBFILES_CLIENT and LOCAL_MINIMAP_DIR
# are used as configured.
if [[ -n "${LOCAL_DATA_DIR:-}" ]]; then
    [[ -d "$LOCAL_DATA_DIR" ]]         || { echo "ERROR: LOCAL_DATA_DIR does not exist: $LOCAL_DATA_DIR" >&2; exit 1; }
    LOCAL_PATCH_DIR="$LOCAL_DATA_DIR/patch-${PATCH_STEM:-A}${CLIENT_TAG:+.$CLIENT_TAG}.MPQ"
    LOCAL_DBFILES_CLIENT="$LOCAL_PATCH_DIR/DBFilesClient"
    LOCAL_MINIMAP_DIR="$LOCAL_PATCH_DIR/Textures/Minimap"
    mkdir -p -- "$LOCAL_DBFILES_CLIENT"
fi

echo "Realm: ${REALM:-(none)}, build: ${BUILD_REALM:-(build-dbc.conf)}, client: $LOCAL_DBFILES_CLIENT"

###############################################################################
# Derived configuration
###############################################################################

# Temporary directory holding the SSH connection-sharing socket.
TMP_DIR="$(mktemp -d)"
CONTROL_PATH="$TMP_DIR/ssh-control.sock"

# Safety check for the local->remote sync: this exact filename (relative
# to both LOCAL_SOURCE_DIR and REMOTE_SOURCE_DIR) must already exist in
# BOTH places before the sync is allowed to run. Since the sync uses
# --delete, this exists purely to catch a wrong REMOTE_SOURCE_DIR before
# it can do any damage -- create an empty file with this name in your
# local working copy and on the server, once, and you're done.
SYNC_SENTINEL_FILENAME="${SYNC_SENTINEL_FILENAME:-.deploy-sync-marker}"

# Optional file of rsync exclude patterns (one per line, rsync's own
# glob syntax -- see `man rsync`, PATTERN MATCHING RULES), e.g. to skip
# large binary assets that don't need to clutter the server. If unset or
# the file doesn't exist, nothing extra is excluded.
RSYNC_EXCLUDE_FILE="${RSYNC_EXCLUDE_FILE:-$SCRIPT_DIR/deploy-dbc.exclude}"

###############################################################################
# Cleanup
###############################################################################

cleanup() {
    # Close the shared SSH connection if it's still open.
    if [[ -S "$CONTROL_PATH" ]]; then
        ssh -o ControlPath="$CONTROL_PATH" -O exit "$SSH_HOST" >/dev/null 2>&1 || true
    fi
    rm -rf "$TMP_DIR"
}

trap cleanup EXIT

###############################################################################
# Error handling
###############################################################################

on_error() {
    local exit_code=$?
    local line_number=$1

    echo
    echo "ERROR: deploy failed on line $line_number (exit code $exit_code)." >&2
    exit "$exit_code"
}

trap 'on_error $LINENO' ERR

###############################################################################
# Sanity checks
###############################################################################

command -v ssh >/dev/null \
    || { echo "ERROR: ssh command not found." >&2; exit 1; }

command -v rsync >/dev/null \
    || { echo "ERROR: rsync command not found." >&2; exit 1; }

[[ -d "$LOCAL_DBFILES_CLIENT" ]] \
    || { echo "ERROR: LOCAL_DBFILES_CLIENT does not exist: $LOCAL_DBFILES_CLIENT" >&2; exit 1; }

if [[ -n "${LOCAL_SOURCE_DIR:-}" ]]; then
    [[ -d "$LOCAL_SOURCE_DIR" ]] \
        || { echo "ERROR: LOCAL_SOURCE_DIR does not exist: $LOCAL_SOURCE_DIR" >&2; exit 1; }

    [[ -n "${REMOTE_SOURCE_DIR:-}" ]] \
        || { echo "ERROR: LOCAL_SOURCE_DIR is set but REMOTE_SOURCE_DIR is not." >&2; exit 1; }

    [[ -f "$LOCAL_SOURCE_DIR/$SYNC_SENTINEL_FILENAME" ]] \
        || { echo "ERROR: Sentinel file not found locally:" >&2
             echo "       $LOCAL_SOURCE_DIR/$SYNC_SENTINEL_FILENAME" >&2
             echo "       Refusing to sync -- see SYNC_SENTINEL_FILENAME." >&2
             exit 1; }
fi

###############################################################################
# Open a shared SSH connection (password prompted once here)
###############################################################################

echo "Connecting to $SSH_HOST..."
echo "(You'll be prompted for your password once; the build and the sync"
echo " below both reuse this same connection.)"
echo

ssh -MNf \
    -o ControlMaster=yes \
    -o ControlPath="$CONTROL_PATH" \
    -o ControlPersist=10m \
    "$SSH_HOST"

###############################################################################
# Push local working directory to the server (optional)
###############################################################################

# Replaces the old server-side `git pull` step -- this pushes your local
# working copy (modpaks/, integration/, config.sql, the manifest, etc.)
# straight to the server, no commit/push/pull round trip needed while
# iterating. Leave LOCAL_SOURCE_DIR unset to skip this entirely and just
# run the remote build against whatever's already there.
#
# WARNING: uses --delete, so this makes the remote directory an exact
# mirror of your local one -- anything present on the server but not in
# LOCAL_SOURCE_DIR gets removed. Point REMOTE_SOURCE_DIR carefully.
if [[ -n "${LOCAL_SOURCE_DIR:-}" ]]; then
    echo
    echo "Verifying sync sentinel file on $SSH_HOST..."

    if ! ssh -o ControlPath="$CONTROL_PATH" "$SSH_HOST" \
        "test -f '$REMOTE_SOURCE_DIR/$SYNC_SENTINEL_FILENAME'"
    then
        echo "ERROR: Sentinel file not found on $SSH_HOST:" >&2
        echo "       $REMOTE_SOURCE_DIR/$SYNC_SENTINEL_FILENAME" >&2
        echo "       Refusing to sync -- REMOTE_SOURCE_DIR may be wrong." >&2
        exit 1
    fi

    echo
    echo "============================================================"
    echo "Syncing local working directory to $SSH_HOST..."
    echo "============================================================"
    echo

    RSYNC_PUSH_ARGS=(-avz --delete --exclude='.git/')

    if [[ -f "$RSYNC_EXCLUDE_FILE" ]]; then
        echo "Using exclude file: $RSYNC_EXCLUDE_FILE"
        RSYNC_PUSH_ARGS+=(--exclude-from="$RSYNC_EXCLUDE_FILE")
    fi

    rsync "${RSYNC_PUSH_ARGS[@]}" \
        -e "ssh -o ControlPath=$CONTROL_PATH" \
        "$LOCAL_SOURCE_DIR/" \
        "$SSH_HOST:$REMOTE_SOURCE_DIR/"
fi

###############################################################################
# Run the remote build
###############################################################################

echo
echo "============================================================"
echo "Running remote DBC build on $SSH_HOST..."
echo "============================================================"
echo

ssh -o ControlPath="$CONTROL_PATH" "$SSH_HOST" "bash '$REMOTE_BUILD_SCRIPT' ${BUILD_REALM:+'$BUILD_REALM'}"

###############################################################################
# Sync the deployed DBCs down to the client
###############################################################################

echo
echo "============================================================"
echo "Remote build succeeded. Syncing DBCs to client..."
echo "============================================================"
echo

# --include/--exclude restricts the sync to .dbc files. --delete-during
# removes client-side .dbc files that no longer exist in the source --
# safe here specifically because $REMOTE_EXPORT_DIR always holds the
# complete current set for every manifest-listed modpak (not just files
# that changed since the last build), so anything missing from it really
# is no longer supposed to be on the client. Because --delete-excluded
# is NOT set, this only touches .dbc files -- anything else already in
# LOCAL_DBFILES_CLIENT (non-.dbc files, if any) is left alone.
rsync -avz --progress \
    --delete-during \
    -e "ssh -o ControlPath=$CONTROL_PATH" \
    --include='*.dbc' \
    --include='*/' \
    --exclude='*' \
    "$SSH_HOST:$REMOTE_EXPORT_DIR/" \
    "$LOCAL_DBFILES_CLIENT/"

###############################################################################
# Sync the exported CSVs down to the client
###############################################################################

# build-dbc.sh writes these next to the deployed DBCs, not to the export
# folder, so they need their own sync. No --delete: this only ever replaces
# these two files. rsync copies nothing and still succeeds if a file is
# missing, so check for them first; a missing file only affects the client's
# druid form preview, which isn't worth failing a finished deploy over.
if [[ -n "${REMOTE_CSV_DIR:-}" ]]; then
    echo
    echo "Syncing exported CSVs to client..."

    for csv in PlayerShapeshiftModel.csv ShapeshiftSkinColorRaces.csv; do
        if ! ssh -o ControlPath="$CONTROL_PATH" "$SSH_HOST" \
            "test -f '$REMOTE_CSV_DIR/$csv'"
        then
            echo "WARNING: $REMOTE_CSV_DIR/$csv not found on $SSH_HOST." >&2
            echo "         Is WORLD_DATABASE set in the server's build-dbc.conf?" >&2
        fi
    done

    rsync -avz --progress \
        -e "ssh -o ControlPath=$CONTROL_PATH" \
        --include='PlayerShapeshiftModel.csv' \
        --include='ShapeshiftSkinColorRaces.csv' \
        --exclude='*' \
        "$SSH_HOST:$REMOTE_CSV_DIR/" \
        "$LOCAL_DBFILES_CLIENT/"
else
    echo
    echo "Skipping exported CSVs: REMOTE_CSV_DIR is not set."
fi

###############################################################################
# Sync the built md5translate.trs down to the client
###############################################################################

# build-dbc.sh only writes md5translate.trs when ORIGINAL_TRS is set and a
# modpak changes the minimap table, and removes it otherwise. A client copy
# from an earlier build is then left alone, so say so instead of silently
# keeping it.
if [[ -n "${LOCAL_MINIMAP_DIR:-}" && -n "${REMOTE_CSV_DIR:-}" ]]; then
    echo
    if ssh -o ControlPath="$CONTROL_PATH" "$SSH_HOST" \
        "test -f '$REMOTE_CSV_DIR/md5translate.trs'"
    then
        echo "Syncing md5translate.trs to client..."
        mkdir -p -- "$LOCAL_MINIMAP_DIR"
        rsync -avz --progress \
            -e "ssh -o ControlPath=$CONTROL_PATH" \
            "$SSH_HOST:$REMOTE_CSV_DIR/md5translate.trs" \
            "$LOCAL_MINIMAP_DIR/"
    else
        echo "No md5translate.trs was built (see the build output above)."
        if [[ -f "$LOCAL_MINIMAP_DIR/md5translate.trs" ]]; then
            echo "WARNING: $LOCAL_MINIMAP_DIR/md5translate.trs is from an earlier build." >&2
            echo "         Delete it if no modpak changes the minimap any more." >&2
        fi
    fi
fi

###############################################################################
# Clean up the remote export directory
###############################################################################

echo
echo "Cleaning up remote export directory..."

# Non-fatal: the sync above already succeeded, so a cleanup hiccup here
# shouldn't be reported as a failed deploy. Worst case, the same files get
# synced again next time (harmless, just a bit of wasted bandwidth).
if ! ssh -o ControlPath="$CONTROL_PATH" "$SSH_HOST" \
    "find '$REMOTE_EXPORT_DIR' -maxdepth 1 -type f -name '*.dbc' -delete"
then
    echo "WARNING: Failed to clean up $REMOTE_EXPORT_DIR on $SSH_HOST." >&2
    echo "         Non-fatal -- the DBCs were already synced successfully." >&2
fi

echo
echo "============================================================"
echo "Deploy complete."
echo "============================================================"
