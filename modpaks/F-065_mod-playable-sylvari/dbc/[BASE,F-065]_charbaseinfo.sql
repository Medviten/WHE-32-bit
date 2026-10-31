-- charbaseinfo: the classes of @SylvariHome

DELETE FROM `charbaseinfo` WHERE `race` = @Sylvari;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Sylvari, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @SylvariHome) AS `home`;
