-- Stats of @ShivanHome
DELETE FROM `player_race_stats` WHERE `Race` = @Shivan;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Shivan, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @ShivanHome) AS `home`;
