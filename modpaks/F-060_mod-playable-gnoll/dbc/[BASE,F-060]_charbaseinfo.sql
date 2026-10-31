-- charbaseinfo: the classes of @GnollHome

DELETE FROM `charbaseinfo` WHERE `race` = @Gnoll;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Gnoll, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @GnollHome) AS `home`;
