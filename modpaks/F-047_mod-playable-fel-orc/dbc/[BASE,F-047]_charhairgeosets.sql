-- charhairgeosets: 2 inserts, 0 updates, 0 deletes (from the stock NPC race rows (race 172 after F-008))

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @FelOrc;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @FelOrc, @Male,    0,  2, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @FelOrc, @Female,  0,  2, 0);
