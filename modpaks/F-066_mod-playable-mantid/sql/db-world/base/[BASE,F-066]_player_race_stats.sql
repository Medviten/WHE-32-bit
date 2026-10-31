-- Stats of @MantidHome
DELETE FROM `player_race_stats` WHERE `Race` = @Mantid;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Mantid, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @MantidHome) AS `home`;
