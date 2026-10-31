# mod-worgoblin-high-elf
## F-022_mod-playable-broken

### Features
- Playable Broken
    - Racial faction: Broken of the Alliance

### Known Issues
- Voice may not be working
- No racial abilities yet (Draenei ones as placeholders)

### CoA Custom 1.9 racials
- Commented out (the race already gets the Draenei racials); remove the comment markers in the CoA blocks to use them
- From CoA race 22 (Broken), renumbered; blocks at the end of `[BASE,F-022]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Shattered Light: Heals the target for $o1 over $d.  The amount healed is increased by your attack power.
    - Exile's Will: Shares a 30 second cooldown with PvP trinkets.
    - Exile's Resolve: Reduces the damage taken by Shadow spells by $s1%.
    - Shamanic Bond: Spirit increased by $s1%.
