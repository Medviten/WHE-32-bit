-- charhairgeosets: 2 inserts, 0 updates, 0 deletes (from WallCraft's donor rows (race 30))

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @Arakkoa;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Arakkoa, @Male,    0,  0, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Arakkoa, @Female,  0,  0, 0);
