# mod-worgoblin-high-elf
## F-013_zep-goblin-start

### Features
- The Cataclysm Goblin starting zone from [Zeppelin-Craft](https://github.com/ZepplinCore-Development/Zeppelin-Craft): Kezan and the Lost Isles, with their creatures, quests, phases and scripts
- New Goblin characters start in Kezan, except Death Knights, and see the Goblin intro cinematic

### Requirements
- F-010_patch-open-azeroth, whose Kalimdor holds both zones, and its map files
- F-023_mod-playable-goblin, which has the Bilgewater Cartel and "PLAYER, Goblin" factions. F-024_mod-playable-worgen too for the Worgen NPC model
- `patches/core/goblin-start.patch` and a recompile: phasing (`phase_definitions`), the zone's C++ scripts and SmartAI events. It applies to the `whe-patch-base` tag
- `GoblinStartZone.Enable = 1` in `worldserver.conf`, the default. The patch's changes to stock behaviour (phasing, quest chests, loot conditions, vehicle bars, quest/movie SmartAI events, the SmartAI respawn event, guardian escorts, taming rods) all sit behind it, so a core built with the patch but without this modpak's SQL can set it to 0 and behave like stock
- The client assets below
- Keep it after F-002 in the manifest, so that ARAC's extra classes also start in Kezan

### Client assets
Zeppelin-Craft doesn't keep its models and textures in git, so these come from its client patches and are in [WHE-common](https://github.com/Medviten/WHE-common). To see which files your client still lacks, list the files in the DBC SQL and run `tools/checks/check_f013_assets.py`.

New Goblin characters play the intro cinematic on their first login, so the client needs `Cameras\FlyByGoblin.m2`. The server also needs it, as `Cameras/FlyByGoblin.m2` in its data directory, to load the area around the camera. Older clients crash without the file, while clients with the camera guard skip the cinematic.

Kezan is drawn on Open Azeroth's Kalimdor map but can't be clicked there, and the west half of the Lost Isles opens Durotar or Azshara, because OA's `Interface\WorldMap\Kalimdor.zmp` (the grid of which zone is under the cursor) has no Kezan cells and its Lost Isles cells are off to the east. WHE-common's copy fixes both; `tools/models/kalimdor_zmp.py` in WHE-256-bit makes it from OA's patch.

The Kaja'mite Cavern minimap needs the `md5translate.trs` that build-dbc.sh writes when `ORIGINAL_TRS` is set (see the main readme), plus its four tiles, `Textures\Minimap\lostisles\md_pygmycave1_000_0?_0?.blp`.

Trade Prince Gallywix's and Thrall's voiced lines play Cataclysm's recordings, which come from Zeppelin-Craft's PATCH-Z: `Sound\Creature\Gallywix\vo_qe_*.ogg` and `Sound\Creature\Thrall\vo_qe_dt_thrall_lievent0?.ogg` (the full list is in `dbc/[F-013]_cata_soundentries.sql`). Without them the lines are only shown as text.

### Updating
`tools/races/zep_goblin_port.py <zep-goblin-start> <this folder>` regenerates `dbc/` and `sql/`, so make changes in that script, `variables.sql` or `patches/` rather than in the SQL. To rebuild the patch, apply these patches from Zeppelin-Craft's `zpaks/core-azerothcore/patches` to `whe-patch-base` in order, add the `GoblinStartZone.Enable` checks back, and save the diff: 0031, 0032, 0034-0044, 0047-0050, 0052, 0053.

The zpak refers to rows it doesn't have, because Zeppelin's generator drops what it can't port and keeps what points at it. The script adds them from `tools/races/zep_goblin_fixes/`:
- `sql/zz_[F-013]_cata_ids.sql`, written by hand from Project Neltharion's 4.3.4 world database (`source/sql/base/world.zip` in its repository), Zeppelin's donor: the invisible markers the "447", Weed Whacker, Final Confrontation, Mechashark and egg-event spells aim at, the Orc Scout a Strangle Vine holds and the Orc Hunters of Weed Whacker, the Biggest Egg Ever, and the Life Savings hot rod's knockback
- `dbc/[F-013]_cata_*.sql`, made from the Cataclysm 4.0.6a client DBCs with `tools/races/cata406_dbc_port.py`. Regenerate them with:
  ```
  python tools/races/cata406_dbc_port.py <Cataclysm 4.0.6a dbc> <stock 3.3.5a dbc> tools/races/zep_goblin_fixes/dbc "[F-013]_cata" \
    --spell 68286,68287,68289,70329,70330,70390,71608,73839,74916 \
    --sound 19555,19567,19580-19586,19588-19594,20140-20142,20144-20146 --focus 1648 --display 29681 \
    --skip-kit 19510 --sound-map 23819=14884 --sound-map 23820=14336 --sound-ext .wav=.ogg --source "for F-013 (see its readme)"
  ```

It also moves the SmartAI positions, SmartAI teleports and quest POIs that Zeppelin left on Cataclysm's map 648 to Kalimdor, and drops or clears what still refers to things neither the zpak nor stock has (see the top of the script).

### Known Issues
- The town and the burning island change the terrain only with F-102_zep-lost-isles-terrain; without it the server and the client keep the base island
- `FacelessOneAquatic.m2` expects three external animations (sequences 60, 74 and 84) that Zeppelin-Craft's patches don't include either, so those won't play
- Only tested as SQL so far, on the default modpaks plus F-010: not compiled and not played. Off-by-default modpaks' SQL wasn't tried with it, but their core patches combine with this one
- Other than the Goblin starts, the only existing rows it changes are 25 stock class quests, which Goblins lose because they get their own versions, and display 26556, whose zero bounding radius and combat reach it fixes. That also affects the stock aircraft sharing the display
- Stock NPCs spawned in the zones (Spirit Healer, rats, frogs, crabs...) keep their stock templates instead of Zeppelin's, so anything Zeppelin's zones expected from its versions is missing
- The Train-a-Tron's profession recipes (spells 91121-91270, [I-317]) come from Zeppelin's zep-professions, which isn't ported, so the server leaves them out of the trainer
- Monkeys (creature family 51) aren't tameable: Cataclysm's family has no CreatureFamily row here
- F-082_patch-reforged-p uses sound ids 20140-20146 too (Thrall's lines here); it already clashes with F-010's sounds, which this modpak needs
