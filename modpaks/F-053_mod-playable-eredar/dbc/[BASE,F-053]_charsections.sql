-- charsections: 23 inserts, 0 updates, 0 deletes
-- From WallCraft's donor rows (race 29), flagged for character creation (17, faces 1)

-- New entries
DELETE FROM `charsections` WHERE `race` = @Eredar;
SET @CharSectionsID = (SELECT COALESCE(MAX(id), 0) FROM `charsections`);
INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`) VALUES
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @Skin,       'Character\\Eredar\\Male\\Eredar_SkinRed.blp', 'Character\\Eredar\\Male\\Eredar_AmorRed.blp', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @Skin,       'Character\\Eredar\\Male\\Eredar_SkinBlue.blp', 'Character\\Eredar\\Male\\Eredar_Amor.blp', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @Skin,       'Character\\Eredar\\Male\\Eredar_SkinGreen.blp', 'Character\\Eredar\\Male\\Eredar_AmorBrown.blp', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @Skin,       'Character\\Eredar\\Male\\Eredar_SkinPurple.blp', 'Character\\Eredar\\Male\\Eredar_AmorPurple.blp', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @Face,       '', '', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @Face,       '', '', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @Underwear,  '', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @Underwear,  '', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Male,  @Underwear,  '', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Female, @Skin,       'Character\\Eredar\\Female\\EradarFemaleSkinRed1.blp', 'Character\\Eredar\\Female\\EradarFemaleHairRed2.blp', 'Character\\Eredar\\Female\\EradarFemaleArmorRed3.blp', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Female, @Skin,       'Character\\Eredar\\Female\\EradarFemaleSkinBlack1.blp', 'Character\\Eredar\\Female\\EradarFemaleHairBlack2.blp', 'Character\\Eredar\\Female\\EradarFemaleArmorBlack3.blp', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Female, @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Female, @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Female, @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Female, @Hair,       'Character\\Eredar\\Female\\EradarFemaleHairRed2.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Female, @Hair,       'Character\\Eredar\\Female\\EradarFemaleHairBlack2.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Female, @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Eredar, @Female, @Underwear,  '', '', '', 17, 0, 1);
