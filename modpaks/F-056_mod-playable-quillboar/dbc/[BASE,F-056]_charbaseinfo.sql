-- charbaseinfo: the classes of @QuillboarHome

DELETE FROM `charbaseinfo` WHERE `race` = @Quillboar;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Quillboar, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @QuillboarHome) AS `home`;
