# mod-worgoblin-high-elf
## F-003_mod-faction-free

### Features
- Enables cross-faction questing
- Opt-in mechanism
- No PvP flagging in enemy capitals (core patch; `AllowTwoSide.EnemyTerritory = 0` turns it off)
- Quests reward reputation with opposing factions (core patch; `AllowTwoSide.QuestReputation = 0` turns it off)
- Team-dependent kills reward both teams' factions (core patch; `AllowTwoSide.KillReputation = 0` turns it off)

### Teleport network (optional)
NPCs in the capitals that teleport players to cities and instances, with their decorations. To use it:
- Add `sql/db-world/extra/*F-003*_teleport_network.sql` to `EXTRA_SQL_PATTERNS` in build-dbc.conf, and your world database to `EXTRA_SQL_DATABASES` at the same position
- Have mod-ale installed, which runs the menus in `lua_scripts/faction-free/`. Those scripts do nothing without the NPCs

From [mod-Faction-Free](https://github.com/gitdalisar/mod-Faction-Free) by gitdalisar.

### Core patch
`patches/core/faction-free.patch` adds three worldserver.conf settings, all with default 1. Set one to 0 for stock behaviour. build-patch.sh includes the patch in combined-core.patch while F-003 is in the manifest.
- `AllowTwoSide.EnemyTerritory` stops the other faction's zones from counting as hostile territory, so entering an enemy capital (or, on PvP realms, any enemy zone) no longer flags players for PvP.
- `AllowTwoSide.QuestReputation` skips the core's check that withholds quest reputation from factions hostile to the player's team.
- `AllowTwoSide.KillReputation` makes kills that reward reputation by team (`TeamDependent` rows in `creature_onkill_reputation`, e.g. Honor Hold/Thrallmar) reward both teams' factions. While championing a faction, kills keep rewarding it once.
