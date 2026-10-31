-- Action bars of @FelElfHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @FelElf;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @FelElf, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @FelElfHome) AS `home`;
