-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @GnollMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@GnollMask, 0, @GnollRacials, 0, @GnollRacialNameenUS);
