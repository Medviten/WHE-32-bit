-- charbaseinfo: the classes of @ArakkoaHome

DELETE FROM `charbaseinfo` WHERE `race` = @Arakkoa;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Arakkoa, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @ArakkoaHome) AS `home`;
