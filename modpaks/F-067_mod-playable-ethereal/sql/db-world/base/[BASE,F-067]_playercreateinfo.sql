-- Start positions of @EtherealHome
DELETE FROM `playercreateinfo` WHERE `race` = @Ethereal;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Ethereal, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @EtherealHome) AS `home`;
