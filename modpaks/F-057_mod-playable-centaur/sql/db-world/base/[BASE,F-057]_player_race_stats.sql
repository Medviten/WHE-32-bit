-- Stats of @CentaurHome
DELETE FROM `player_race_stats` WHERE `Race` = @Centaur;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Centaur, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @CentaurHome) AS `home`;
