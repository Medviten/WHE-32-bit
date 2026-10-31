-- charbaseinfo: the classes of @EtherealHome

DELETE FROM `charbaseinfo` WHERE `race` = @Ethereal;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Ethereal, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @EtherealHome) AS `home`;
