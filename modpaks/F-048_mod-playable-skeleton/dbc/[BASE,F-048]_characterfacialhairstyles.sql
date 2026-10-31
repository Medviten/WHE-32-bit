-- characterfacialhairstyles: 2 inserts, 0 updates, 0 deletes (from the stock NPC race rows (race 175 after F-008))

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @Skeleton;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@Skeleton, @Male,    0, 0, 0, 0, 0, 0),
(@Skeleton, @Female,  0, 0, 0, 0, 0, 0);
