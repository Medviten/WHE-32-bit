-- charhairgeosets: 2 inserts, 0 updates, 0 deletes (from the skin textures shipped with the model (WallCraft has no rows for it))

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @Gnoll;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gnoll, @Male,    0,  0, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @Gnoll, @Female,  0,  0, 0);
