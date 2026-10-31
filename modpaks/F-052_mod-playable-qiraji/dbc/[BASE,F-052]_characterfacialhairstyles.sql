-- characterfacialhairstyles: 2 inserts, 0 updates, 0 deletes (from WallCraft's donor rows (race 26))

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @Qiraji;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@Qiraji, @Male,    0, 0, 0, 0, 0, 0),
(@Qiraji, @Female,  0, 0, 0, 0, 0, 0);
