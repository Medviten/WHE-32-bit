-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @KyrianMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@KyrianMask, 0, @KyrianRacials, 0, @KyrianRacialNameenUS);
