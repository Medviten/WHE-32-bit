# mod-worgoblin-high-elf
## F-091_race-setup

### Features
- Creates `player_race_template` and `playerbots_race_template` in the world database. The race modpaks add their rows there, so it has to stay first in the manifest
- Required for any custom race, along with F-026_custom-race-support, whose core patch reads the table

### Adding a race
Add `sql/db-world/base/[BASE,F-xxx]_player_race_template.sql` to the race's modpak:
```sql
DELETE FROM `player_race_template` WHERE `race` = @Worgen;
INSERT INTO `player_race_template` (`race`, `home_race`, `kin_race`, `shapeshift_skin_color`) VALUES
(@Worgen, @NightElf, @Human, 0);
```
No core patch or recompile is needed for this.
- `home_race`: the stock race whose start area it shares, for taxi nodes and the Collector's Edition voucher. Orb of Deception and the Corsair Costume also use it if the race has no `kin_race`.
- `kin_race`: the race whose looks and language it shares, for holiday costumes, Orb of Deception, the Corsair Costume, the Culling of Stratholme disguise and race change languages. Use 0 for none. `@Goblin` keeps Goblin costumes.
- `shapeshift_skin_color`: 1 if its shapeshift forms follow skin (fur) color instead of hair color, otherwise 0. build-dbc.sh exports these races to `ShapeshiftSkinColorRaces.csv` next to the DBCs. The client reads it from `DBFilesClient`, unless its `shapeshiftSkinColorRaces` CVar is set.

### Bots
Bots use `home_race` for mounts and `kin_race` for names, and work without anything else. To differ from those, also add `sql/db-world/base/[BASE,F-xxx]_playerbots_race_template.sql`:
```sql
DELETE FROM `playerbots_race_template` WHERE `race` = @Goblin;
INSERT INTO `playerbots_race_template` (`race`, `name_race`, `mounts`) VALUES
(@Goblin, @Gnome, '87090 87091');
```
- `name_race`: the race whose bot names it uses, 0 for generic names, or NULL for its `kin_race`.
- `mounts`: its own mount spells. They are sorted by speed and replace the `home_race` mounts of that speed. Spells the DBCs lack are skipped.

32-bit race masks stop at race 31, so build-dbc.sh stops with an error if the manifest assigns more.
