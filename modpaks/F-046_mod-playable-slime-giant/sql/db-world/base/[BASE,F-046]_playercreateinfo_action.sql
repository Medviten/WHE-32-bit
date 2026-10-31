-- Action bars of @SlimeGiantHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @SlimeGiant;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @SlimeGiant, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @SlimeGiantHome) AS `home`;
