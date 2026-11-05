-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @HordeHaranirMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@HordeHaranirMask, 0, @HordeHaranirRacials, 0, @HordeHaranirRacialNameenUS);
