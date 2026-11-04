-- characterfacialhairstyles: 17 inserts, 0 updates, 0 deletes
-- The Alpha Worgen model's facial geosets

DELETE FROM `characterfacialhairstyles` WHERE `race` = @Worgen;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@Worgen, @Male, 0, 2, 0, 0, 0, 0),
(@Worgen, @Male, 1, 3, 0, 0, 0, 0),
(@Worgen, @Male, 2, 4, 0, 0, 0, 0),
(@Worgen, @Male, 3, 5, 0, 0, 0, 0),
(@Worgen, @Male, 4, 6, 0, 0, 0, 0),
(@Worgen, @Male, 5, 7, 0, 0, 0, 0),
(@Worgen, @Male, 6, 8, 0, 0, 0, 0),
(@Worgen, @Male, 7, 9, 0, 0, 0, 0),
(@Worgen, @Male, 8, 10, 0, 0, 0, 0),
(@Worgen, @Male, 9, 11, 0, 0, 0, 0),
(@Worgen, @Male, 10, 12, 0, 0, 0, 0),
(@Worgen, @Female, 0, 2, 0, 0, 0, 0),
(@Worgen, @Female, 1, 3, 0, 0, 0, 0),
(@Worgen, @Female, 2, 4, 0, 0, 0, 0),
(@Worgen, @Female, 3, 5, 0, 0, 0, 0),
(@Worgen, @Female, 4, 6, 0, 0, 0, 0),
(@Worgen, @Female, 5, 7, 0, 0, 0, 0);
