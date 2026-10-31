-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @BeholderMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@BeholderMask, 0, @BeholderRacials, 0, @BeholderRacialNameenUS);
