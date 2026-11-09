# mod-worgoblin-high-elf
## F-021_mod-pandaren-horde

### Features
- Playable Pandaren (Horde)
    - BfA racial faction: Huojin Pandaren
- Voice: Retail's emotes, error lines and combat sounds (`tools/races/retail_voices.py`; files in WHE-common `Sound/character`), the Kin race's where retail has none

### Known Issues

### CoA Custom 1.9 racials
- Active: learned with the racial skill line
- From CoA race 20 (Pandaren (Horde)), renumbered; blocks at the end of `[BASE,F-021]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Quaking Palm: Stuns up to $i enemies within $a1 yds for $d.
    - Inner Peace: Spirit increased by $s1%.
    - Bouncy: Increases your dodge chance by $s1%.
    - Gourmand: Base Health increased by $s1%.
