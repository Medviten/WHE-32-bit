-- Action bars of @EredarHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Eredar;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Eredar, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @EredarHome) AS `home`;
