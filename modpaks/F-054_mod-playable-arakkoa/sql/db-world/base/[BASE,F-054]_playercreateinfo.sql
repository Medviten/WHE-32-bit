-- Start positions of @ArakkoaHome
DELETE FROM `playercreateinfo` WHERE `race` = @Arakkoa;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Arakkoa, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @ArakkoaHome) AS `home`;
