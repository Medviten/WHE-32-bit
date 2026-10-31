-- Action bars of @FacelessOneHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @FacelessOne;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @FacelessOne, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @FacelessOneHome) AS `home`;
