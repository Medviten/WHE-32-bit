-- Start positions of @SylvariHome
DELETE FROM `playercreateinfo` WHERE `race` = @Sylvari;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Sylvari, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @SylvariHome) AS `home`;
