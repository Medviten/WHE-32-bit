-- charbaseinfo: the classes of @MantidHome

DELETE FROM `charbaseinfo` WHERE `race` = @Mantid;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Mantid, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @MantidHome) AS `home`;
