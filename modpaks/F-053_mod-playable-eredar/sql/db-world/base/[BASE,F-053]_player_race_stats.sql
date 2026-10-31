-- Stats of @EredarHome
DELETE FROM `player_race_stats` WHERE `Race` = @Eredar;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Eredar, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @EredarHome) AS `home`;
