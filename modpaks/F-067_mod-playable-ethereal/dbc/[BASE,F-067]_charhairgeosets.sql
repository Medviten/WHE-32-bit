-- charhairgeosets: 2 inserts, 0 updates, 0 deletes (from the skin colours (option 0) of CoA's appearance catalog EsteriaEthereal.bin)

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @Ethereal;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Ethereal, @Male,    0,  0, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Ethereal, @Female,  0,  0, 0);
