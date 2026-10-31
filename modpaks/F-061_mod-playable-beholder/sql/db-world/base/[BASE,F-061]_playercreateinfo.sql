-- Start positions of @BeholderHome
DELETE FROM `playercreateinfo` WHERE `race` = @Beholder;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Beholder, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @BeholderHome) AS `home`;
