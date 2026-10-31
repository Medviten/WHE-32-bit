-- Start positions of @CentaurHome
DELETE FROM `playercreateinfo` WHERE `race` = @Centaur;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Centaur, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @CentaurHome) AS `home`;
