-- charsections: 37 inserts, 0 updates, 0 deletes
-- From the skin textures shipped with the model (WallCraft has no rows for it), flagged for character creation (17, faces 1)

-- New entries
DELETE FROM `charsections` WHERE `race` = @Gnoll;
SET @CharSectionsID = (SELECT COALESCE(MAX(id), 0) FROM `charsections`);
INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`) VALUES
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Skin,       'Character\\Gnoll\\Male\\Gnollskin.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Skin,       'Character\\Gnoll\\Male\\GnollskinBlue.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Skin,       'Character\\Gnoll\\Male\\GnollskinGrey.blp', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Skin,       'Character\\Gnoll\\Male\\GnollskinMagenta.blp', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Skin,       'Character\\Gnoll\\Male\\GnollskinOrange.blp', '', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Skin,       'Character\\Gnoll\\Male\\GnollskinRed.blp', '', '', 17, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Face,       '', '', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Face,       '', '', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Face,       '', '', '', 1, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Face,       '', '', '', 1, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Underwear,  '', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Underwear,  '', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Underwear,  '', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Underwear,  '', '', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Male,  @Underwear,  '', '', '', 17, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Skin,       'Character\\Gnoll\\Female\\RiverPawGnollWhelpSkin.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Skin,       'Character\\Gnoll\\Female\\MossHideGnollWhelpSkin.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Skin,       'Character\\Gnoll\\Female\\RedRidgeGnollWhelpSkin.blp', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Skin,       'Character\\Gnoll\\Female\\RothideGnollWhelpSkin.blp', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Skin,       'Character\\Gnoll\\Female\\ShadowHideGnollWhelpSkin.blp', '', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Face,       '', '', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Face,       '', '', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Face,       '', '', '', 1, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Underwear,  '', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Underwear,  '', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Underwear,  '', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Gnoll, @Female, @Underwear,  '', '', '', 17, 0, 4);
