-- Stats of @AllianceSkyborneHome
DELETE FROM `player_race_stats` WHERE `Race` = @AllianceSkyborne;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @AllianceSkyborne, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @AllianceSkyborneHome) AS `home`;
