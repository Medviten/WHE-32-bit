# mod-worgoblin-high-elf
## F-128_hunter-starting-pets

### Features
- Hunters start with a pet, as in Cataclysm, and with Call Pet, Dismiss Pet, Revive Pet and Feed Pet, which this modpak makes usable from level 1. Taming new pets still comes from the level 10 quests
- Each race's pet is the one on [Petopia's chart](https://www.wow-petopia.com/guides/starterpetchart.php), in `player_starting_pet`: the stock races' rows are here, the other races' in their own modpak
- Looks the stock client lacks are retail models (`tools/races/retail_pets.py`; the files are in WHE-common)
- Each pet is its own tameable creature here. 3.3.5 has no Mechanical, Hound, Stag or Direhorn family, so those pets are named after their retail family but behave as a stock family: Mechanical as cat or wolf, Hound as wolf, Stag and Direhorn as boar
- A race without a row uses its kin's pet, then its home race's. A race modpak can define its own by adding a row to `player_starting_pet`, which F-091_race-setup creates

### Setup
- Requires a recompile (the code is part of this module) and rebuilt DBCs for the client and server
- `Worgoblin.StartingPet.Enable` in mod_worgoblin.conf turns it on and off without a rebuild (default on)

### Considerations
- Only new characters are affected. Hunters who already got a pet keep it and its spells when the option is turned off. If the modpak is removed from the manifest instead, those spells go back to requiring level 10
- Exotic beasts can't be starting pets: a hunter without Beast Mastery couldn't summon one
