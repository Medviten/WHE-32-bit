# mod-worgoblin-high-elf
## F-010_patch-open-azeroth

### Features
- Flyable Eastern Kingdoms and Kalimdor
- Moves coordinates for Azuremyst and Quel'Thalas NPCs, spawns, quests, graveyards, etc.
- Music and sounds in new zones
- `.tele` targets for the new zones: TolBarad, Surwich, Gilneas (replaces stock's), CavernsOfConsumption, Vashjir (or Vashj'ir), LostIsles, Maelstrom, Kezan, Crestfall, Havenswood, Deepholm. Deepholm, the Maelstrom and Pandaria are set to expansion 2 (`dbc/[F-010]_map.sql`), since the core keeps players off maps above the server's expansion

### Known Issues
- Minimaps not visible in some places

### Ocean filler tiles
`dbc/[F-010]_ocean_minimaps.sql` gives the squished client's ocean patch (filler tiles around the continents, byte-copies of OA's open-sea tiles) minimap images: each points at the sea image of the tile it copies. Without them the minimap over those tiles keeps showing the last coast it drew. They only reach the client when the build server's `build-dbc.conf` sets `ORIGINAL_TRS` to the stock `md5translate.trs` (the squished client's `patch-3.mpq` has it); `deploy-dbc.sh` then copies the built file into the realm's patch, over OA's. Made by `tools/models/ocean_minimaps.py`.
