-- Stats of @FelOrcHome
DELETE FROM `player_race_stats` WHERE `Race` = @FelOrc;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @FelOrc, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @FelOrcHome) AS `home`;
