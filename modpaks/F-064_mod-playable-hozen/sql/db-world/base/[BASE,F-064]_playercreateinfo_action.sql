-- Action bars of @HozenHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Hozen;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Hozen, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @HozenHome) AS `home`;
