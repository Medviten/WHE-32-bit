-- Stats of @DemonHome
DELETE FROM `player_race_stats` WHERE `Race` = @Demon;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Demon, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @DemonHome) AS `home`;
