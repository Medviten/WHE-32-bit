-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @QirajiMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@QirajiMask, 0, @QirajiRacials, 0, @QirajiRacialNameenUS);
