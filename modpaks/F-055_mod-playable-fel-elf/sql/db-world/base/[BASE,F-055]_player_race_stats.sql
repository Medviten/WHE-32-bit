-- Stats of @FelElfHome
DELETE FROM `player_race_stats` WHERE `Race` = @FelElf;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @FelElf, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @FelElfHome) AS `home`;
