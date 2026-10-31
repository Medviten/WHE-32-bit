-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @FelOrcMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@FelOrcMask, 0, @FelOrcRacials, 0, @FelOrcRacialNameenUS);
