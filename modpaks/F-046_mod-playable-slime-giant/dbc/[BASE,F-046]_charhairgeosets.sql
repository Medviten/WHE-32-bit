-- charhairgeosets: 2 inserts, 0 updates, 0 deletes (no hair: one bald style, no scalp)

-- New entries
DELETE FROM `charhairgeosets` WHERE `race` = @SlimeGiant;
SET @CharHairGeosetsID = (SELECT COALESCE(MAX(id), 0) FROM `charhairgeosets`);
INSERT INTO `charhairgeosets` (`id`, `race`, `gender`, `variation`, `geoset`, `show_scalp`) VALUES
(@CharHairGeosetsID := @CharHairGeosetsID +1, @SlimeGiant, @Male,    0,  0, 0),
(@CharHairGeosetsID := @CharHairGeosetsID +1, @SlimeGiant, @Female,  0,  0, 0);
