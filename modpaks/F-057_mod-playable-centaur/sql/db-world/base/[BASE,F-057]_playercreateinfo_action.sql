-- Action bars of @CentaurHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Centaur;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Centaur, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @CentaurHome) AS `home`;
