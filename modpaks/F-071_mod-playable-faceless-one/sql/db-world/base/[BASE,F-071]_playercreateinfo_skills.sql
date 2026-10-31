-- Racial skills
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` = @FacelessOneMask AND `classMask` = 0;
INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(@FacelessOneMask, 0, @FacelessOneRacials, 0, @FacelessOneRacialNameenUS);
