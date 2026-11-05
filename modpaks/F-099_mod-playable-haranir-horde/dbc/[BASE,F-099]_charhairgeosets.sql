-- charhairgeosets: 36 inserts, 0 updates, 0 deletes
-- Bald, then the model's styles (haranir_native_prep.py moves 4002-4018 to group 0)

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @HordeHaranir;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    0,  0, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    7,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    8,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,   10, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,   11, 12, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,   12, 13, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,   13, 14, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,   14, 15, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,   15, 16, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,   16, 17, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,   17, 18, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  0,  0, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  7,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  8,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female, 10, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female, 11, 12, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female, 12, 13, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female, 13, 14, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female, 14, 15, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female, 15, 16, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female, 16, 17, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female, 17, 18, 0);
