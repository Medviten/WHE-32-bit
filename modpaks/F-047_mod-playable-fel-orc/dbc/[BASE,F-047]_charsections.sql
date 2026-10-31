-- charsections: 16 inserts, 0 updates, 0 deletes
-- From the stock NPC race rows (race 172 after F-008), flagged for character creation (17, faces 1)

-- New entries
DELETE FROM `charsections` WHERE `race` = @FelOrc;
SET @CharSectionsID = (SELECT COALESCE(MAX(id), 0) FROM `charsections`);
INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`) VALUES
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Male,  @Skin,       'Character\\FelOrc\\Male\\FelOrcMaleSkin00_00.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Male,  @Skin,       'Character\\FelOrc\\Male\\FelOrcMaleSkin00_01.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Male,  @Skin,       'Character\\FelOrc\\Male\\FelOrcMaleSkin00_02.blp', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Male,  @Face,       'Character\\FelOrc\\Male\\FelOrcMaleFaceLower00_00.blp', 'Character\\FelOrc\\Male\\FelOrcMaleFaceUpper00_00.blp', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Male,  @Face,       'Character\\FelOrc\\Male\\FelOrcMaleFaceLower00_01.blp', 'Character\\FelOrc\\Male\\FelOrcMaleFaceUpper00_01.blp', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Male,  @Face,       'Character\\FelOrc\\Male\\FelOrcMaleFaceLower00_02.blp', 'Character\\FelOrc\\Male\\FelOrcMaleFaceUpper00_02.blp', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Male,  @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Male,  @Hair,       'Character\\FelOrc\\Hair00_00.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Male,  @Underwear,  'Character\\FelOrc\\Male\\FelOrcMaleNakedPelvisSkin00_00.blp', 'Character\\FelOrc\\Male\\FelOrcMaleNakedTorsoSkin00_00.blp', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Male,  @Underwear,  'Character\\FelOrc\\Male\\FelOrcMaleNakedPelvisSkin00_01.blp', 'Character\\FelOrc\\Male\\FelOrcMaleNakedTorsoSkin00_01.blp', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Male,  @Underwear,  'Character\\FelOrc\\Male\\FelOrcMaleNakedPelvisSkin00_02.blp', 'Character\\FelOrc\\Male\\FelOrcMaleNakedTorsoSkin00_02.blp', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Female, @Skin,       'Character\\FelOrc\\Female\\FelOrcFemaleSkin00_00.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Female, @Face,       'Character\\FelOrc\\Female\\FelOrcFemaleFaceLower00_00.blp', 'Character\\FelOrc\\Female\\FelOrcFemaleFaceUpper00_00.blp', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Female, @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Female, @Hair,       'Character\\FelOrc\\Hair00_01.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @FelOrc, @Female, @Underwear,  'Character\\FelOrc\\Female\\FelOrcFemaleNakedPelvisSkin00_00.blp', 'Character\\FelOrc\\Female\\FelOrcFemaleNakedTorsoSkin00_00.blp', '', 17, 0, 0);
