# mod-worgoblin-high-elf
## F-026_custom-race-support

### Features
- Unified faction update
- Unified skill update
- Unified talent update
- Unified totem update
- `patches/core/male-only-races.patch` (azerothcore-wotlk, optional): characters of races without a female model
  (ChrRaces' female display uses the male display's model, e.g. Forest Troll, Arakkoa, Hozen) are created male, as
  the stock client still offers both genders. Apply it from the azerothcore-wotlk folder with `git apply`

### Known Issues
- Racemasks with high defaults haven't all been incorporated yet
