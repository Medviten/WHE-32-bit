-- Start positions of @IceTrollHome
DELETE FROM `playercreateinfo` WHERE `race` = @IceTroll;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @IceTroll, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @IceTrollHome) AS `home`;
