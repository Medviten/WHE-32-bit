-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @ForestTrollMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@ForestTrollMask, 0, @ForestTrollRacials, 0, @ForestTrollRacialNameenUS);
