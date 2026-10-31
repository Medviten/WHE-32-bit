# mod-worgoblin-high-elf
## F-082_patch-reforged-p

### Features
- Project Reforged patch P's DBC changes (spell visuals), as diffs against stock 3.3.5a:
  - `spellvisual`: 36 new, 128 changed
  - `spellvisualkit`: 228 new, 11 changed
  - `spellvisualeffectname`: 150 new, 51 changed
  - `spellvisualkitmodelattach`: 34 new, 1 changed
  - `spellmissilemotion`: 4 new, 187 changed
  - `spellchaineffects`: 7 new
  - `soundentries`: 1021 new, 93 changed

### Requirements
- The matching Project Reforged client patch, renamed so the DBCs built from these modpaks load after it (as for F-072)

### Known Issues
- Open Azeroth (F-010) uses 8 of the same new `soundentries` ids (20000-20003, 20052, 20053, 20167, 20168) for
  different sounds; F-010 is applied later, so its sounds win
- F-013 uses spell visual 17009 and spell visual kit 20175 for its own rows
- 165 `soundentries` rows are also in F-083 (patch S) with the same values; applying both is fine
