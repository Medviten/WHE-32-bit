-- Start positions of @ShivanHome
DELETE FROM `playercreateinfo` WHERE `race` = @Shivan;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Shivan, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @ShivanHome) AS `home`;
