-- charhairgeosets: 15 inserts, 0 updates, 0 deletes (from Kalibro's races package (Kalibros_Races_20261012, race 21))

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @LightforgedDraenei;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Male,    0,  0, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Male,    1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Male,    2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Male,    3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Male,    4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Male,    5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Male,    6,  0, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Female,  0,  0, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Female,  1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Female,  2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Female,  3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Female,  4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Female,  5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Female,  6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @LightforgedDraenei, @Female,  7,  8, 0);
