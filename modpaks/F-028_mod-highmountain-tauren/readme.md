# mod-worgoblin-high-elf
## F-028_mod-highmountain-tauren

### Features
- Playable Highmountain Tauren
    - BfA racial faction: Highmountain Tribe
    - Customization: horn style (7 male / 8 female), horn colour (4 colours, plain or carved), beards (8, male),
      braids (7, female)
    - 6 Death Knight skin colours per gender, made with tools/patch_eyes/dk_tint_blp.py: 3 ashen (from the dark,
      brown and light fur) and 3 natural-looking but paler browns (dark, red-brown, light)
    - Skin colour can be changed at the barber shop like the Tauren's

### Known Issues
- The 3.3.5 client only handles 65535 triangle indices per model, so some retail options are left out: 2 male horn
  styles, the male side braids and foremanes, the female hair decorations and foremanes, piercings, wraps, tail
  decorations and boot geosets

### CoA Custom 1.9 racials
- Active: learned with the racial skill line
- From CoA race 66 (Highmountain Tauren), renumbered; blocks at the end of `[BASE,F-028]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Bull Rush: Stuns up to $i enemies within $a1 yds for $d.
    - Mountaineer: Base Health increased by $s1%.
    - Pride of Ironhorn: Duration of Stun effects reduced by an additional $s1%.
    - Rugged Tenacity: Reduces the damage taken by Nature spells by $s1%.
