-- characterfacialhairstyles: 10 inserts, 0 updates, 0 deletes (from the stock NPC race rows (race 181 after F-008))

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @IceTroll;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@IceTroll, @Male,    0, 0, 2, 0, 0, 0),
(@IceTroll, @Male,    1, 0, 3, 0, 0, 0),
(@IceTroll, @Male,    2, 0, 4, 0, 0, 0),
(@IceTroll, @Male,    3, 0, 5, 0, 0, 0),
(@IceTroll, @Male,    4, 0, 6, 0, 0, 0),
(@IceTroll, @Female,  0, 0, 2, 0, 0, 0),
(@IceTroll, @Female,  1, 0, 3, 0, 0, 0),
(@IceTroll, @Female,  2, 0, 4, 0, 0, 0),
(@IceTroll, @Female,  3, 0, 5, 0, 0, 0),
(@IceTroll, @Female,  4, 0, 6, 0, 0, 0);
