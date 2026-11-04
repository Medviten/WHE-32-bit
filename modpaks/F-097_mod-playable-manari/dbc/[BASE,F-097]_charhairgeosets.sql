-- charhairgeosets: 30 inserts, 0 updates, 0 deletes (from the Alpha-Worgen package's rows for race 11)

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @Manari;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,    0,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,    1,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,    2,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,    3,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,    4,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,    5,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,    6,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,    7,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,    8,  0, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,    9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,   10, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,   11, 12, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,   12, 13, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Male,   13, 14, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female,  0,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female,  1,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female,  2,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female,  3,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female,  4,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female,  5,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female,  6,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female,  7,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female,  8, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female,  9, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female, 10, 12, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female, 11, 13, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female, 12, 14, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female, 13, 15, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female, 14, 16, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Manari, @Female, 15, 17, 0);
