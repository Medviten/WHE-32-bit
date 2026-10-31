-- charsections: 28 inserts, 0 updates, 0 deletes
-- From the skin textures shipped with the model (WallCraft has no rows for it), flagged for character creation (17, faces 1)

-- New entries
DELETE FROM `charsections` WHERE `race` = @FelElf;
SET @CharSectionsID = (SELECT COALESCE(MAX(id), 0) FROM `charsections`);
INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`) VALUES
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @Skin,       'Character\\FelElf\\Male\\FelElfWarriorMaleSkinPurple.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @Skin,       'Character\\FelElf\\Male\\FelElfWarriorMaleSkinRed.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @Skin,       'Character\\FelElf\\Male\\FelElfWarriorMaleSkinWhite.blp', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @Skin,       'Character\\FelElf\\Male\\FelElfMaleSkin00_00.blp', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @Face,       '', '', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @Face,       '', '', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @Underwear,  '', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @Underwear,  '', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Male,  @Underwear,  '', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @Skin,       'Character\\FelElf\\Female\\FelElfCasterFemaleSkinViolet.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @Skin,       'Character\\FelElf\\Female\\FelElfCasterFemaleSkinBlack.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @Skin,       'Character\\FelElf\\Female\\FelElfCasterFemaleSkinLightBlue.blp', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @Skin,       'Character\\FelElf\\Female\\FelElfFemaleSkin00_00.blp', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @Face,       '', '', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @Face,       '', '', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @Underwear,  '', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @Underwear,  '', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @FelElf, @Female, @Underwear,  '', '', '', 17, 0, 3);
