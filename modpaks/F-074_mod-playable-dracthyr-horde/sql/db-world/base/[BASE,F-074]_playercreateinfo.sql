-- Start positions of @HordeDracthyrHome
DELETE FROM `playercreateinfo` WHERE `race` = @HordeDracthyr;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @HordeDracthyr, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @HordeDracthyrHome) AS `home`;
