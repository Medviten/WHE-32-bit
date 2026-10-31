-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @AllianceDracthyrMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@AllianceDracthyrMask, 0, @AllianceDracthyrRacials, 0, @AllianceDracthyrRacialNameenUS);
