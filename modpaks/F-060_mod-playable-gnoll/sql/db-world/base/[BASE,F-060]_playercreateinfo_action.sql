-- Action bars of @GnollHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Gnoll;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Gnoll, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @GnollHome) AS `home`;
