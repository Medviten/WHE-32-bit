-- charhairgeosets: 12 inserts, 0 updates, 0 deletes (from the stock NPC race rows (race 178 after F-008))

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @ForestTroll;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @ForestTroll, @Male,    0,  0, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @ForestTroll, @Male,    1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @ForestTroll, @Male,    2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @ForestTroll, @Male,    3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @ForestTroll, @Male,    4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @ForestTroll, @Male,    5,  6, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @ForestTroll, @Female,  0,  0, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @ForestTroll, @Female,  1,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @ForestTroll, @Female,  2,  3, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @ForestTroll, @Female,  3,  4, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @ForestTroll, @Female,  4,  5, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @ForestTroll, @Female,  5,  6, 0);
