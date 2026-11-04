-- charhairgeosets: 22 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @AllianceEarthen;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Male,    0,  0, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Male,    1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Male,    2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Male,    3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Male,    4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Male,    5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Male,    6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Male,    7,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Male,    8,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Male,    9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Male,   10, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Female,  0,  0, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Female,  1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Female,  2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Female,  3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Female,  4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Female,  5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Female,  6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Female,  7,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Female,  8,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Female,  9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceEarthen, @Female, 10, 11, 0);
