# mod-worgoblin-high-elf
## F-026_custom-race-support

### Features
- Unified faction update
- Unified skill update
- Unified talent update
- Unified totem update
- Removes `playercreateinfo` rows for race/class pairs missing from CharBaseInfo, so the server and bots only use the combinations a race actually offers
- `patches/core/race-templates.patch` (azerothcore-wotlk): replaces per-race core code with `player_race_template` (see
  F-091_race-setup), so races need no enum entries or recompile
- `patches/playerbots/race-templates.patch` (mod-playerbots): the same for bots, using `player_race_template` and
  `playerbots_race_template`
- `patches/client/custom-race-cvars.patch`: the client side of custom races for [moostigre's wowdecomp](https://github.com/moostigre/wowdecomp) (made against 20f9120e), the client most people have. Apply it from that client's folder with `git apply --ignore-space-change --ignore-whitespace`, then rebuild with `-DWOWDECOMP_DISABLE_SIGNATURE_CHECKS=ON`, as WHE's interface files are unsigned. [This project's client](https://github.com/Medviten/wowdecomp) already has all of it. It adds:
    - `alteredFormRaces`: Cataclysm-style second forms (default `12=213`, Worgen = Gilnean), with their transition, Running Wild's mount-self anims, and previews in character creation and the barber shop
    - `helmetRaces`: whose helmet hide bits a race uses, for races above 31 (default includes `213=1`, Gilnean = Human)
    - `creatureSkinRaces`: races that show no armour textures, for creature models made playable (no default). Also the general skin paste those models and larger or DXT textures need
    - `shapeshiftSkinColorRaces` and `druidFormPreview`: the druid form preview in character creation. Its skin color races come from `ShapeshiftSkinColorRaces.csv`, see F-091_race-setup
    - `IsMaleOnlyRace()` for the character creation UI
- `patches/core/male-only-races.patch` (azerothcore-wotlk, optional): characters of races without a female model
  (ChrRaces' female display uses the male display's model, e.g. Forest Troll, Arakkoa, Hozen) are created male, as
  the stock client still offers both genders. Apply it from the azerothcore-wotlk folder with `git apply`
- `patches/core/faction-limit.patch` (azerothcore-wotlk) and `patches/client/faction-limit.patch`
  ([moostigre's wowdecomp](https://github.com/moostigre/wowdecomp), made against 20f9120e): reputation list indices
  above 127, which custom races past the first 23 use. Unpatched, the server crashes at login on a `ByteBuffer` assert
  and the client overruns its 128-entry array, so use both. [This project's client](https://github.com/Medviten/wowdecomp)
  already has the client side

### Known Issues
- Racemasks with high defaults haven't all been incorporated yet
