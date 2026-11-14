# mod-worgoblin-high-elf
## F-010_patch-open-azeroth

### Features
- Flyable Eastern Kingdoms and Kalimdor
- Moves coordinates for Azuremyst and Quel'Thalas NPCs, spawns, quests, graveyards, etc.
- Music and sounds in new zones
- `.tele` targets for the new zones: TolBarad, Surwich, Gilneas (replaces stock's), CavernsOfConsumption, Vashjir (or Vashj'ir), LostIsles, Maelstrom, Kezan, Crestfall, Havenswood, Deepholm. Deepholm, the Maelstrom and Pandaria are set to expansion 2 (`dbc/[F-010]_map.sql`), since the core keeps players off maps above the server's expansion
- Mists of Pandaria's World map (Pandaria included; the art is in WHE-common's `Interface\WorldMap\World`), with MoP's continent placement in `dbc/[F-010]_worldmapcontinent.sql` so the continents are clickable where the art draws them. Pandaria itself is clickable with F-133

### Known Issues
- Minimaps not visible in some places
