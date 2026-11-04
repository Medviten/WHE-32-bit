-- characterfacialhairstyles: 16 inserts, 0 updates, 0 deletes (from the Alpha-Worgen package's rows for race 1)

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @Cultist;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@Cultist, @Male,    0, 1, 1, 1, 0, 0),
(@Cultist, @Male,    1, 1, 2, 1, 0, 0),
(@Cultist, @Male,    2, 1, 2, 1, 0, 0),
(@Cultist, @Male,    3, 2, 1, 2, 0, 0),
(@Cultist, @Male,    4, 2, 2, 2, 0, 0),
(@Cultist, @Male,    5, 1, 2, 2, 0, 0),
(@Cultist, @Male,    6, 2, 2, 1, 0, 0),
(@Cultist, @Male,    7, 1, 2, 1, 0, 0),
(@Cultist, @Male,    8, 1, 1, 1, 0, 0),
(@Cultist, @Female,  0, 0, 0, 0, 0, 0),
(@Cultist, @Female,  1, 0, 2, 0, 0, 0),
(@Cultist, @Female,  2, 0, 3, 0, 0, 0),
(@Cultist, @Female,  3, 0, 4, 0, 0, 0),
(@Cultist, @Female,  4, 0, 5, 0, 0, 0),
(@Cultist, @Female,  5, 0, 6, 0, 0, 0),
(@Cultist, @Female,  6, 0, 7, 0, 0, 0);
