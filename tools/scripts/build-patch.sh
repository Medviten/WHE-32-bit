#!/usr/bin/env bash

set -Eeuo pipefail

###############################################################################
# Configuration
###############################################################################

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "$SCRIPT_DIR/../.." && pwd)"
CONFIG_FILE="$SCRIPT_DIR/build-dbc.conf"

# build-dbc.conf is optional here: it's only read for MODPAKS,
# MANIFEST_FILE and PATCH_OUTPUT_DIR, which default to this repo's own
# folders. Nothing else in it (database, dbctool) is needed.
if [[ -f "$CONFIG_FILE" ]]; then
    # shellcheck disable=SC1090
    source "$CONFIG_FILE"
fi

MODPAKS="${MODPAKS:-$REPO_ROOT/modpaks}"

# Same manifest as build-dbc.sh: only the modpaks listed there contribute
# patches, in the order listed.
MANIFEST_FILE="${MANIFEST_FILE:-$SCRIPT_DIR/build-dbc.manifest}"

# Where combined-<target>.patch is written. Defaults to this directory.
PATCH_OUTPUT_DIR="${PATCH_OUTPUT_DIR:-$SCRIPT_DIR}"

# Folder holding the module's own base patches, and which target each
# belongs to. A target's base patch goes first in its combined patch,
# before any modpak's patches for that target.
BASE_PATCH_DIR="${BASE_PATCH_DIR:-$REPO_ROOT/patches}"
declare -A BASE_PATCHES=(
    [core]="whe-acore.patch"
    [playerbots]="whe-playerbots.patch"
)

###############################################################################
# Command-line arguments
###############################################################################

for arg in "$@"; do
    case "$arg" in
        -h|--help)
            cat << USAGE
Usage: $(basename "$0")

Writes one combined-<target>.patch per target repo to PATCH_OUTPUT_DIR
(default: $SCRIPT_DIR):

  combined-core.patch        AzerothCore (modpak patches/core/)
  combined-playerbots.patch  mod-playerbots (modpak patches/playerbots/)
  combined-<target>.patch    any other patches/<target>/ the modpaks ship
                             (client, individual-progression, ...)

