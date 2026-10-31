-- characterfacialhairstyles: 21 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @Worgen;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@Worgen, @Male,   0,  2, 0,  3, 0, 0),
(@Worgen, @Male,   1,  3, 0,  4, 0, 0),
(@Worgen, @Male,   2,  4, 0,  5, 0, 0),
(@Worgen, @Male,   3,  5, 0,  6, 0, 0),
(@Worgen, @Male,   4, 13, 0,  7, 0, 0),
(@Worgen, @Male,   5,  7, 0,  8, 0, 0),
(@Worgen, @Male,   6,  8, 0,  9, 0, 0),
(@Worgen, @Male,   7, 14, 0, 10, 0, 0),
(@Worgen, @Male,   8, 10, 0, 11, 0, 0),
(@Worgen, @Female, 0,  0, 0,  3, 0, 0),
(@Worgen, @Female, 1,  0, 0,  4, 0, 0),
(@Worgen, @Female, 2,  0, 0,  5, 0, 0),
(@Worgen, @Female, 3,  0, 0,  6, 0, 0),
(@Worgen, @Female, 4,  0, 0,  7, 0, 0),
(@Worgen, @Female, 5,  0, 0,  8, 0, 0),
(@Worgen, @Female, 6,  0, 0,  9, 0, 0),
(@Worgen, @Female, 7,  0, 0, 10, 0, 0),
(@Worgen, @Female, 8,  0, 0, 11, 0, 0),
(@Worgen, @Female, 9,  0, 0, 12, 0, 0),
(@Worgen, @Female, 10, 0, 0, 13, 0, 0),
(@Worgen, @Female, 11, 0, 0,  2, 0, 0);
