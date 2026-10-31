-- charbaseinfo: the classes of @FacelessOneHome

DELETE FROM `charbaseinfo` WHERE `race` = @FacelessOne;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @FacelessOne, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @FacelessOneHome) AS `home`;
