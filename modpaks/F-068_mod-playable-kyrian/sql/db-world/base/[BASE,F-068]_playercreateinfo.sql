-- Start positions of @KyrianHome
DELETE FROM `playercreateinfo` WHERE `race` = @Kyrian;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Kyrian, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @KyrianHome) AS `home`;
