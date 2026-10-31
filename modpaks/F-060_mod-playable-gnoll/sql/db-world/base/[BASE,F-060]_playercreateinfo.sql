-- Start positions of @GnollHome
DELETE FROM `playercreateinfo` WHERE `race` = @Gnoll;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Gnoll, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @GnollHome) AS `home`;
