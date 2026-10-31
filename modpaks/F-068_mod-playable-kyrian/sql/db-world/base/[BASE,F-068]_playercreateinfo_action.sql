-- Action bars of @KyrianHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Kyrian;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Kyrian, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @KyrianHome) AS `home`;
