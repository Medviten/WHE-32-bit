-- Action bars of @ShivanHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Shivan;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Shivan, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @ShivanHome) AS `home`;
