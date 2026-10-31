-- Action bars of @BansheeHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Banshee;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Banshee, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @BansheeHome) AS `home`;
