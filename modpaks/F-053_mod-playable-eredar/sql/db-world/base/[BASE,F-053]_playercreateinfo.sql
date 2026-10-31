-- Start positions of @EredarHome
DELETE FROM `playercreateinfo` WHERE `race` = @Eredar;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Eredar, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @EredarHome) AS `home`;
