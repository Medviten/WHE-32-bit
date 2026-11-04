-- characterfacialhairstyles: 15 inserts, 0 updates, 0 deletes (from the Alpha-Worgen package's rows for race 11)

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @Manari;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@Manari, @Male,    0, 1, 0, 0, 0, 0),
(@Manari, @Male,    1, 2, 0, 0, 0, 0),
(@Manari, @Male,    2, 3, 0, 2, 0, 0),
(@Manari, @Male,    3, 4, 0, 3, 0, 0),
(@Manari, @Male,    4, 5, 0, 4, 0, 0),
(@Manari, @Male,    5, 6, 0, 5, 0, 0),
(@Manari, @Male,    6, 7, 0, 6, 0, 0),
(@Manari, @Male,    7, 8, 0, 0, 0, 0),
(@Manari, @Female,  0, 2, 0, 0, 0, 0),
(@Manari, @Female,  1, 3, 0, 0, 0, 0),
(@Manari, @Female,  2, 4, 0, 0, 0, 0),
(@Manari, @Female,  3, 5, 0, 0, 0, 0),
(@Manari, @Female,  4, 6, 0, 0, 0, 0),
(@Manari, @Female,  5, 7, 0, 0, 0, 0),
(@Manari, @Female,  6, 8, 0, 0, 0, 0);
