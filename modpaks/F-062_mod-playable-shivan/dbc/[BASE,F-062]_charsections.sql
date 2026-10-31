-- charsections: 34 inserts, 0 updates, 0 deletes
-- From the skin textures shipped with the model (WallCraft has no rows for it), flagged for character creation (17, faces 1); male-only race: the female slot gets the male rows

-- New entries
DELETE FROM `charsections` WHERE `race` = @Shivan;
SET @CharSectionsID = (SELECT COALESCE(MAX(id), 0) FROM `charsections`);
INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`) VALUES
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Skin,       'Character\\Shivan\\ShivanSkin.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Skin,       'Character\\Shivan\\ShivanSkin_Black.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Skin,       'Character\\Shivan\\ShivanSkin_Blue.blp', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Skin,       'Character\\Shivan\\ShivanSkin_Green.blp', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Skin,       'Character\\Shivan\\ShivanSkin_Red.blp', '', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Face,       '', '', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Face,       '', '', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Face,       '', '', '', 1, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Underwear,  '', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Underwear,  '', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Underwear,  '', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Male,  @Underwear,  '', '', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Skin,       'Character\\Shivan\\ShivanSkin.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Skin,       'Character\\Shivan\\ShivanSkin_Black.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Skin,       'Character\\Shivan\\ShivanSkin_Blue.blp', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Skin,       'Character\\Shivan\\ShivanSkin_Green.blp', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Skin,       'Character\\Shivan\\ShivanSkin_Red.blp', '', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Face,       '', '', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Face,       '', '', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Face,       '', '', '', 1, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Underwear,  '', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Underwear,  '', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Underwear,  '', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Shivan, @Female, @Underwear,  '', '', '', 17, 0, 4);
