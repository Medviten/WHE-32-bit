-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @ShivanMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@ShivanMask, 0, @ShivanRacials, 0, @ShivanRacialNameenUS);
