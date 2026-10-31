-- characterfacialhairstyles: 2 inserts, 0 updates, 0 deletes (from the skin colours (option 0) of Aetheria's appearance catalog EsteriaKyrian.bin)

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @Kyrian;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@Kyrian, @Male,    0, 0, 0, 0, 0, 0),
(@Kyrian, @Female,  0, 0, 0, 0, 0, 0);
