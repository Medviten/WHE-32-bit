-- Start positions of @VenthyrHome
DELETE FROM `playercreateinfo` WHERE `race` = @Venthyr;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Venthyr, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @VenthyrHome) AS `home`;
