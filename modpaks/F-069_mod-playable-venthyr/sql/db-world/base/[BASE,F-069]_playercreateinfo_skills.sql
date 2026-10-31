-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @VenthyrMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@VenthyrMask, 0, @VenthyrRacials, 0, @VenthyrRacialNameenUS);
