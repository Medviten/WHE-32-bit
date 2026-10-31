-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @EredarMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@EredarMask, 0, @EredarRacials, 0, @EredarRacialNameenUS);
