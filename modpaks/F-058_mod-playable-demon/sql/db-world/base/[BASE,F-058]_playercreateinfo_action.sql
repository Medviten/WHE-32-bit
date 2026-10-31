-- Action bars of @DemonHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Demon;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Demon, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @DemonHome) AS `home`;
