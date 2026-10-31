-- charsections: 10 inserts, 0 updates, 0 deletes
-- From the skin textures shipped with the model (WallCraft has no rows for it), flagged for character creation (17, faces 1); male-only race: the female slot gets the male rows

-- New entries
DELETE FROM `charsections` WHERE `race` = @Demon;
SET @CharSectionsID = (SELECT COALESCE(MAX(id), 0) FROM `charsections`);
INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`) VALUES
(@CharSectionsID := @CharSectionsID +1, @Demon, @Male,  @Skin,       'Creature\\DemonForm\\WarlockDemonForm1.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Demon, @Male,  @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Demon, @Male,  @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Demon, @Male,  @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Demon, @Male,  @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Demon, @Female, @Skin,       'Creature\\DemonForm\\WarlockDemonForm1.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Demon, @Female, @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Demon, @Female, @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Demon, @Female, @Hair,       '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Demon, @Female, @Underwear,  '', '', '', 17, 0, 0);
