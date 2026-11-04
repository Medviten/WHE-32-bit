-- Gilnean race support

DELETE FROM `charhairgeosets` WHERE `race` = @Gilnean;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `dbc_db`.`charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Male,    0,  0, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Male,    1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Male,    2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Male,    3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Male,    4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Male,    5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Male,    6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Male,    7,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Male,    8,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Male,    9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Male,   10, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Male,   11, 12, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female,  0,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female,  1,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female,  2,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female,  3,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female,  4,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female,  5,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female,  6,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female,  7,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female,  8, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female,  9, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female, 10, 12, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female, 11, 13, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female, 12, 14, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female, 13, 15, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gilnean, @Female, 14, 16, 0);
