-- charhairgeosets: 36 inserts, 0 updates, 0 deletes
-- Bald, then the model's styles (haranir_native_prep.py moves 4002-4018 to group 0)

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @AllianceHaranir;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    0,  0, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    7,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    8,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,   10, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,   11, 12, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,   12, 13, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,   13, 14, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,   14, 15, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,   15, 16, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,   16, 17, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,   17, 18, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  0,  0, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  7,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  8,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female, 10, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female, 11, 12, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female, 12, 13, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female, 13, 14, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female, 14, 15, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female, 15, 16, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female, 16, 17, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female, 17, 18, 0);
