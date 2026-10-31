# mod-worgoblin-high-elf
## F-081_patch-reforged-n

### Features
- Project Reforged patch N's DBC changes (lighting colours), as diffs against stock 3.3.5a:
  - `lightintband`: 252 new bands, 10657 changed, 2 deleted

### Requirements
- The matching Project Reforged client patch, renamed so the DBCs built from these modpaks load after it (as for F-072)
- F-078 (patch E): the 252 new bands belong to its new lights. List this modpak after F-078

### Known Issues
- Includes all of F-078's `lightintband` rows, with different colours in 2625 cells; whichever is applied last wins
