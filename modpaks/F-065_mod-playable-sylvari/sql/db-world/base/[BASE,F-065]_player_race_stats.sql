-- Stats of @SylvariHome
DELETE FROM `player_race_stats` WHERE `Race` = @Sylvari;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Sylvari, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @SylvariHome) AS `home`;
