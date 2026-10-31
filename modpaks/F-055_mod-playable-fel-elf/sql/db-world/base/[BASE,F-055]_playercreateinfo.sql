-- Start positions of @FelElfHome
DELETE FROM `playercreateinfo` WHERE `race` = @FelElf;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @FelElf, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @FelElfHome) AS `home`;
