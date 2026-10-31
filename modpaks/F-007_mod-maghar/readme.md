# mod-worgoblin-high-elf
## F-007_mod-maghar

### Features
- Playable Mag'har Orcs
    - Racial abilities
    - Racial mount: Mag'har Direwolf
- Racial faction: Mag'har of the Horde

### Known Issues
- Voice may not be working
- Sympathetic Vigor not working

### CoA Custom 1.9 racials
- Commented out (the race already has its BfA racials); remove the comment markers in the CoA blocks to use them
- From CoA race 49 (Mag'har Orc), renumbered; blocks at the end of `[BASE,F-007]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Ancestral Call: Increases your attack power by $s1 and your spell power by $s2. Lasts $d. Cannot be used while offensive effects from trinkets are active.
    - Open Skies: Increases chance to hit with all spells and attacks by $s1% for you and all party members within $a1 yards.
    - Savage Blood: Duration of Stun effects reduced by an additional $s1%.
    - Command: Damage dealt by pets increased by $s1%.
