# mod-worgoblin-high-elf
## F-078_patch-reforged-e

### Features
- Project Reforged patch E's DBC changes (lighting and skyboxes), as diffs against stock 3.3.5a:
  - `light`: 112 new lights (5000-5111), 452 changed
  - `lightparams`: 14 new (2000-2013), 124 changed
  - `lightskybox`: 39 new skyboxes (500-542), 3 changed
  - `lightintband`: 252 new bands, 727 changed, 2 deleted
  - `lightfloatband`: 84 new bands, 4621 changed

### Requirements
- The matching Project Reforged client patch, renamed so the DBCs built from these modpaks load after it (as for F-072)

### Known Issues
- F-081 (patch N) changes the colours of 2625 cells in this modpak's `lightintband` rows; list it after this one
- Open Azeroth (F-010) changes 171 of the same stock `lightfloatband` rows (568 cells differ); it is applied later,
  so its values win there
