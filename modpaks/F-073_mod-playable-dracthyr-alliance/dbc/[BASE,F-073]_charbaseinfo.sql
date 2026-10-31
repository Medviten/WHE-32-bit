-- charbaseinfo: the classes of @AllianceDracthyrHome

DELETE FROM `charbaseinfo` WHERE `race` = @AllianceDracthyr;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @AllianceDracthyr, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @AllianceDracthyrHome) AS `home`;
