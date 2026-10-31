-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @HordeDracthyrMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@HordeDracthyrMask, 0, @HordeDracthyrRacials, 0, @HordeDracthyrRacialNameenUS);
