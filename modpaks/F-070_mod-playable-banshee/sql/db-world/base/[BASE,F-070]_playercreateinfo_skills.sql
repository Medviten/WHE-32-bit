-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @BansheeMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@BansheeMask, 0, @BansheeRacials, 0, @BansheeRacialNameenUS);
