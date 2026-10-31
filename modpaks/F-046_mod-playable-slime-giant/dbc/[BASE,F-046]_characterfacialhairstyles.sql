-- characterfacialhairstyles: 4 inserts, 0 updates, 0 deletes
-- The facial hair option is the slime drip (FACIAL_HAIR_DRIP): style 0 shows geoset 101 (none, no drip), style 1
-- geoset 102 (the drip submesh)

-- New entries
DELETE FROM `characterfacialhairstyles` WHERE `race` = @SlimeGiant;
INSERT INTO `characterfacialhairstyles` (`race`, `gender`, `variation_id`, `geoset_1`, `geoset_2`, `geoset_3`, `geoset_4`, `geoset_5`) VALUES
(@SlimeGiant, @Male,    0,  1,  0,  0,  0,  0),
(@SlimeGiant, @Male,    1,  2,  0,  0,  0,  0),
(@SlimeGiant, @Female,  0,  1,  0,  0,  0,  0),
(@SlimeGiant, @Female,  1,  2,  0,  0,  0,  0);
