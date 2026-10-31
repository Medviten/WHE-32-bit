-- charhairgeosets: 24 inserts, 0 updates, 0 deletes (from Kalibro's races package (Kalibros_Races_20261012, race 19))

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @VoidElf;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Male,    0,  1, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Male,    1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Male,    2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Male,    3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Male,    4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Male,    5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Male,    6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Male,    7,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Male,    8,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Male,    9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Male,   10, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Male,   11, 12, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Male,   12, 13, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Female,  0,  0, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Female,  1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Female,  2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Female,  3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Female,  4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Female,  5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Female,  6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Female,  7,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Female,  8,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Female,  9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @VoidElf, @Female, 10, 11, 0);
