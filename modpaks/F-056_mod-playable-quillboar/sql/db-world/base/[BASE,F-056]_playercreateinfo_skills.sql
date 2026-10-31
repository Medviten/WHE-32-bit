-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @QuillboarMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@QuillboarMask, 0, @QuillboarRacials, 0, @QuillboarRacialNameenUS);
