# mod-worgoblin-high-elf
## F-042_mod-tuskarr

### Features
- Playable Tuskarr (Alliance)
    - Models and baked textures from the RetroPorter native set (custom\tuskarr\...)
    - Classes, start outfits, start position, action bars and stats copied from Dwarf
    - Customization: 7 skin colours, 1 face, 7 hair styles, 7 hair colours, 9 facial styles
    - Facial styles are geometry only

### Known Issues
- Male only: female characters use the male model and customization (F-026's `patches/core/male-only-races.patch` creates them male)
- No racial mount
- No sound yet
- Racial faction name and description are placeholders
- Uses Dwarf helmet models (client prefix 'Dw'); helmet geosets are not adjusted

### CoA Custom 1.9 racials
- Active: learned with the racial skill line
- From CoA race 15 (Tuskarr), renumbered; blocks at the end of `[BASE,F-042]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Harpoon Charge: Stuns up to $i enemies within $a1 yds for $d.
    - Rime of the Ancient Mariner: Reduces the damage taken by Frost spells by $s1%.
    - Fisherman's Patience: Spirit increased by $s1%.
    - Harpooner: Your chance to critically hit with Throwing Weapons is increased by $s1%.
