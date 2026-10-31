-- Action bars of @SatyrHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Satyr;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Satyr, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @SatyrHome) AS `home`;
