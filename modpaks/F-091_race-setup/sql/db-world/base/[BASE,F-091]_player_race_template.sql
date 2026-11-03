/* Run first of all the race modpaks: each adds its own row, and a rebuild starts from no rows */
CREATE TABLE IF NOT EXISTS `player_race_template` (
  `race` tinyint unsigned NOT NULL,
  `home_race` tinyint unsigned NOT NULL COMMENT 'Stock race whose start area this race shares: taxi nodes, Collector''s Edition voucher',
  `kin_race` tinyint unsigned NOT NULL COMMENT 'Race whose looks and language this race shares: holiday costumes, race change language. 0 for none',
  `shapeshift_skin_color` tinyint unsigned NOT NULL DEFAULT 0 COMMENT 'Shapeshift forms follow skin (fur) color instead of hair color',
  PRIMARY KEY (`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='What custom races copy from the stock races. A race without a row is its own home and kin';

DELETE FROM `player_race_template`;
INSERT INTO `player_race_template` (`race`, `home_race`, `kin_race`, `shapeshift_skin_color`) VALUES
(@Tauren, @Tauren, @Tauren, 1);

CREATE TABLE IF NOT EXISTS `playerbots_race_template` (
  `race` tinyint unsigned NOT NULL,
  `name_race` tinyint unsigned DEFAULT NULL COMMENT 'Race whose bot names this race uses, 0 for generic names. NULL: its kin_race in player_race_template',
  `mounts` varchar(255) NOT NULL DEFAULT '' COMMENT 'Mount spells, space separated. Sorted by speed; spells the DBCs lack are skipped, and a speed with none uses the home race''s mounts',
  PRIMARY KEY (`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Bot-only settings of custom races. Races only need a row to differ from their home and kin';

DELETE FROM `playerbots_race_template`;
