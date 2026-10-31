-- characterfacialhairstyles: 2 inserts, 0 updates, 0 deletes (from the skin textures shipped with the model (WallCraft has no rows for it))

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @Demon;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@Demon, @Male,    0, 0, 0, 0, 0, 0),
(@Demon, @Female,  0, 0, 0, 0, 0, 0);
