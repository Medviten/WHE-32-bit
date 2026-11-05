-- characterfacialhairstyles: 16 inserts, 0 updates, 0 deletes (from the Night Elf rows (race 4), which the Retail client only reads at row 0)

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @AllianceHaranir;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@AllianceHaranir, @Male,    0, 1, 1, 1, 0, 2),
(@AllianceHaranir, @Male,    1, 2, 2, 2, 0, 2),
(@AllianceHaranir, @Male,    2, 3, 3, 3, 0, 2),
(@AllianceHaranir, @Male,    3, 4, 4, 4, 0, 2),
(@AllianceHaranir, @Male,    4, 5, 5, 5, 0, 2),
(@AllianceHaranir, @Male,    5, 6, 6, 2, 0, 2),
(@AllianceHaranir, @Female,  0, 0, 0, 0, 0, 2),
(@AllianceHaranir, @Female,  1, 0, 0, 0, 0, 2),
(@AllianceHaranir, @Female,  2, 0, 0, 0, 0, 2),
(@AllianceHaranir, @Female,  3, 0, 0, 0, 0, 2),
(@AllianceHaranir, @Female,  4, 0, 0, 0, 0, 2),
(@AllianceHaranir, @Female,  5, 0, 0, 0, 0, 2),
(@AllianceHaranir, @Female,  6, 0, 0, 0, 0, 2),
(@AllianceHaranir, @Female,  7, 0, 0, 0, 0, 2),
(@AllianceHaranir, @Female,  8, 0, 0, 0, 0, 2),
(@AllianceHaranir, @Female,  9, 0, 0, 0, 0, 2);
