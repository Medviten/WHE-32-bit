-- Action bars of @ArakkoaHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Arakkoa;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Arakkoa, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @ArakkoaHome) AS `home`;
