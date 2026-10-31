-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @NorthrendSkeletonMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@NorthrendSkeletonMask, 0, @NorthrendSkeletonRacials, 0, @NorthrendSkeletonRacialNameenUS);
