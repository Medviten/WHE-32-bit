-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @HordeSkyborneMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@HordeSkyborneMask, 0, @HordeSkyborneRacials, 0, @HordeSkyborneRacialNameenUS);
