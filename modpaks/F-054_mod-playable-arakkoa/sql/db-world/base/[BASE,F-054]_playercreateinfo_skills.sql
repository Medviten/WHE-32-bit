-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @ArakkoaMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@ArakkoaMask, 0, @ArakkoaRacials, 0, @ArakkoaRacialNameenUS);
