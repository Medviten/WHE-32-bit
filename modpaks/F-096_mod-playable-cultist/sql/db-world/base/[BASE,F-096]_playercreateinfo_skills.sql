-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @CultistMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@CultistMask, 0, @CultistRacials, 0, @CultistRacialNameenUS);
