# mod-worgoblin-high-elf
## F-102_zep-lost-isles-terrain

### Features
- The Lost Isles change as the Goblin story goes on, as in Cataclysm: Town-In-A-Box gets built, and the island burns after the volcano erupts
- The terrain of these phases (Cataclysm's LostIslesPhase1 and LostIslesPhase2, from [Zeppelin-Craft](https://github.com/ZepplinCore-Development/Zeppelin-Craft)'s zep-lost-isles-terrain) replaces the island's tiles for players in them, for the client and the server alike

### Requirements
- F-013_zep-goblin-start, whose `phase_definitions` say which phases swap terrain (`terrainswapmap`: 661 the town, 659 the burning island), with `GoblinStartZone.Enable = 1`
- `patches/core/lost-isles-terrain.patch` and a recompile. It applies after F-013's patch. It loads the swap terrain on the server (heights, water and lava, and a swap navmesh if there is one) and has PhaseMgr tell the client which terrain to draw
- A client that draws the swaps: this project's client, or `patches/client/terrain-swap.patch` for [Saty's wowdecomp](https://github.com/moostigre/wowdecomp). Other clients keep the island as it is
- The client assets and the server's swap maps below

### Client assets
In [WHE-common](https://github.com/Medviten/WHE-common): the phase tiles in `World/Maps/LostIslesPhase1` and `World/Maps/LostIslesPhase2` (with the WDTs that list them), and two burnt trees in `World/Expansion03/Doodads/LostIsles/Trees`. The client must also have Open Azeroth's Kalimdor (F-010), as the tiles replace its own.

The tiles were converted from Zeppelin-Craft's PATCH-T, which has them as Cataclysm split ADTs already moved to Kalimdor's coordinates, by `tools/models/cata_adt_to_wotlk.py` in WHE-256-bit:
```
python tools/models/cata_adt_to_wotlk.py <PATCH-T>/World/Maps/LostIslesPhase1 <out>/LostIslesPhase1 \
  --cata-dbc <Cataclysm 4.0.6a dbc> --stock-dbc <stock 3.3.5a dbc> --name LostIslesPhase1
```
(the same for LostIslesPhase2). The two trees are Zeppelin-Craft's, with their model version set from 265 to 264, the only one 3.3.5a loads.

### Server
The worldserver needs the swap maps' terrain in its `maps/`, made from the same tiles by `tools/models/swap_server_maps.py` in WHE-256-bit. It reads the server's own Kalimdor `.map` files (for the zone and area of each tile) and `dbc/LiquidType.dbc`:
```
python tools/models/swap_server_maps.py 659 <WHE-common>/patch-A.MPQ/World/Maps/LostIslesPhase1 <DataDir>
python tools/models/swap_server_maps.py 661 <WHE-common>/patch-A.MPQ/World/Maps/LostIslesPhase2 <DataDir>
```
For creatures to path over the swapped terrain, add `--stage-navmesh <dir>`, run `mmaps_generator 659` (and 661) in that directory and copy its `mmaps/` into the server's. Without it they use Kalimdor's navmesh.

### How it works
PhaseMgr works out the player's phase mask from `phase_definitions` as before. The definition that sets it also names a swap map (or none), which the server now sends after the phase in `SMSG_SET_PHASE_SHIFT`, with the map whose tiles it replaces. The client then reads every tile the swap map's WDT has from the swap map's folder, and reloads the ones already loaded. On the server, a swap map's `.map` files overlay Kalimdor's grids for everything in a phase that swaps (Zeppelin-Craft's patch 0055).

### Known Issues
- Not tried in game yet
- Five Cataclysm doodads the burning island places aren't in Zeppelin-Craft's patches either, so they don't show: `LostIsles_BambooBurnt_04`, `LostIsles_VolcanoSmoke01`, `LostIsles_LavaFall01` (their textures are there), `Hyjal_LavaAshEmber01` and `StonetalonVolcanoTop`
- The ground effects (grass, small plants) of the phase tiles are Cataclysm ids that GroundEffectTexture.dbc doesn't have, so the tiles have none; Open Azeroth's own Lost Isles tiles have the same gap
- The minimap keeps showing the island as it was; Zeppelin-Craft's minimap tiles for the phases aren't used yet
- Line of sight and collision with objects use Kalimdor's vmaps in every phase, so the town's buildings don't block spells or movement on the server
