-- characterfacialhairstyles: 17 inserts, 0 updates, 0 deletes (from the Troll rows (race 8), which the Retail client only reads at row 0)

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @HordeHaranir;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@HordeHaranir, @Male,    0, 0, 2, 0, 0, 0),
(@HordeHaranir, @Male,    1, 0, 3, 0, 0, 0),
(@HordeHaranir, @Male,    2, 0, 4, 0, 0, 0),
(@HordeHaranir, @Male,    3, 0, 5, 0, 0, 0),
(@HordeHaranir, @Male,    4, 0, 6, 0, 0, 0),
(@HordeHaranir, @Male,    5, 0, 2, 0, 0, 0),
(@HordeHaranir, @Male,    6, 0, 3, 0, 0, 0),
(@HordeHaranir, @Male,    7, 0, 4, 0, 0, 0),
(@HordeHaranir, @Male,    8, 0, 5, 0, 0, 0),
(@HordeHaranir, @Male,    9, 0, 6, 0, 0, 0),
(@HordeHaranir, @Male,   10, 0, 4, 0, 0, 0),
(@HordeHaranir, @Female,  0, 0, 2, 0, 0, 0),
(@HordeHaranir, @Female,  1, 0, 3, 0, 0, 0),
(@HordeHaranir, @Female,  2, 0, 4, 0, 0, 0),
(@HordeHaranir, @Female,  3, 0, 5, 0, 0, 0),
(@HordeHaranir, @Female,  4, 0, 6, 0, 0, 0),
(@HordeHaranir, @Female,  5, 0, 7, 0, 0, 0);
