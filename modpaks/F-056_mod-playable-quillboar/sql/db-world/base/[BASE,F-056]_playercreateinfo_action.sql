-- Action bars of @QuillboarHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Quillboar;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Quillboar, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @QuillboarHome) AS `home`;
