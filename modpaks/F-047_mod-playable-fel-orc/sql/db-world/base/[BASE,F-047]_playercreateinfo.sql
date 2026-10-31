-- Start positions of @FelOrcHome
DELETE FROM `playercreateinfo` WHERE `race` = @FelOrc;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @FelOrc, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @FelOrcHome) AS `home`;
