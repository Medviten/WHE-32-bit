-- Start positions of @BansheeHome
DELETE FROM `playercreateinfo` WHERE `race` = @Banshee;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Banshee, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @BansheeHome) AS `home`;
