-- Start positions of @AllianceDracthyrHome
DELETE FROM `playercreateinfo` WHERE `race` = @AllianceDracthyr;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @AllianceDracthyr, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @AllianceDracthyrHome) AS `home`;
