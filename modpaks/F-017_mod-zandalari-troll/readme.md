# mod-worgoblin-high-elf
## F-017_mod-zandalari-troll

### Features
- Playable Zandalari Trolls
    - BfA druid forms
    - BfA racial faction: Zandalari Empire

### Known Issues
- Voice may not be working (Darkspear one as placeholder)
- No racial abilities yet (Darkspear ones as placeholders)

### CoA Custom 1.9 racials
- Commented out (the race already gets the Troll racials); remove the comment markers in the CoA blocks to use them
- From CoA race 12 (Zandalari Troll), renumbered; blocks at the end of `[BASE,F-017]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Embrace of the Loa: Heals the target for $o1 over $d.  The amount healed is increased by your attack power.
    - Pterrordax Swoop: Escape the effects of any immobilization or movement speed reduction effect and become immune to them for $81001d.
    - City of Gold: Health regeneration rate increased by $s1%. $s2% of total Health regeneration may continue during combat.
    - Da Voodoo Shuffle: Reduces the duration of all movement impairing effects by $s1%.  Trolls be flippin' out mon!
