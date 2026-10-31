-- Start positions of @ForestTrollHome
DELETE FROM `playercreateinfo` WHERE `race` = @ForestTroll;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @ForestTroll, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @ForestTrollHome) AS `home`;
