# mod-worgoblin-high-elf
## F-041_mod-thin-human

### Features
- Playable Thin Human (Alliance)
    - Models and baked textures from the RetroPorter native set (custom\thinhuman\...)
    - Classes, start outfits, start position, action bars and stats copied from Human
    - Customization: 4 skin colours, 1 face, 4 hair styles, 4 hair colours, 7 facial hair styles
    - Hair and facial hair textures are Kul Tiran ones (as in the source pack)

### Known Issues
- Male only: female characters use the male model and customization (F-026's `patches/core/male-only-races.patch` creates them male)
- No racial mount
- No sound yet
- Racial faction name and description are placeholders
- Uses Human helmet models (client prefix 'Hu'); helmet geosets are not adjusted

### CoA Custom 1.9 racials
- Active: learned with the racial skill line
- From CoA race 32 (Forgotten (thin human)), renumbered; blocks at the end of `[BASE,F-041]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Survivor's Will: Shares a 30 second cooldown with PvP trinkets.
    - Light Step: Increases your dodge chance by $s1%.
    - Human Spirit: Spirit increased by $s1%.
    - Diplomacy: Reputation gains from kills and quests increased by $s1%.
