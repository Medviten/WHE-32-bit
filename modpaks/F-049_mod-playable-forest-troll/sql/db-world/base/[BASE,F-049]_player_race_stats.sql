-- Stats of @ForestTrollHome
DELETE FROM `player_race_stats` WHERE `Race` = @ForestTroll;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @ForestTroll, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @ForestTrollHome) AS `home`;
