-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @DemonMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@DemonMask, 0, @DemonRacials, 0, @DemonRacialNameenUS);
