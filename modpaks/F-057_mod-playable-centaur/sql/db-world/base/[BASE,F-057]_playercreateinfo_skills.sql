-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @CentaurMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@CentaurMask, 0, @CentaurRacials, 0, @CentaurRacialNameenUS);
