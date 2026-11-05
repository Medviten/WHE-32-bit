-- charhairgeosets: 22 inserts, 0 updates, 0 deletes (from the Troll rows (race 8), which the Retail client only reads at row 0)

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @HordeHaranir;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    0,  0, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    0,  0, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    0,  0, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    7,  8, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    8,  9, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Male,    9, 10, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  0,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  1,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  2,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  3,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  4,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  5,  7, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  6,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  7,  9, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  8, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeHaranir, @Female,  9, 11, 1);
