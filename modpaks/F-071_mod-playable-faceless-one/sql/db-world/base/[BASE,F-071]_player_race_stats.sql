-- Stats of @FacelessOneHome
DELETE FROM `player_race_stats` WHERE `Race` = @FacelessOne;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @FacelessOne, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @FacelessOneHome) AS `home`;
