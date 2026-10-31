-- charbaseinfo: the classes of @DemonHome

DELETE FROM `charbaseinfo` WHERE `race` = @Demon;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Demon, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @DemonHome) AS `home`;
