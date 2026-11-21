# mod-worgoblin-high-elf
## F-010_patch-open-azeroth

### Features
- Flyable Eastern Kingdoms and Kalimdor
- Moves coordinates for Azuremyst and Quel'Thalas NPCs, spawns, quests, graveyards, etc.
- Music and sounds in new zones
- `.tele` targets for the new zones: TolBarad, Surwich, Gilneas (replaces stock's), CavernsOfConsumption, Vashjir (or Vashj'ir), LostIsles, Maelstrom, Kezan, Crestfall, Havenswood, Deepholm. Deepholm, the Maelstrom and Pandaria are set to expansion 2 (`dbc/[F-010]_map.sql`), since the core keeps players off maps above the server's expansion

### Known Issues
- Minimaps not visible in some places

### Boats
- Elune's Blessing (Auberdine - Valaar's Berth): Open Azeroth's path doubled back 400 yards before Auberdine and zig-zagged off Darkshore. `dbc/[I-389]_azuremyst_boat_path.sql` smooths it (docks unchanged)
- Open Azeroth's Keel Harbor (Gilneas) - Havenswood route (taxi path 2044) gets a ship, The Bravery's model (`sql/db-world/[I-390]_gilneas_havenswood_boat.sql`, gameobject 1390001, transport guid 13901); `dbc/[I-390]_gilneas_havenswood_boat_path.sql` drops the path's repeated end points, which made the boat dock twice and back up
- Both made by `tools/races/transport_paths.py` (command line at the top of each file), which also checks the new paths stay on water deep enough for a hull

### Ocean filler tiles
`dbc/[F-010]_ocean_minimaps.sql` gives the squished client's ocean patch (filler tiles around the continents, byte-copies of OA's open-sea tiles) minimap images: each points at the sea image of the tile it copies. Without them the minimap over those tiles keeps showing the last coast it drew. They only reach the client when the build server's `build-dbc.conf` sets `ORIGINAL_TRS` to the stock `md5translate.trs` (the squished client's `patch-3.mpq` has it); `deploy-dbc.sh` then copies the built file into the realm's patch, over OA's. Made by `tools/models/ocean_minimaps.py`.
