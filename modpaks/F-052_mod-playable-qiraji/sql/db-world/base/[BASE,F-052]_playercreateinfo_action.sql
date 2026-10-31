-- Action bars of @QirajiHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Qiraji;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Qiraji, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @QirajiHome) AS `home`;
