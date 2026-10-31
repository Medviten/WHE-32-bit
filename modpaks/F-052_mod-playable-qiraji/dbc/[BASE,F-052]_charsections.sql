-- charsections: 15 inserts, 0 updates, 0 deletes
-- From WallCraft's donor rows (race 26), flagged for character creation (17, faces 1)

-- New entries
DELETE FROM `charsections` WHERE `race` = @Qiraji;
SET @CharSectionsID = (SELECT COALESCE(MAX(id), 0) FROM `charsections`);
INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`) VALUES
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Male,  @Skin,       'Character\\Qiraji\\Male\\QirajiMale02.blp', 'Character\\Qiraji\\Male\\QirajiMale01.blp', 'Character\\Qiraji\\Male\\QirajiMaleEye.blp', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Male,  @Skin,       'Character\\Qiraji\\Male\\QirajiMale01Dark.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Male,  @Face,       'Character\\Qiraji\\Male\\QirajiMale01.blp', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Male,  @Face,       'Character\\Qiraji\\Male\\QirajiMale02Dark.blp', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Male,  @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Male,  @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Male,  @Underwear,  'Character\\Qiraji\\Male\\QirajiMaleEye.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Male,  @Underwear,  'Character\\Qiraji\\Male\\QirajiMaleEye.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Female, @Skin,       'Character\\Qiraji\\Female\\QirajiFemale02.blp', 'Character\\Qiraji\\Female\\QirajiFemale01.blp', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Female, @Skin,       'Character\\Qiraji\\Female\\QirajiFemale01Dark.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Female, @Face,       'Character\\Qiraji\\Female\\QirajiFemale02.blp', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Female, @Face,       'Character\\Qiraji\\Female\\QirajiFemale02Dark.blp', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Female, @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Female, @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Qiraji, @Female, @Underwear,  'Character\\Qiraji\\Female\\QirajiFemaleEye.blp', '', '', 17, 0, 0);
