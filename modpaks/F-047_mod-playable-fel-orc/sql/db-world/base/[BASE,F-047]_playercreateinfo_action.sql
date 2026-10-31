-- Action bars of @FelOrcHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @FelOrc;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @FelOrc, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @FelOrcHome) AS `home`;
