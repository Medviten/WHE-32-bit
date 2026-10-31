-- characterfacialhairstyles: 22 inserts, 0 updates, 0 deletes (from the stock NPC race rows (race 178 after F-008))

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @ForestTroll;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@ForestTroll, @Male,    0, 0, 2, 0, 0, 0),
(@ForestTroll, @Male,    1, 0, 3, 0, 0, 0),
(@ForestTroll, @Male,    2, 0, 4, 0, 0, 0),
(@ForestTroll, @Male,    3, 0, 5, 0, 0, 0),
(@ForestTroll, @Male,    4, 0, 6, 0, 0, 0),
(@ForestTroll, @Male,    5, 0, 2, 0, 0, 0),
(@ForestTroll, @Male,    6, 0, 3, 0, 0, 0),
(@ForestTroll, @Male,    7, 0, 4, 0, 0, 0),
(@ForestTroll, @Male,    8, 0, 5, 0, 0, 0),
(@ForestTroll, @Male,    9, 0, 6, 0, 0, 0),
(@ForestTroll, @Male,   10, 0, 4, 0, 0, 0),
(@ForestTroll, @Female,  0, 0, 2, 0, 0, 0),
(@ForestTroll, @Female,  1, 0, 3, 0, 0, 0),
(@ForestTroll, @Female,  2, 0, 4, 0, 0, 0),
(@ForestTroll, @Female,  3, 0, 5, 0, 0, 0),
(@ForestTroll, @Female,  4, 0, 6, 0, 0, 0),
(@ForestTroll, @Female,  5, 0, 2, 0, 0, 0),
(@ForestTroll, @Female,  6, 0, 3, 0, 0, 0),
(@ForestTroll, @Female,  7, 0, 4, 0, 0, 0),
(@ForestTroll, @Female,  8, 0, 5, 0, 0, 0),
(@ForestTroll, @Female,  9, 0, 6, 0, 0, 0),
(@ForestTroll, @Female, 10, 0, 4, 0, 0, 0);
