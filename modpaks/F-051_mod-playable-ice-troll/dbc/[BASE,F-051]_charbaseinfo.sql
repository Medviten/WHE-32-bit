-- charbaseinfo: the classes of @IceTrollHome

DELETE FROM `charbaseinfo` WHERE `race` = @IceTroll;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @IceTroll, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @IceTrollHome) AS `home`;
