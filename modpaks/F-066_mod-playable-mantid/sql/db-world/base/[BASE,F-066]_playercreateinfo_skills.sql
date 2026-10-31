-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @MantidMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@MantidMask, 0, @MantidRacials, 0, @MantidRacialNameenUS);
