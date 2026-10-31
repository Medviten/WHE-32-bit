# mod-worgoblin-high-elf
## F-024_mod-playable-worgen

### Features
- Playable Worgen
    - Cataclysm racial abilities
        - Running Wild acquired with riding skills (requires recompile):
            - Apprentice Riding –> 60% version
            - Journeyman Riding –> 100% version
        - Can get riding skills for free at levels 20 and/or 40 (configurable)
    - Cataclysm + MoP druid forms
    - Cataclysm racial mounts:
        - Mountain Horse
        - Swift Mountain Horse
    - Cataclysm racial faction: Gilneas
- Optional extra features
    - Cataclysm starting gear
    - Class trainers for mages and warlocks in Teldrassil
    - Death Knight quests
    - Mount vendor

### Known Issues
- Two Forms is not yet implemented correctly
- Worgen currently start the game in wolf form, though there are spells to make them pseudo-humans
- Worgen mount vendor not yet implemented correctly
- Alpha worgen not yet implemented

### CoA Custom 1.9 racials
- Commented out (the race already has its Cataclysm racials); remove the comment markers in the CoA blocks to use them
- From CoA race 13 (Worgen), renumbered; blocks at the end of `[BASE,F-024]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Darkflight: Escape the effects of any immobilization or movement speed reduction effect and become immune to them for $81001d.
    - Two Forms: Shares a 30 second cooldown with PvP trinkets.
    - Viciousness: Increases chance to hit with all spells and attacks by $s1% for you and all party members within $a1 yards.
    - Aberration: Reduces the damage taken by Nature spells by $s1%.
