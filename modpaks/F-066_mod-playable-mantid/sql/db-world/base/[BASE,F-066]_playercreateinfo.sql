-- Start positions of @MantidHome
DELETE FROM `playercreateinfo` WHERE `race` = @Mantid;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Mantid, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @MantidHome) AS `home`;
