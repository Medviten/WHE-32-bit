-- characterfacialhairstyles: 16 inserts, 0 updates, 0 deletes (from the Human rows (race 1), which the Retail client only reads at row 0)

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @AllianceDracthyr;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@AllianceDracthyr, @Male,    0, 1, 1, 1, 0, 0),
(@AllianceDracthyr, @Male,    1, 1, 2, 1, 0, 0),
(@AllianceDracthyr, @Male,    2, 1, 2, 1, 0, 0),
(@AllianceDracthyr, @Male,    3, 2, 1, 2, 0, 0),
(@AllianceDracthyr, @Male,    4, 2, 2, 2, 0, 0),
(@AllianceDracthyr, @Male,    5, 1, 2, 2, 0, 0),
(@AllianceDracthyr, @Male,    6, 2, 2, 1, 0, 0),
(@AllianceDracthyr, @Male,    7, 1, 2, 1, 0, 0),
(@AllianceDracthyr, @Male,    8, 1, 1, 1, 0, 0),
(@AllianceDracthyr, @Female,  0, 0, 0, 0, 0, 0),
(@AllianceDracthyr, @Female,  1, 0, 2, 0, 0, 0),
(@AllianceDracthyr, @Female,  2, 0, 3, 0, 0, 0),
(@AllianceDracthyr, @Female,  3, 0, 4, 0, 0, 0),
(@AllianceDracthyr, @Female,  4, 0, 5, 0, 0, 0),
(@AllianceDracthyr, @Female,  5, 0, 6, 0, 0, 0),
(@AllianceDracthyr, @Female,  6, 0, 7, 0, 0, 0);
