-- Start positions of @SlimeGiantHome
DELETE FROM `playercreateinfo` WHERE `race` = @SlimeGiant;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @SlimeGiant, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @SlimeGiantHome) AS `home`;
