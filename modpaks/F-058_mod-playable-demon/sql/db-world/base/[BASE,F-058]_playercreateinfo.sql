-- Start positions of @DemonHome
DELETE FROM `playercreateinfo` WHERE `race` = @Demon;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Demon, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @DemonHome) AS `home`;
