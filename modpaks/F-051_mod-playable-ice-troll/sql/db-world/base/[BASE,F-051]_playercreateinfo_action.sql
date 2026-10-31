-- Action bars of @IceTrollHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @IceTroll;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @IceTroll, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @IceTrollHome) AS `home`;
