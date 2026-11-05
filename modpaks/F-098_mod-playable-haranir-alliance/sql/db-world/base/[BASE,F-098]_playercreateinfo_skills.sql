-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @AllianceHaranirMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@AllianceHaranirMask, 0, @AllianceHaranirRacials, 0, @AllianceHaranirRacialNameenUS);
