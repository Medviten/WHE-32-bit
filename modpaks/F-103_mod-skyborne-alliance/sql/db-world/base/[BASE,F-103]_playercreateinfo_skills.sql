-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @AllianceSkyborneMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@AllianceSkyborneMask, 0, @AllianceSkyborneRacials, 0, @AllianceSkyborneRacialNameenUS);
