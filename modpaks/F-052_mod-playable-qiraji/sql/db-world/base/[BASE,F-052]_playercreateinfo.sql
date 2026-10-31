-- Start positions of @QirajiHome
DELETE FROM `playercreateinfo` WHERE `race` = @Qiraji;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Qiraji, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @QirajiHome) AS `home`;
