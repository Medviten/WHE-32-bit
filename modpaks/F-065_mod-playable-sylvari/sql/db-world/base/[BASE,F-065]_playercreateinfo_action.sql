-- Action bars of @SylvariHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Sylvari;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Sylvari, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @SylvariHome) AS `home`;
