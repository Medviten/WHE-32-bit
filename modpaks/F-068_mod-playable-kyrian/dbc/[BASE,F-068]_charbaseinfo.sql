-- charbaseinfo: the classes of @KyrianHome

DELETE FROM `charbaseinfo` WHERE `race` = @Kyrian;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Kyrian, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @KyrianHome) AS `home`;
