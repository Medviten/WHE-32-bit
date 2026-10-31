-- Stats of @KyrianHome
DELETE FROM `player_race_stats` WHERE `Race` = @Kyrian;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Kyrian, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @KyrianHome) AS `home`;
