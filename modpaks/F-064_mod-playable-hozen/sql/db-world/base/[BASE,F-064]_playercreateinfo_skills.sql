-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @HozenMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@HozenMask, 0, @HozenRacials, 0, @HozenRacialNameenUS);
