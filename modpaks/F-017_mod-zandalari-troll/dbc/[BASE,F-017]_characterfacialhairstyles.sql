-- characterfacialhairstyles: 29 inserts, 0 updates, 0 deletes

-- Insertions
DELETE FROM `characterfacialhairstyles` WHERE `race` = (@ZandalariTroll);
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@ZandalariTroll, @Male,   0, 0, 0, 0, 0, 0),
(@ZandalariTroll, @Male,   1, 2, 0, 0, 0, 0),
(@ZandalariTroll, @Male,   2, 3, 0, 0, 0, 0),
(@ZandalariTroll, @Male,   3, 4, 0, 0, 0, 0),
(@ZandalariTroll, @Male,   4, 5, 0, 0, 0, 0),
(@ZandalariTroll, @Male,   5, 6, 0, 0, 0, 0),
(@ZandalariTroll, @Male,   6, 7, 0, 0, 0, 0),
(@ZandalariTroll, @Male,   7, 8, 0, 0, 0, 0),
(@ZandalariTroll, @Female, 0, 0, 2, 0, 0, 0),
(@ZandalariTroll, @Female, 1, 1, 2, 0, 0, 0),
(@ZandalariTroll, @Female, 2, 2, 2, 0, 0, 0),
(@ZandalariTroll, @Female, 3, 3, 2, 0, 0, 0),
(@ZandalariTroll, @Female, 4, 4, 2, 0, 0, 0),
(@ZandalariTroll, @Female, 5, 5, 2, 0, 0, 0),
(@ZandalariTroll, @Female, 6, 6, 2, 0, 0, 0),
(@ZandalariTroll, @Female,  7, 0, 4, 0, 0, 0),
(@ZandalariTroll, @Female,  8, 1, 4, 0, 0, 0),
(@ZandalariTroll, @Female,  9, 2, 4, 0, 0, 0),
(@ZandalariTroll, @Female, 10, 3, 4, 0, 0, 0),
(@ZandalariTroll, @Female, 11, 4, 4, 0, 0, 0),
(@ZandalariTroll, @Female, 12, 5, 4, 0, 0, 0),
(@ZandalariTroll, @Female, 13, 6, 4, 0, 0, 0),
(@ZandalariTroll, @Female, 14, 0, 3, 0, 0, 0),
(@ZandalariTroll, @Female, 15, 1, 3, 0, 0, 0),
(@ZandalariTroll, @Female, 16, 2, 3, 0, 0, 0),
(@ZandalariTroll, @Female, 17, 3, 3, 0, 0, 0),
(@ZandalariTroll, @Female, 18, 4, 3, 0, 0, 0),
(@ZandalariTroll, @Female, 19, 5, 3, 0, 0, 0),
(@ZandalariTroll, @Female, 20, 6, 3, 0, 0, 0);
