-- charsections: 34 inserts, 0 updates, 0 deletes
-- From the stock NPC race rows (race 180 after F-008), flagged for character creation (17, faces 1); male-only race: the female slot gets the male rows

-- New entries
DELETE FROM `charsections` WHERE `race` = @NorthrendSkeleton;
SET @CharSectionsID = (SELECT COALESCE(MAX(id), 0) FROM `charsections`);
INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`) VALUES
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Skin,       'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_00.blp', 'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_00_Extra.blp', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Skin,       'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_01.blp', 'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_01_Extra.blp', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Skin,       'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_02.blp', 'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_02_Extra.blp', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Skin,       'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_03.blp', 'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_03_Extra.blp', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Face,       '', '', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Face,       '', '', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Hair,       'Character\\Vrykul\\Hair00_00.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Hair,       'Character\\Vrykul\\Hair00_01.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Hair,       'Character\\Vrykul\\Hair00_02.blp', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Hair,       'Character\\Vrykul\\Hair00_03.blp', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Underwear,  '', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Underwear,  '', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Male,  @Underwear,  '', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Skin,       'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_00.blp', 'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_00_Extra.blp', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Skin,       'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_01.blp', 'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_01_Extra.blp', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Skin,       'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_02.blp', 'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_02_Extra.blp', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Skin,       'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_03.blp', 'Character\\NorthrendSkeleton\\Male\\NorthrendSkeletonSkin00_03_Extra.blp', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Face,       '', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Face,       '', '', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Face,       '', '', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Face,       '', '', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Hair,       'Character\\Vrykul\\Hair00_00.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Hair,       'Character\\Vrykul\\Hair00_01.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Hair,       'Character\\Vrykul\\Hair00_02.blp', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Hair,       'Character\\Vrykul\\Hair00_03.blp', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Underwear,  '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Underwear,  '', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Underwear,  '', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @NorthrendSkeleton, @Female, @Underwear,  '', '', '', 17, 0, 3);
