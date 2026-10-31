-- Stats of @QuillboarHome
DELETE FROM `player_race_stats` WHERE `Race` = @Quillboar;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Quillboar, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @QuillboarHome) AS `home`;
