-- Stats of @SatyrHome
DELETE FROM `player_race_stats` WHERE `Race` = @Satyr;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Satyr, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @SatyrHome) AS `home`;
