-- charsections: 37 inserts, 0 updates, 0 deletes
-- From the skin textures shipped with the model (WallCraft has no rows for it), flagged for character creation (17, faces 1)

-- New entries
DELETE FROM `charsections` WHERE `race` = @Satyr;
SET @CharSectionsID = (SELECT COALESCE(MAX(id), 0) FROM `charsections`);
INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`) VALUES
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Skin,       'Character\\Satyr\\Male\\SatyrSkinGreen.blp', 'Character\\Satyr\\Male\\SatyrSkinGreenAlpha.blp', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Skin,       'Character\\Satyr\\Male\\SatyrSkinAlbino.blp', 'Character\\Satyr\\Male\\SatyrSkinAlbinoAlpha.blp', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Skin,       'Character\\Satyr\\Male\\SatyrSkinBlue.blp', 'Character\\Satyr\\Male\\SatyrSkinBlueAlpha.blp', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Skin,       'Character\\Satyr\\Male\\SatyrSkinCrimson.blp', 'Character\\Satyr\\Male\\SatyrSkinCrimsonAlpha.blp', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Skin,       'Character\\Satyr\\Male\\SatyrSkinPink.blp', 'Character\\Satyr\\Male\\SatyrSkinPinkAlpha.blp', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Skin,       'Character\\Satyr\\Male\\SatyrSkinRed.blp', 'Character\\Satyr\\Male\\SatyrSkinRedAlpha.blp', '', 17, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Skin,       'Character\\Satyr\\Male\\SatyrSkinTurquoise.blp', 'Character\\Satyr\\Male\\SatyrSkinTurquoiseAlpha.blp', '', 17, 0, 6),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Skin,       'Character\\Satyr\\Male\\SatyrSkinViolet.blp', 'Character\\Satyr\\Male\\SatyrSkinVioletAlpha.blp', '', 17, 0, 7),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Skin,       'Character\\Satyr\\Male\\SatyrSkinYellow.blp', 'Character\\Satyr\\Male\\SatyrSkinYellowAlpha.blp', '', 17, 0, 8),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Face,       '', '', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Face,       '', '', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Face,       '', '', '', 1, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Face,       '', '', '', 1, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Face,       '', '', '', 1, 0, 6),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Face,       '', '', '', 1, 0, 7),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Face,       '', '', '', 1, 0, 8),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Underwear,  '', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Underwear,  '', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Underwear,  '', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Underwear,  '', '', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Underwear,  '', '', '', 17, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Underwear,  '', '', '', 17, 0, 6),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Underwear,  '', '', '', 17, 0, 7),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Male,  @Underwear,  '', '', '', 17, 0, 8),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Female, @Skin,       'Character\\Satyr\\Female\\CrystalSatyrPurple.blp', 'Character\\Satyr\\Female\\CrystalSatyrglow.blp', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Female, @Skin,       'Character\\Satyr\\Female\\CrystalSatyrWhite.blp', 'Character\\Satyr\\Female\\CrystalSatyrglow.blp', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Female, @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Female, @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Female, @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Female, @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Female, @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Satyr, @Female, @Underwear,  '', '', '', 17, 0, 1);
