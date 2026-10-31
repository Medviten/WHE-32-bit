-- Start positions of @HozenHome
DELETE FROM `playercreateinfo` WHERE `race` = @Hozen;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Hozen, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @HozenHome) AS `home`;
