-- charhairgeosets: 25 inserts, 0 updates, 0 deletes (from the Orc rows (race 2), which the Retail client only reads at row 0)

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @HordeDracthyr;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Male,    0,  0, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Male,    1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Male,    2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Male,    3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Male,    4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Male,    5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Male,    6,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Male,    7,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Male,    8,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Male,    9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Male,   10, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Male,   11, 12, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Female,  0,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Female,  1,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Female,  2,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Female,  3,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Female,  4,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Female,  5,  7, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Female,  6,  8, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Female,  7,  0, 1),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Female,  8,  9, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Female,  9, 10, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Female, 10, 11, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Female, 11, 12, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @HordeDracthyr, @Female, 12, 13, 0);
