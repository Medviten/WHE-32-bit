-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @IceTrollMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@IceTrollMask, 0, @IceTrollRacials, 0, @IceTrollRacialNameenUS);
