-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @FelElfMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@FelElfMask, 0, @FelElfRacials, 0, @FelElfRacialNameenUS);
