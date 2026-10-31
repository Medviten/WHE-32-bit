-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @SkeletonMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@SkeletonMask, 0, @SkeletonRacials, 0, @SkeletonRacialNameenUS);
