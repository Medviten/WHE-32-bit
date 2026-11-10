# mod-worgoblin-high-elf
## F-002_mod-arac

### Features
- Adds missing race/class combinations so every race can be every race:
    - Human: hunter, shaman, druid
    - Orc: paladin, mage, priest, mage, druid
    - Dwarf: shaman, mage, warlock, druid
    - Night Elf: paladin, shaman, mage, warlock
    - Undead: paladin, hunter, shaman, druid
    - Tauren: paladin, rogue, priest, mage, warlock
    - Gnome: paladin, hunter, priest, shaman, druid
    - Blood Elf: warrior, shaman, druid
    - Draenei: rogue, warlock, druid
- Lets shamans of races without a stock Call of Earth chain nearby get their Earth Totem at level 4 from Firmanvaar (Alliance) or Meela Dawnstrider (Horde). F-029 puts them in the starting areas; without it they are only in Ammen Vale and Camp Narache
- Adds missing race/class racial spells:
    - Arcane Torrent:
        - Warrior (rage)
        - Druid (mana, energy, rage)
    - Gift of the Naaru
    - Shadow Resistance

### Known Issues
- None

### Considerations
- Set `PlayerStart.CustomSpells = 1` in worldserver.conf, or the spells in `playercreateinfo_spell_custom` are not learned at creation. That includes Summon Imp for every warlock.
- This version doesn't give all hunters bows and guns at creation, but seeks to retain WotLK starting skills. ARAC combinations get those of similar races.
- Tauren and Draenei normally never start with the Daggers skill, but rogues are an exception.
