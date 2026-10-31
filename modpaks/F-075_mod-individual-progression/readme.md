# mod-worgoblin-high-elf
## F-075_mod-individual-progression

Support for [mod-individual-progression](https://github.com/ZhengPeiRu21/mod-individual-progression) (made against
its master, 4933d45). List it after every race modpak in the manifest.

### Features
- Starting weapon skills: Individual Progression restores the pre-3.3 ones with a race mask per row, so the custom
  races would start without them. Every custom race gets those of its Home race (whose start outfit it has); races of
  modpaks that are not applied are left out
- Drops the all-classes weapon skill rows that F-002 (ARAC) makes out of Individual Progression's one-class dagger and
  2H mace rows
- `patches/individual-progression/tbc-races.patch`: custom races that start in the Draenei or Blood Elf zones (on
  Outland's map, e.g. Naga, Nightborne, Eredar) count as TBC races, like Draenei and Blood Elves: the
  `TbcRacesUnlockProgression` and `tbcRacesStartingProgression` settings apply to them, and they can enter their
  start zones before TBC progression. Apply it from the mod-individual-progression folder with `git apply`

### Requirements
- Individual Progression's world SQL must already be in the world database when the modpaks are applied (a world
  dump taken from a server running the module). Its `player_starting_skillbars.sql` deletes the action bars of most
  classes for every race and `player_starting_weapon_skills.sql` rewrites the weapon skills: if the module's SQL runs
  again afterwards, apply the modpaks again

### Known Issues
- Untested in game
- Action bars are not handled here: the race modpaks copy their Home race's, which are Individual Progression's when
  its SQL ran first (older modpaks with their own action bars keep them)
