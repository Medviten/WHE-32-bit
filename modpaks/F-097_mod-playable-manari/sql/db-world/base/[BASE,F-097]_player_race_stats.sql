-- Stats of @ManariHome
DELETE FROM `player_race_stats` WHERE `Race` = @Manari;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Manari, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @ManariHome) AS `home`;
