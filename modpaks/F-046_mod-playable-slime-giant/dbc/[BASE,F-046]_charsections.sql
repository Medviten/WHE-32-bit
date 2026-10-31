-- charsections: 36 inserts, 0 updates, 0 deletes
-- The five retail slime colours (green, amber, mauve, red, gold). texture_1 is the skeleton/slime atlas (model texture
-- type 1, composited whole: the race is in the client's creatureSkinRaces), texture_2 the tiling goo (type 8). Both
-- genders use the one male body. The face, underwear, hair and facial hair rows are empty: the model has none, but
-- character creation expects the sections. Facial hair types 0 and 1 are the two drip styles (off, on).

-- New entries
DELETE FROM `charsections` WHERE `race` = @SlimeGiant;
SET @CharSectionsID = (SELECT COALESCE(MAX(id), 0) FROM `charsections`);
INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`) VALUES
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Skin,       'Character\\SlimeGiant\\Male\\SlimeGiantSkinGreen.blp', 'Character\\SlimeGiant\\Male\\SlimeGiantGooGreen.blp', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Skin,       'Character\\SlimeGiant\\Male\\SlimeGiantSkinAmber.blp', 'Character\\SlimeGiant\\Male\\SlimeGiantGooAmber.blp', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Underwear,  '', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Skin,       'Character\\SlimeGiant\\Male\\SlimeGiantSkinMauve.blp', 'Character\\SlimeGiant\\Male\\SlimeGiantGooMauve.blp', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Face,       '', '', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Underwear,  '', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Skin,       'Character\\SlimeGiant\\Male\\SlimeGiantSkinRed.blp', 'Character\\SlimeGiant\\Male\\SlimeGiantGooRed.blp', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Face,       '', '', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Underwear,  '', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Skin,       'Character\\SlimeGiant\\Male\\SlimeGiantSkinGold.blp', 'Character\\SlimeGiant\\Male\\SlimeGiantGooGold.blp', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Face,       '', '', '', 1, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Underwear,  '', '', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @FacialHair, '', '', '', 17, 1, 0),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Male,   @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Skin,       'Character\\SlimeGiant\\Male\\SlimeGiantSkinGreen.blp', 'Character\\SlimeGiant\\Male\\SlimeGiantGooGreen.blp', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Skin,       'Character\\SlimeGiant\\Male\\SlimeGiantSkinAmber.blp', 'Character\\SlimeGiant\\Male\\SlimeGiantGooAmber.blp', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Underwear,  '', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Skin,       'Character\\SlimeGiant\\Male\\SlimeGiantSkinMauve.blp', 'Character\\SlimeGiant\\Male\\SlimeGiantGooMauve.blp', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Face,       '', '', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Underwear,  '', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Skin,       'Character\\SlimeGiant\\Male\\SlimeGiantSkinRed.blp', 'Character\\SlimeGiant\\Male\\SlimeGiantGooRed.blp', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Face,       '', '', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Underwear,  '', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Skin,       'Character\\SlimeGiant\\Male\\SlimeGiantSkinGold.blp', 'Character\\SlimeGiant\\Male\\SlimeGiantGooGold.blp', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Face,       '', '', '', 1, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Underwear,  '', '', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @FacialHair, '', '', '', 17, 1, 0),
(@CharSectionsID := @CharSectionsID +1, @SlimeGiant, @Female, @Hair,       '', '', '', 17, 0, 0);