Each holds the target's base patch from $(basename "$BASE_PATCH_DIR")/, if it has one, followed by
the patches/<target>/*.patch of the modpaks in the manifest, in manifest
order. Apply each from its repo's root:

  git apply --ignore-space-change --ignore-whitespace combined-core.patch
USAGE
            exit 0
            ;;
        *)
            echo "ERROR: Unknown argument: $arg" >&2
            echo "       Run with --help for usage." >&2
            exit 1
            ;;
    esac
done

###############################################################################
# Functions
###############################################################################

# Same manifest rules as build-dbc.sh: blank lines and # comments are
# ignored, and every other line must name an existing modpak folder.
load_modpak_manifest() {
    if [[ ! -f "$MANIFEST_FILE" ]]; then
        echo "ERROR: Manifest file not found:" >&2
        echo "       $MANIFEST_FILE" >&2
        exit 1
    fi

    MODPAK_DIRS=()

    local line line_number=0 modpak_dir
    while IFS= read -r line || [[ -n "$line" ]]; do
        line_number=$((line_number + 1))

        line="${line%%#*}"                                  # strip comments
        line="${line#"${line%%[![:space:]]*}"}"              # trim leading ws
        line="${line%"${line##*[![:space:]]}"}"               # trim trailing ws
        [[ -n "$line" ]] || continue

        modpak_dir="$MODPAKS/$line"

        if [[ ! -d "$modpak_dir" ]]; then
            echo "ERROR: $MANIFEST_FILE line $line_number references a" >&2
            echo "       modpak that doesn't exist: $line" >&2
            echo "       Expected directory: $modpak_dir" >&2
            exit 1
        fi

        MODPAK_DIRS+=("$modpak_dir")
    done < "$MANIFEST_FILE"
}

# Prints the repo-relative path of every file a patch touches, one per
# line: the "+++ b/<path>" side, or the "--- a/<path>" side for a deleted
# file. Works for `git diff` and `diff -u` output alike.
patch_touched_files() {
    awk '
        /^--- / { old = $2; next }
        /^\+\+\+ / {
            path = ($2 == "/dev/null") ? old : $2
            sub(/^[ab]\//, "", path)
            print path
        }
    ' "$1" | sort -u
}

# Appends patch $2 to $1, preceded by a "# <label>" line ($3), which git
# apply and patch skip as text between patches.
append_patch() {
    local output="$1" patch="$2" label="$3"
    {
        echo
        echo "# $label"
        cat "$patch"
        # Keep the next "# ..." line from joining a last line that has no
        # newline
        [[ -z "$(tail -c 1 "$patch")" ]] || echo
    } >> "$output"
}

# Writes combined-<target>.patch for every target that has a base patch
# or a patches/<target>/ folder in a modpak of the manifest. Patches made
# separately against the same base can conflict when they touch the same
# file, so any file touched by more than one of them is reported. Old
# combined-*.patch files are removed first, so a target nothing ships
# anymore doesn't leave a stale patch behind.
build_combined_patches() {
    mkdir -p "$PATCH_OUTPUT_DIR"
    rm -f "$PATCH_OUTPUT_DIR"/combined-*.patch

    local -a targets=()
    local -A seen=()
    local dir target_dir target
    for target in core playerbots; do
        if [[ -f "$BASE_PATCH_DIR/${BASE_PATCHES[$target]}" ]]; then
            seen["$target"]=1
            targets+=("$target")
        fi
    done
    for dir in "${MODPAK_DIRS[@]}"; do
        [[ -d "$dir/patches" ]] || continue
        while IFS= read -r -d '' target_dir; do
            target="$(basename "$target_dir")"
            if [[ -z "${seen[$target]:-}" ]]; then
                seen["$target"]=1
                targets+=("$target")
            fi
        done < <(find "$dir/patches" -mindepth 1 -maxdepth 1 -type d -print0 | sort -z)
    done

    if (( ${#targets[@]} == 0 )); then
        echo "No base patches and no modpak in the manifest ships patches. Nothing to do."
        return 0
    fi

    local output patch modpak count file base
    for target in "${targets[@]}"; do
        output="$PATCH_OUTPUT_DIR/combined-$target.patch"
        count=0
        local -A touched_by=()

        {
            echo "# Combined '$target' patch, built by $(basename "$0"): the base patch"
            echo "# (if any), then the modpaks in $(basename "$MANIFEST_FILE"), in manifest order."
        } > "$output"

        base="${BASE_PATCHES[$target]:-}"
        if [[ -n "$base" && -f "$BASE_PATCH_DIR/$base" ]]; then
            append_patch "$output" "$BASE_PATCH_DIR/$base" "$(basename "$BASE_PATCH_DIR")/$base"
            count=$((count + 1))
            echo "  $target: $(basename "$BASE_PATCH_DIR")/$base"

            while IFS= read -r file; do
                touched_by["$file"]="$base"
            done < <(patch_touched_files "$BASE_PATCH_DIR/$base")
        fi

        for dir in "${MODPAK_DIRS[@]}"; do
            [[ -d "$dir/patches/$target" ]] || continue
            modpak="$(basename "$dir")"

            while IFS= read -r -d '' patch; do
                append_patch "$output" "$patch" "$modpak/$(basename "$patch")"
                count=$((count + 1))
                echo "  $target: $modpak/$(basename "$patch")"

                while IFS= read -r file; do
                    if [[ -z "${touched_by[$file]:-}" ]]; then
                        touched_by["$file"]="$modpak"
                    elif [[ " ${touched_by[$file]} " != *" $modpak "* ]]; then
                        touched_by["$file"]+=" $modpak"
                    fi
                done < <(patch_touched_files "$patch")
            done < <(find "$dir/patches/$target" -maxdepth 1 -type f -name '*.patch' -print0 | sort -z)
        done

        for file in "${!touched_by[@]}"; do
            if [[ "${touched_by[$file]}" == *" "* ]]; then
                echo "  NOTE: $file is patched by several patches (${touched_by[$file]})." >&2
                echo "        Check that their combined-$target.patch hunks still apply in order." >&2
            fi
        done
        unset touched_by

        echo "Wrote $count patch(es) to: $output"
    done

    echo
    echo "Apply each combined patch from its repo's root, e.g.:"
    echo "  git apply --ignore-space-change --ignore-whitespace combined-core.patch"
}

###############################################################################
# Main
###############################################################################

[[ -d "$MODPAKS" ]] \
    || { echo "ERROR: MODPAKS does not exist: $MODPAKS" >&2; exit 1; }

load_modpak_manifest
build_combined_patches
