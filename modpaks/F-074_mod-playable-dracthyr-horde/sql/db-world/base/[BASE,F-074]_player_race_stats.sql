-- Stats of @HordeDracthyrHome
DELETE FROM `player_race_stats` WHERE `Race` = @HordeDracthyr;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @HordeDracthyr, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @HordeDracthyrHome) AS `home`;
