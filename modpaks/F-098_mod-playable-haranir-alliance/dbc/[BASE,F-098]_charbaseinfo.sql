-- charbaseinfo: the classes of @AllianceHaranirHome

DELETE FROM `charbaseinfo` WHERE `race` = @AllianceHaranir;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @AllianceHaranir, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @AllianceHaranirHome) AS `home`;
