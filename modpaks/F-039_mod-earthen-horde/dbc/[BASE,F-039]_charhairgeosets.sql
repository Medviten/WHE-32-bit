-- charhairgeosets: 22 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @HordeEarthen;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Male,    0,  0, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Male,    1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Male,    2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Male,    3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Male,    4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Male,    5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Male,    6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Male,    7,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Male,    8,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Male,    9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Male,   10, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Female,  0,  0, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Female,  1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Female,  2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Female,  3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Female,  4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Female,  5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Female,  6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Female,  7,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Female,  8,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Female,  9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeEarthen, @Female, 10, 11, 0);
