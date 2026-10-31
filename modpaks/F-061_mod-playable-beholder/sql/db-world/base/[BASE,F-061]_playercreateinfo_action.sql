-- Action bars of @BeholderHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Beholder;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Beholder, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @BeholderHome) AS `home`;
