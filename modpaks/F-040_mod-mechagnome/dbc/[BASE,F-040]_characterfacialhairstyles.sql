-- characterfacialhairstyles: 7 inserts, 0 updates, 0 deletes

-- New entries
-- geoset_2 = 1: group 3 holds the mechanical arms on these models (301, arm upgrade 0), with no flesh arms to fall back on
DELETE FROM `characterfacialhairstyles` WHERE `race` = @Mechagnome;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@Mechagnome, @Male,    0,  0,  1,  0,  0,  0),
(@Mechagnome, @Male,    1,  2,  1,  0,  0,  0),
(@Mechagnome, @Male,    2,  3,  1,  0,  0,  0),
(@Mechagnome, @Male,    3,  4,  1,  0,  0,  0),
(@Mechagnome, @Male,    4,  5,  1,  0,  0,  0),
(@Mechagnome, @Male,    5,  6,  1,  0,  0,  0),
(@Mechagnome, @Female,  0,  0,  1,  0,  0,  0);
