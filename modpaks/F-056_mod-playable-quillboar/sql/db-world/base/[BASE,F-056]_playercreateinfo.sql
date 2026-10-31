-- Start positions of @QuillboarHome
DELETE FROM `playercreateinfo` WHERE `race` = @Quillboar;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Quillboar, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @QuillboarHome) AS `home`;
