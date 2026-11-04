# mod-worgoblin-high-elf
## F-087_undead_paladin

### Features
- Playable Undead paladins, without the rest of ARAC
    - Starting outfit, start location (Deathknell), action bars
    - Paladin weapon skills (Swords, Two-Handed Swords, Maces) opened to Undead
- Forsaken paladin mounts instead of the Alliance and Blood Elf ones, from the same trainers (the quests and learn
  spells for those are closed to Undead, including through `.learn all my class`):
    - Summon Forsaken Warhorse (60%, level 20, with Apprentice Riding; the plain model)
    - Summon Forsaken Charger (100%, level 40, retail spell ID 1296534; the armored model)

### Known Issues
- The new spells are named in English only (other locales show the stock "Summon Warhorse"/"Summon Charger")
- They use the Blood Elf mount icons

### Considerations
- Run it after F-026_custom-race-support and F-002_mod-arac (as in the manifest): it takes Undead out of the Alliance and
  Blood Elf mounts those open up to other races.
- Needs the client's Creature\UndeadPaladinMount models (patch-A).
