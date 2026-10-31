# mod-worgoblin-high-elf
## F-080_patch-reforged-m

### Features
- Project Reforged patch M's DBC changes (maps), as diffs against stock 3.3.5a:
  - `worldmaparea`: 104 new map areas, 1 changed
  - `dungeonmap`: 113 new dungeon maps, 1 changed
  - `dungeonmapchunk`: 1312 new chunks, 2 deleted
  - `areatable`: 52 new areas, 36 changed
  - `wmoareatable`: 1 new entry, 687 changed
- Reforged's DBCs also fill the non-enUS name columns of `areatable` and `wmoareatable`. Those are F-001's
  localized names (with a few CSV quoting glitches), so they are left out here; use F-001 for them

### Requirements
- The matching Project Reforged client patch, renamed so the DBCs built from these modpaks load after it (as for F-072)

### Known Issues
- Overlaps Open Azeroth (F-010), which uses many of the same new ids for different rows: 108 dungeon maps, 1221
  dungeon map chunks, 58 world map areas and 7 areas (e.g. 6170, 6450-6456), plus 145 stock areas both change (42
  cells differ). F-010 is applied later, so its rows win; using both is not recommended
