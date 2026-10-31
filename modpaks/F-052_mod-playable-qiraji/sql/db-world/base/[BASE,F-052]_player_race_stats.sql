-- Stats of @QirajiHome
DELETE FROM `player_race_stats` WHERE `Race` = @Qiraji;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Qiraji, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @QirajiHome) AS `home`;
