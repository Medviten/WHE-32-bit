-- Start positions of @FacelessOneHome
DELETE FROM `playercreateinfo` WHERE `race` = @FacelessOne;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @FacelessOne, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @FacelessOneHome) AS `home`;
