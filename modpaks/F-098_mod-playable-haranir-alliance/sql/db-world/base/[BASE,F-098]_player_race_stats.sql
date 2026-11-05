-- Stats of @AllianceHaranirHome
DELETE FROM `player_race_stats` WHERE `Race` = @AllianceHaranir;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @AllianceHaranir, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @AllianceHaranirHome) AS `home`;
