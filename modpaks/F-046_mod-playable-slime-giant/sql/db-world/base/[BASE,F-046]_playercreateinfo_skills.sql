-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @SlimeGiantMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@SlimeGiantMask, 0, @SlimeGiantRacials, 0, @SlimeGiantRacialNameenUS);