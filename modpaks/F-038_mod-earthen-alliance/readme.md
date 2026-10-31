# mod-worgoblin-high-elf
## F-038_mod-earthen-alliance

### Features
- Playable Earthen (Alliance)
    - Models and baked textures from the RetroPorter native set (custom\earthen\...)
    - Classes, start outfits, start position, action bars and stats copied from Dwarf
    - Customization: 14 skin colours, 10 faces, 11 beard styles
    - No hair styles or hair colours (the retail hair geosets are in groups 40+, which 3.3.5 cannot select)
    - Gem colour, eye colour, eyesight, eyebrows and armour-like options are not available

### Known Issues
- No racial mount
- No sound yet
- Racial faction name and description are placeholders
- Uses Dwarf helmet models (client prefix 'Dw'); helmet geosets are not adjusted

### CoA Custom 1.9 racials
- Active: learned with the racial skill line
- From CoA race 68 (Earthen (Alliance)), renumbered; blocks at the end of `[BASE,F-038]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Azerite Surge: Instantly removes all poison, bleeds, and disease effects. In addition, your armor is increased by $65116s1% and your chance to be critically hit is reduced by $65116s2% for $65116d.
    - Titan-Forged: Duration of Stun effects reduced by an additional $s1%.
    - Stoneskin: Base Health increased by $s1%.
    - Gemcutting: Jewelcrafting skill increased by $s1.
