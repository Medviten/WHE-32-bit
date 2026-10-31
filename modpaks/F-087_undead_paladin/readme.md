# mod-worgoblin-high-elf
## F-087_undead_paladin

### Features
- Playable Undead paladins, without the rest of ARAC
    - Starting outfit, start location (Deathknell), action bars
    - Paladin weapon skills (Swords, Two-Handed Swords, Maces) opened to Undead
- Forsaken paladin mounts instead of the Blood Elf ones, from the same trainers:
    - Summon Forsaken Warhorse (60%, level 20, with Apprentice Riding; the plain model)
    - Summon Forsaken Charger (100%, level 40, retail spell ID 1296534; the armored model)

### Known Issues
- The new spells are named in English only (other locales show the stock "Summon Warhorse"/"Summon Charger")
- They use the Blood Elf mount icons

### Considerations
- Run it after F-026_custom-race-support and F-002_mod-arac (as in the manifest): it takes Undead out of the Blood Elf
  mounts those give to the whole Horde.
- Needs the client's Creature\UndeadPaladinMount models (patch-A).
