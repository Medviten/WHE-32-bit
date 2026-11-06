# WHE-32-bit (formerly mod-worgoblin-high-elf)
(This is the default 32-bit racemask version. Use the [256-bit](https://github.com/Medviten/WHE-256-bit) version if you need more than 31 playable races.)

> [!WARNING]
>
> ## Work in Progress
>
> This module is **not finished yet** and is still in active development.
>
> It is currently intended for testing, development and experienced AzerothCore users. Features, DBC files, SQL structure and compatibility may still change between versions.
>
> Bugs are expected, especially with unusual race/class combinations, ARAC and PlayerBots integration.
>
> **Please make backups before installing or updating the module.**

The script is designed to *replace* your DBCs and world DB! **Back them up!**

A highly modular approach to DBC-heavy mods, relying on [DBCTool](https://github.com/Medviten/DBCTool-32-bit) to bulk edit DBCs in MySQL before exporting them. First and foremost a custom playable race module for **AzerothCore 3.3.5a**.

This project started as a merger of Worgoblin and AzerothCore High Elf (which are mutually exclusive out of the box), as well as ARAC, and has since been expanded with additional playable races and mods like Faction Free.

Early on, my focus was primarily on merging the DBCs into one functioning package, but inspired by Justurn's Zeppelin-Craft project, it has increasingly shifted towards modularity and developer flexibility.

My SQL files make heavy use of variables for readability and editability. You're welcome. ;)

> If you don't want to modify anything and just want to add more races, it can seem daunting to have them all separated into SQL modpaks like this, but the provided example DBC files should be usable. They were baked with the original mods in mind (before modularity was introduced).

---

# Purpose

Using several independent follow-up patches increases the possibility of mismatched files or installation-order problems because only the last of each DBC counts at runtime, with no automatic combination being possible.

To solve that, this repository lets you prepare the DBCs in MySQL before exporting them with [DBCTool](https://github.com/Medviten/DBCTool-32-bit). Comment out the modpaks you don't need, point build-dbc.sh to a disposable MySQL database, and watch it merge the DBCs for you.

If you want to change something, simply add or edit an SQL file and have it apply after the file it overrides.

---

# Features

## Playable Races
The pipeline can add up to 31 playable races. attempting to add more will cause an overflow in the racemasks.

Details are found in each modpak's own readme file.

---

## ARAC – All Races All Classes

In addition to opening up all classes for stock races, this project also opens them up for custom ones.

Some unusual race/class combinations may still have missing abilities, incorrect proficiencies or other issues. Testing and detailed bug reports are very welcome.

---

# Client Patch

The project uses **`patch-A.MPQ`** as its primary client patch, but you can of course rename it to something else.

It contains the client-side files required by the custom races, including modified DBC files and other race-related client data. It also modifies the interface files to accept spaces in names (though you need the [mod-two-names] module to make use of it, along with F-088_mod-two-names' core patch) and to accept more than 10 characters per realm (this requires F-089_server-qol's core patch and a client that allows it, see step 6; then set `CharactersPerRealm` and `CharactersPerAccount` in worldserver.conf). To accommodate the latter, a scroll bar is added to the character selection frame (and the create new character button is moved outside of the frame so it's always visible).

On the other hand, `patch-J.MPQ` is entirely optional. It is intended to reverse as many of my changes as possible, client-side only, for purist users who still want to play on their friends' modified servers.

---

## PlayerBots

PlayerBots support is provided through F-026's playerbots patch. It works with any selection of races: bots read each race's settings from the world database, so races need no bot code.

---

## Interface Files
The current plan is to support any and all freely available custom races, so if someone donates the assets, I'll add the race. The character creation menu in the interface files reflects this: it's full of holes where planned races will go. You can move portraits around by editing the button list in CharacterCreate.lua (the simple one, not the complicated one). Horde begins where the orc is, so be careful with that one, but the rest should be flexible.

---

# Installation

## 1. Install the module

Copy the module into your AzerothCore modules directory:

```text
AzerothCore/
└── modules/
    └── WHE-32-bit/
```

The folder name matters: AzerothCore calls the module's script loader by it. Use `WHE-32-bit` (the repository's
name, the default when cloning) or `mod-worgoblin-high-elf` (the module's former name); any other name fails to link.

---

## 2. Apply the core patch (and optionally the playerbots patch)

The default branches of [azerothcore-wotlk-32-bit](https://github.com/Medviten/azerothcore-wotlk-32-bit) (`Playerbot`) and [mod-playerbots-32-bit](https://github.com/Medviten/mod-playerbots-32-bit) (`master`) already include the patches for custom races. **If you use them, skip step 2.** The forks also include Faction Free (F-003), off by default: turn it on with the `AllowTwoSide.*` settings in worldserver.conf. The core fork also includes the hooks for mod-two-names (F-088) and F-089's and F-090's changes, and [the client](https://github.com/Medviten/wowdecomp) already allows spaces in names. `combined-core.patch` and `combined-playerbots.patch` will not apply to these branches.

The forks don't include [mod-individual-progression](https://github.com/ZhengPeiRu21/mod-individual-progression). If you want it, install it separately, turn on F-075_mod-individual-progression in the manifest, and apply `combined-individual-progression.patch` to it.

To apply the patches yourself instead, start from the `whe-patch-base` tag in both repositories, which is the code without the WHE changes. The patches are made against mod-playerbots' fork of AzerothCore ([azerothcore-wotlk](https://github.com/mod-playerbots/azerothcore-wotlk), branch `Playerbot`) and [mod-playerbots](https://github.com/mod-playerbots/mod-playerbots), so they may need adjusting for other versions:

```text
git switch -c whe-patched whe-patch-base
```

Run `tools/scripts/build-patch.sh`. It needs no database and no build-dbc.conf: it combines the patches of the modpaks in your manifest, in manifest order, into one file per repo in tools/scripts/:

| File | Contains | Apply from |
| --- | --- | --- |
| `combined-core.patch` | modpak `patches/core/` | AzerothCore root |
| `combined-playerbots.patch` | modpak `patches/playerbots/` | AzerothCore/modules/mod-playerbots/ |
| `combined-<target>.patch` | any other modpak `patches/<target>/`, e.g. `individual-progression` | that repo's root |

Copy combined-core.patch into your AzerothCore root directory. Apply it like this:

```text
git apply --ignore-space-change --ignore-whitespace combined-core.patch
git add .
git commit -m "Add WHE core patch"
```

If you want playerbots, also copy combined-playerbots.patch into your AzerothCore/modules/mod-playerbots/ directory and apply:

```text
git apply --ignore-space-change --ignore-whitespace combined-playerbots.patch
git add .
git commit -m "Add WHE playerbots patch"
```

Without the script, apply each modpak's `patches/core/` and `patches/playerbots/` files the same way, in manifest order.

## 3. Set up the DBC-SQL pipeline

Edit the config in [DBCTool](https://github.com/Medviten/DBCTool-32-bit) and point it to a disposable database (e.g. `dbc`). It will **drop and recreate** it, which requires the proper permissions, and backing up your DB first is a very good idea. SQL dumps are cheap.

Import clean DBCs, make any modifications you want, and then dump the database. Point [DBCTool](https://github.com/Medviten/DBCTool-32-bit) at this dump – it's your save state.

Edit `tools/scripts/build-dbc.manifest` by commenting out features to exclude. `F-091_race-setup` has to stay first, and `F-026_custom-race-support` is required for any custom race. Copy `build-dbc.conf.dist` to `build-dbc.conf` and fill in your paths and logins, **back up your DBC files**, then run build-dbc.sh.

Each race keeps its settings in the world database (`player_race_template`, see F-091_race-setup), so the modpaks' world SQL has to reach it. In build-dbc.conf, point `EXTRA_SQL_DATABASES` and `EXTRA_SQL_PATTERNS` at your world database with the pattern `sql/db-world/base/*.sql`, and set `WORLD_DATABASE` to it so that the files the client needs (step 4) are exported too. Without these rows, a custom race gets no starting taxi nodes or Collector's Edition voucher, and no language or bot mounts from the stock race it copies.

It should put the new DBCs straight into your server's data/dbc directory, **overwriting whatever is already in there**.

**Back up your existing DBC directory before running any scripts! It will overwrite them!**

It can also reset your world database before running the modpak SQL files against it, so make a dump as backup!

---

## 4. Install patch-A.MPQ

Copy:

```text
patch-A.MPQ
```

into the `Data` directory of your WoW 3.3.5a client.

Example:

```text
World of Warcraft/
└── Data/
    └── patch-A.MPQ
```

The models, textures and interface files are in [WHE-common](https://github.com/Medviten/WHE-common), which both versions of this project share.

Then copy what the pipeline exported into `patch-A.MPQ/DBFilesClient/`, so the client matches the server: the DBCs, `PlayerShapeshiftModel.csv` and `ShapeshiftSkinColorRaces.csv`. If you build on another machine, `tools/scripts/deploy-dbc.sh` can do this over SSH: it runs build-dbc.sh there and syncs these files to your client (copy `deploy-dbc.conf.dist` to `deploy-dbc.conf` first).

Modpaks that change the minimap (F-010, F-013) also need `md5translate.trs`. Set `ORIGINAL_TRS` in `build-dbc.conf` to the client's stock `Textures\Minimap\md5translate.trs`, and the pipeline writes the stock file plus the modpaks' rows next to the CSVs. Copy it to `patch-A.MPQ/Textures/Minimap/`: it replaces Open Azeroth's, whose rows it already contains.

---

## 5. Compile AzerothCore

Compile AzerothCore after installing the module and applying the patches. The new world tables are created when the server starts.

After that, adding or removing a race doesn't need a recompile: races are data, so running build-dbc.sh and restarting is enough. You only need to recompile when a patch or the module's own code changes, including when you turn on a modpak that has `patches/core/` or `patches/playerbots/` (apply those first).

See the official AzerothCore documentation for information about installing and compiling modules:
https://www.azerothcore.org/wiki/installing-a-module

---

## 6. Client Executable

Custom races require a WoW 3.3.5a client that allows modified client files. You have three options:

- **[This project's client](https://github.com/Medviten/wowdecomp)** has everything the modpaks use. Build it as its readme describes.
- **[moostigre's wowdecomp](https://github.com/moostigre/wowdecomp)** with F-026_custom-race-support's patches applied: `combined-client.patch` from step 2, or see that modpak's readme.
- **A stock executable** with signature checks disabled, for example with [WoWPatcher335](https://github.com/anzz1/WoWPatcher335) (keep a backup of the original), or one of these [clients](https://drive.google.com/file/d/1M7QVeIaXHV5ru9s7mvo52P-eOjQedSkS/view?usp=sharing) that come with the checks disabled.

A stock executable has hard limits, so only use it with a small selection of races:

- No race in your manifest can have a `FactionRepIndex` above 127 in `modpaks/config.sql`. It would overrun the executable's 128-entry reputation list at login.
- It rejects a character list of more than 10 characters.
- It lacks the client side of custom races, such as Two Forms and Running Wild as a mount (see F-026_custom-race-support's readme).

---

# Bug Reports

Bug reports and testing feedback are very welcome.

When reporting a problem, please include whenever possible:

* Module version
* AzerothCore revision
* Race
* Class
* Client locale
* Whether the character was newly created
* Relevant worldserver log output

For race/class problems, please describe exactly which skill, spell, racial, armor type or weapon proficiency is missing.

This makes problems significantly easier to reproduce and fix.

---

# Updating

Because this project is still in active development, files and database structures may change between versions.

Before updating:

* Back up your world database
* Back up your working DBCs

After updating, recompile if patches or the module's code changed, run build-dbc.sh again, and copy the new DBCs and CSV files to your client.

Do not assume that characters created with one development version will always behave identically after a future update.

---

# Credits

This project builds upon the work of many developers in the AzerothCore and WoW modding communities.

Special thanks to:

* **heyitsbench** and **Helias** – original [Worgoblin]([url](https://github.com/heyitsbench/mod-worgoblin)) [module]([url](https://github.com/Helias/mod-worgoblin)) adaptations
* **idempotentiation** – [Worgoblin fork]([url](https://github.com/idempotentiation/mod-worgoblin)) and Playerbots compatibility work
* **abracadaniel22** – [AzerothCore High Elf]([url](https://github.com/abracadaniel22/azerothcore-highelf)) and [Fly Anywhere]([url](https://github.com/abracadaniel22/mod-fly-anywhere)) modules
* **heyitsbench** – original [ARAC]([url](https://github.com/heyitsbench/mod-arac)) module
* **ChromWolf** – updated [ARAC]([url](https://github.com/ChromWolf/mod-arac-updated)) module with custom spells for Blood Elves and Draenei
* **Mattiks** – playable Mag'har Orcs
* **Amarion** – playable Ogres
* **Baercraft** – lots of support and bugfixes, especially with Playerbots compatibility and the playable Dark Iron Dwarves
* **Justurn / Zeppelin-Craft** – inspiration for modular DBC handling in SQL
* **Nehyren** – [retroported](https://github.com/tbcstar/Nehyren) Shadowlands models
* The **Open Azeroth** team – Open Azeroth map edits
* **gitdalisar** – [Faction Free]([url](https://github.com/gitdalisar/mod-Faction-Free)) module
* The AzerothCore community
* Everyone else who has helped test, debug, translate and improve the project

---

**Current Status: 🚧 Work in Progress / Development Version**
