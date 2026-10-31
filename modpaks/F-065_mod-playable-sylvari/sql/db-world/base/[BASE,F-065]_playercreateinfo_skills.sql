-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @SylvariMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@SylvariMask, 0, @SylvariRacials, 0, @SylvariRacialNameenUS);
