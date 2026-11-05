-- charhairgeosets: 24 inserts, 0 updates, 0 deletes (from the Night Elf rows (race 4), which the Retail client only reads at row 0)

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @AllianceHaranir;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    0,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    1,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    2,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    3,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    4,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    5,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    6,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    7,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    8, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,    9, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,   10, 12, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Male,   11, 13, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  0,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  1,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  2,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  3,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  4,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  5,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  6,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  7,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  8, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female,  9, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female, 10, 12, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @AllianceHaranir, @Female, 11, 13, 0);
