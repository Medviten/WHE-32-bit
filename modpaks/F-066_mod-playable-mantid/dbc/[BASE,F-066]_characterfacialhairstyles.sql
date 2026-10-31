-- characterfacialhairstyles: 2 inserts, 0 updates, 0 deletes (from the skin colours (option 0) of CoA's appearance catalog EsteriaMantid.bin)

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @Mantid;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@Mantid, @Male,    0, 0, 0, 0, 0, 0),
(@Mantid, @Female,  0, 0, 0, 0, 0, 0);
