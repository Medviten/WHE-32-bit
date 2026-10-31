# mod-worgoblin-high-elf
## F-083_patch-reforged-s

### Features
- Project Reforged patch S's DBC changes (sounds and music), as diffs against stock 3.3.5a, from its standalone
  version:
  - `soundentries`: 115 new, 96 changed
  - `zonemusic`: 15 new, 1 changed
  - `areatable`: 125 changed (zone music, ambience)
  - `wmoareatable`: 85 changed (zone music, sound provider)
- Works with or without F-080 (patch M). Reforged's non-standalone patch S is patch M plus this, so it is not
  included. The only differences are three cells this version changes and the other doesn't: area 439's ambience (0),
  area 4615's sound provider (75) and WMO area 15473's sound provider (0)
- The non-enUS name columns are left out, as in F-080

### Requirements
- The matching Project Reforged client patch, renamed so the DBCs built from these modpaks load after it (as for F-072)

### Known Issues
- 165 `soundentries` rows are also in F-082 (patch P) with the same values; applying both is fine
