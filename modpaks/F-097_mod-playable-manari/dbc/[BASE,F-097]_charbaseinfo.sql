-- charbaseinfo: the classes of @ManariHome

DELETE FROM `charbaseinfo` WHERE `race` = @Manari;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Manari, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @ManariHome) AS `home`;
