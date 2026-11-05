-- Stats of @HordeHaranirHome
DELETE FROM `player_race_stats` WHERE `Race` = @HordeHaranir;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @HordeHaranir, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @HordeHaranirHome) AS `home`;
