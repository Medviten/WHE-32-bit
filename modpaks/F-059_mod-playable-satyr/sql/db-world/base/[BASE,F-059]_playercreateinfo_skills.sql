-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @SatyrMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@SatyrMask, 0, @SatyrRacials, 0, @SatyrRacialNameenUS);
