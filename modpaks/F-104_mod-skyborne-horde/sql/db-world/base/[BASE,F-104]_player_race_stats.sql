-- Stats of @HordeSkyborneHome
DELETE FROM `player_race_stats` WHERE `Race` = @HordeSkyborne;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @HordeSkyborne, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @HordeSkyborneHome) AS `home`;
