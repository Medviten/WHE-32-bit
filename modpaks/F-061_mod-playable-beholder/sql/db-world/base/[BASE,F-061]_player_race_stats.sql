-- Stats of @BeholderHome
DELETE FROM `player_race_stats` WHERE `Race` = @Beholder;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Beholder, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @BeholderHome) AS `home`;
