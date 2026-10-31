# mod-worgoblin-high-elf
## F-033_mod-lightforged-draenei

### Features
- Playable Lightforged Draenei
    - Legion racial mount:
        - Lightforged Felcrusher
    - Legion racial faction: Army of the Light

### Appearance
- Models, textures and customization (CharSections, hair geosets, facial styles) from Kalibro's races package
  (Kalibros_Races_20261012, its race 21), imported with `tools/races/kalibro_races.py`

### Known Issues
- Doesn't look right

### CoA Custom 1.9 racials
- Active: learned with the racial skill line
- From CoA race 62 (Lightforged Draenei), renumbered; blocks at the end of `[BASE,F-033]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Light's Reckoning: Heals the target for $o1 over $d.  The amount healed is increased by your attack power.
    - Forge of Light: Spirit increased by $s1%.
    - Holy Resistance: Reduces the damage taken by spells by $s1%.
    - Lightforged Resolve: Duration of Stun effects reduced by an additional $s1%.
