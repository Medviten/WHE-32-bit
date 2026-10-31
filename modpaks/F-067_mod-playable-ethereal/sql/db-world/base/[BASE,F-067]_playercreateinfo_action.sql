-- Action bars of @EtherealHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Ethereal;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Ethereal, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @EtherealHome) AS `home`;
