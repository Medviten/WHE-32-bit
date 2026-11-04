# mod-worgoblin-high-elf
## F-039_mod-earthen-horde

### Features
- Playable Earthen (Horde)
    - Models and baked textures from the RetroPorter native set (custom\earthen\...)
    - Classes, start outfits, start position, action bars and stats copied from Orc
    - Customization: 14 skin colours, 10 faces, 11 hair styles, 14 hair colours, 11 beard styles
    - The retail hair geosets (group 40) are renumbered to group 0, and hair colours are the male files shared by both genders; done by `tools/models/earthen_prep.py` in WHE-256-bit
    - Gems follow the skin colour (14 colours, one per skin row's texture_3; needs the client's type 9 support) and all characters show the same gem shapes: the first variant for each body part, always on. Retail makes colour and shapes separate choices, defaulting to none
    - Eye colour and eyesight are not available: all characters have the same eyes

### Known Issues
- No racial mount
- No sound yet
- Racial faction name and description are placeholders
- Uses Orc helmet models (client prefix 'Dw'); helmet geosets are not adjusted

### CoA Custom 1.9 racials
- Active: learned with the racial skill line
- From CoA race 69 (Earthen (Horde)), renumbered; blocks at the end of `[BASE,F-039]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Azerite Surge: Instantly removes all poison, bleeds, and disease effects. In addition, your armor is increased by $65116s1% and your chance to be critically hit is reduced by $65116s2% for $65116d.
    - Titan-Forged: Duration of Stun effects reduced by an additional $s1%.
    - Stoneskin: Base Health increased by $s1%.
    - Gemcutting: Jewelcrafting skill increased by $s1.
