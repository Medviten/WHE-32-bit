# mod-worgoblin-high-elf
## F-035_mod-void-elf

### Features
- Playable Void Elf
    - Legion racial mounts:
        - Starcursed Voidstrider
    - Legion racial faction: Argussian Reach

### Appearance
- Models, textures and customization (CharSections, hair geosets, facial styles) from Kalibro's races package
  (Kalibros_Races_20261012, its race 19), imported with `tools/races/kalibro_races.py`

### Known Issues
- No sound yet

### CoA Custom 1.9 racials
- Active: learned with the racial skill line
- From CoA race 59 (Void Elf), renumbered; blocks at the end of `[BASE,F-035]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Spatial Rift: Activate to slip into the shadows, reducing the chance for enemies to detect your presence.  Lasts until cancelled or upon moving.  Any threat is restored versus enemies still in combat upon cancellation of this effect. Removes invulnerabilities when used.
    - Void Torrent: Silence all enemies within $a1 yards for $d and restores $81002s3% of your Mana, ${$81002m2/10)} Rage$?s805000[, $81002s1 Focus,][] and $81002s1 Energy. Non-player victim spellcasting is also interrupted for $32747d.
    - Entropic Embrace: Reduces the damage taken by Shadow spells by $s1%.
    - Ethereal Connection: Intellect increased by $s1%.
