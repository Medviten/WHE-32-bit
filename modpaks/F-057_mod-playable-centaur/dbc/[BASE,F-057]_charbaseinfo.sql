-- charbaseinfo: the classes of @CentaurHome

DELETE FROM `charbaseinfo` WHERE `race` = @Centaur;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Centaur, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @CentaurHome) AS `home`;
