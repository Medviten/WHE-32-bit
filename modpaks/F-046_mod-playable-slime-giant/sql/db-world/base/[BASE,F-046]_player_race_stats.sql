-- Stats of @SlimeGiantHome
DELETE FROM `player_race_stats` WHERE `Race` = @SlimeGiant;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @SlimeGiant, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @SlimeGiantHome) AS `home`;
