# mod-worgoblin-high-elf
## F-040_mod-mechagnome

### Features
- Playable Mechagnome (Alliance)
    - Models and baked textures from the RetroPorter native set (custom\mechagnome\...)
    - Classes, start outfits, start position, action bars and stats copied from Gnome
    - Customization: 8 skin colours, 14 faces, 7 (male) / 9 (female) hair styles, 7 hair colours, 6 facial styles (male)
    - Full Retail model and customization (arm and leg upgrades, modifications, paint, eye colour, eyesight and eye style) in a client that maps race 37 in its `retailRaces` setting: wowdecomp-256-bit does by default, built with `WOWDECOMP_RETAIL_ASSETS=ON` and given the Retail files (a `pack=` folder or the Blizzard CDN). The server keeps the look with the Retail look tables of azerothcore-wotlk-256-bit
    - Any other client shows the native model with a fixed look: arm upgrade 0, leg upgrade 0, default paint, green eyes
    - Eye slot and paint file set up by `tools/models/mechagnome_prep.py`
    - Male facial hair is geometry only (the retail facial hair textures are not mapped)

### Known Issues
- No racial mount
- No sound yet
- Racial faction name and description are placeholders
- Uses Gnome helmet models (client prefix 'Gn'); helmet geosets are not adjusted

### CoA Custom 1.9 racials
- Active: learned with the racial skill line
- From CoA race 67 (Mechagnome), renumbered; blocks at the end of `[BASE,F-040]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Combat Analysis: Increases your attack and casting speed by $s1% for $d. Does not stack with other similar cast speed increasing effects.
    - Emergency Failsafe: Shares a 30 second cooldown with PvP trinkets.
    - Re-Origination: Increases your dodge chance by $s1%.
    - Mechanical Mastery: Engineering skill increased by $s1.
