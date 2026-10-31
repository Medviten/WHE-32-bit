-- Stats of @VenthyrHome
DELETE FROM `player_race_stats` WHERE `Race` = @Venthyr;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Venthyr, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @VenthyrHome) AS `home`;
