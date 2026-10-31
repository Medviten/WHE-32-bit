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
- The rows Individual Progression's SQL puts into AzerothCore's `*_dbc` tables (which override the DBCs on the server
  only) are in the DBCs instead (`dbc/`), for the server and the client alike, and
  `sql/db-world/base/[F-075]_dbc_overrides.sql` deletes them from those tables again:
    - `[F-075]_spells.sql`: its own server-side spells (adjustment auras, Naxxramas 40, Onyxia 40) and the stock
      spells it changes (spell restorations, quest item samples)
    - `[F-075]_raids.sql`: Naxxramas 40 and Onyxia 40 (map difficulty, boss encounters, LFG entries) and the level 60
      Kel'Thuzad achievement
    - `[F-075]_items.sql`: two quest items' displays
    - `[F-075]_charstartoutfit.sql`: its Vanilla start outfits (weapons, food, water). Custom races whose outfit is a
      copy of a stock race's get the outfit Individual Progression gives that race, too
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
- `pvp_brackets.sql`'s battleground level brackets stay in `pvpdifficulty_dbc` (server only): DBCTool has no meta file
  for PvpDifficulty.dbc yet
- Action bars are not handled here: the race modpaks copy their Home race's, which are Individual Progression's when
  its SQL ran first (older modpaks with their own action bars keep them)
