-- Stats of @GnollHome
DELETE FROM `player_race_stats` WHERE `Race` = @Gnoll;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Gnoll, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @GnollHome) AS `home`;
