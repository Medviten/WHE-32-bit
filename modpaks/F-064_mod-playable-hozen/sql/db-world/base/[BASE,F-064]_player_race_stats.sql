-- Stats of @HozenHome
DELETE FROM `player_race_stats` WHERE `Race` = @Hozen;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Hozen, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @HozenHome) AS `home`;
