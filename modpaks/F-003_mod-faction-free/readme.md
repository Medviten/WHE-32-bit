# mod-worgoblin-high-elf
## F-003_mod-faction-free

### Features
- Enables cross-faction questing
- Opt-in mechanism
- No PvP flagging in enemy capitals (core patch; `AllowTwoSide.EnemyTerritory = 0` turns it off)

### Known Issues
- Can't earn reputation from opposing factions

### Core patch
`patches/core/enemy-territory.patch` adds the worldserver.conf setting `AllowTwoSide.EnemyTerritory` (default 1), which stops the other faction's zones from counting as hostile territory, so entering an enemy capital (or, on PvP realms, any enemy zone) no longer flags players for PvP. Set it to 0 for stock PvP flagging. build-patch.sh includes the patch in combined-core.patch while F-003 is in the manifest.
