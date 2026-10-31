-- charbaseinfo: the classes of @HordeDracthyrHome

DELETE FROM `charbaseinfo` WHERE `race` = @HordeDracthyr;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @HordeDracthyr, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @HordeDracthyrHome) AS `home`;
