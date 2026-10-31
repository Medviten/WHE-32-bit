-- characterfacialhairstyles: 18 inserts, 0 updates, 0 deletes (from the Orc rows (race 2), which the Retail client only reads at row 0)

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @HordeDracthyr;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@HordeDracthyr, @Male,    0, 0, 0, 0, 0, 0),
(@HordeDracthyr, @Male,    1, 0, 0, 0, 0, 0),
(@HordeDracthyr, @Male,    2, 2, 0, 0, 0, 0),
(@HordeDracthyr, @Male,    3, 3, 0, 0, 0, 0),
(@HordeDracthyr, @Male,    4, 4, 0, 0, 0, 0),
(@HordeDracthyr, @Male,    5, 5, 0, 0, 0, 0),
(@HordeDracthyr, @Male,    6, 6, 0, 0, 0, 0),
(@HordeDracthyr, @Male,    7, 7, 0, 0, 0, 0),
(@HordeDracthyr, @Male,    8, 8, 0, 0, 0, 0),
(@HordeDracthyr, @Male,    9, 9, 0, 0, 0, 0),
(@HordeDracthyr, @Male,   10, 10, 0, 0, 0, 0),
(@HordeDracthyr, @Female,  0, 0, 0, 0, 0, 0),
(@HordeDracthyr, @Female,  1, 0, 2, 0, 0, 0),
(@HordeDracthyr, @Female,  2, 0, 3, 0, 0, 0),
(@HordeDracthyr, @Female,  3, 0, 4, 0, 0, 0),
(@HordeDracthyr, @Female,  4, 0, 5, 0, 0, 0),
(@HordeDracthyr, @Female,  5, 0, 6, 0, 0, 0),
(@HordeDracthyr, @Female,  6, 0, 7, 0, 0, 0);
