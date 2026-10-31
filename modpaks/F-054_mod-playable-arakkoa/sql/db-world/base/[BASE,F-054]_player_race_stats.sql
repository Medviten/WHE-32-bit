-- Stats of @ArakkoaHome
DELETE FROM `player_race_stats` WHERE `Race` = @Arakkoa;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Arakkoa, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @ArakkoaHome) AS `home`;
