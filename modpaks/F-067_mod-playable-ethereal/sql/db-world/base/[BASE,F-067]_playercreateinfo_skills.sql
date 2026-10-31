-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @EtherealMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@EtherealMask, 0, @EtherealRacials, 0, @EtherealRacialNameenUS);
