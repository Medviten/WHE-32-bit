-- Stats of @BansheeHome
DELETE FROM `player_race_stats` WHERE `Race` = @Banshee;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Banshee, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @BansheeHome) AS `home`;
