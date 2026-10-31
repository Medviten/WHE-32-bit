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

It contains the client-side files required by the custom races, including modified DBC files and other race-related client data. It also modifies the interface files to accept spaces in names (though you need the [mod-two-names] module to make use of it – remember to patch your core to get the hooks in place) and to accept more than 10 characters per realm (this requires a core patch as well as a client patch). To accommodate the latter, a scroll bar is added to the character selection frame (and the create new character button is moved outside of the frame so it's always visible).

On the other hand, `patch-J.MPQ` is entirely optional. It is intended to reverse as many of my changes as possible, client-side only, for purist users who still want to play on their friends' modified servers.

---

## PlayerBots

PlayerBots support is provided through whe-playerbots.patch. It currently comes with all the races I use on my own stable server. In the future, there may be modularity support for this as well, but for now, if you want to modify anything about it, you'll have to do so manually.

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

## 2. Apply whe-acore.patch (and optionally playerbots patch)

Copy WHE-32-bit/integration/whe-acore.patch into your AzerothCore root directory. Apply it like this:

```text
git apply --ignore-space-change --ignore-whitespace whe-acore.patch
git add .
git commit -m "Add whe-acore patch"
```

If you want playerbots, also copy WHE-32-bit/integration/whe-playerbots.patch into your AzerothCore/modules/mod-playerbots/ directory and apply:

```text
git apply --ignore-space-change --ignore-whitespace whe-playerbots.patch
git add .
git commit -m "Add whe-playerbots patch"
```

Some modpaks ship patches of their own, in `modpaks/<modpak>/patches/<target>/` (`core` for AzerothCore, `individual-progression` for mod-individual-progression, ...). Apply the ones of the modpaks you use the same way, from that repository's root. They are not combined at build time yet.

## 3. Set up the DBC-SQL pipeline

Edit the config in [DBCTool](https://github.com/Medviten/DBCTool-32-bit) and point it to a disposable database (e.g. `dbc`). It will **drop and recreate** it, which requires the proper permissions, and backing up your DB first is a very good idea. SQL dumps are cheap.

Import clean DBCs, make any modifications you want, and then dump the database. Point [DBCTool](https://github.com/Medviten/DBCTool-32-bit) at this dump – it's your save state.

Edit the manifest in worgoblin-high-elf/tools/scripts/ by commenting out features to exclude. Edit build-dbc.conf with your paths and logins, **back up your DBC files**, then run build-dbc.sh.

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

You should also replace the DBCs with the ones from the pipeline to ensure compatibility with the server.

---

## 5. Compile AzerothCore

After installing or updating the module, recompile AzerothCore if the modpaks you installed require it. For example, Worgoblin spells do, but High Elf ones don't.

See the official AzerothCore documentation for information about installing and compiling modules:
https://www.azerothcore.org/wiki/installing-a-module

---

## 6. Client Executable

Custom races require a WoW 3.3.5a client that allows modified client files.

You may therefore need a patched WoW executable with signature checks disabled.

A commonly used patcher is available here:

https://github.com/anzz1/WoWPatcher335

Always keep a backup of your original executable.

Some [clients](https://drive.google.com/file/d/1M7QVeIaXHV5ru9s7mvo52P-eOjQedSkS/view?usp=sharing) are also downloadable with such checks already disabled.

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
