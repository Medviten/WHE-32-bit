-- Start positions of @SatyrHome
DELETE FROM `playercreateinfo` WHERE `race` = @Satyr;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Satyr, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @SatyrHome) AS `home`;
