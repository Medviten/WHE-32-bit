-- characterfacialhairstyles: 2 inserts, 0 updates, 0 deletes (from WallCraft's donor rows (race 29))

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @Eredar;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@Eredar, @Male,    0, 0, 0, 0, 0, 0),
(@Eredar, @Female,  0, 0, 0, 0, 0, 0);
