-- characterfacialhairstyles: 10 inserts, 0 updates, 0 deletes (from the stock NPC race rows (race 180 after F-008))

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @NorthrendSkeleton;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@NorthrendSkeleton, @Male,    0, 0, 0, 0, 0, 0),
(@NorthrendSkeleton, @Male,    1, 1, 0, 0, 0, 0),
(@NorthrendSkeleton, @Male,    2, 2, 0, 0, 0, 0),
(@NorthrendSkeleton, @Male,    3, 3, 0, 0, 0, 0),
(@NorthrendSkeleton, @Male,    4, 4, 0, 0, 0, 0),
(@NorthrendSkeleton, @Female,  0, 0, 0, 0, 0, 0),
(@NorthrendSkeleton, @Female,  1, 1, 0, 0, 0, 0),
(@NorthrendSkeleton, @Female,  2, 2, 0, 0, 0, 0),
(@NorthrendSkeleton, @Female,  3, 3, 0, 0, 0, 0),
(@NorthrendSkeleton, @Female,  4, 4, 0, 0, 0, 0);
