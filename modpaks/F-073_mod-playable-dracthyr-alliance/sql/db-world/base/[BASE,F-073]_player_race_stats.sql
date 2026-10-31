-- Stats of @AllianceDracthyrHome
DELETE FROM `player_race_stats` WHERE `Race` = @AllianceDracthyr;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @AllianceDracthyr, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @AllianceDracthyrHome) AS `home`;
