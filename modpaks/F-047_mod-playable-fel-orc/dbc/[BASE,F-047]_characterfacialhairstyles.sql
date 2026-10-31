-- characterfacialhairstyles: 2 inserts, 0 updates, 0 deletes (from the stock NPC race rows (race 172 after F-008))

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @FelOrc;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@FelOrc, @Male,    0, 0, 0, 0, 0, 0),
(@FelOrc, @Female,  0, 0, 0, 0, 0, 0);
