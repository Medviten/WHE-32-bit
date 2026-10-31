-- charhairgeosets: 2 inserts, 0 updates, 0 deletes (from the skin colours (option 0) of Aetheria's appearance catalog EsteriaKyrian.bin)

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @Kyrian;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Kyrian, @Male,    0,  0, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Kyrian, @Female,  0,  0, 0);
