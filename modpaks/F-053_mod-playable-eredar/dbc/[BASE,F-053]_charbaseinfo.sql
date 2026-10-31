-- charbaseinfo: the classes of @EredarHome

DELETE FROM `charbaseinfo` WHERE `race` = @Eredar;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Eredar, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @EredarHome) AS `home`;
