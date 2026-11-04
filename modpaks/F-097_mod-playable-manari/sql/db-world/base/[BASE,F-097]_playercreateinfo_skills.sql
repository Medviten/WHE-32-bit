-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @ManariMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@ManariMask, 0, @ManariRacials, 0, @ManariRacialNameenUS);
