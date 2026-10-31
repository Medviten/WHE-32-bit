-- charsections: 25 inserts, 0 updates, 0 deletes
-- From the stock NPC race rows (race 175 after F-008), flagged for character creation (17, faces 1)

-- New entries
DELETE FROM `charsections` WHERE `race` = @Skeleton;
SET @CharSectionsID = (SELECT COALESCE(MAX(id), 0) FROM `charsections`);
INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`) VALUES
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Skin,       'Character\\Skeleton\\Male\\SkeletonMaleSkin00_00.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Skin,       'Character\\Skeleton\\Male\\SkeletonMaleSkin00_01.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Skin,       'Character\\Skeleton\\Male\\SkeletonMaleSkin00_02.blp', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Skin,       'Character\\Skeleton\\Male\\SkeletonMaleSkin00_03.blp', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Skin,       'Character\\Skeleton\\Male\\SkeletonMaleSkin00_04.blp', '', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Skin,       'Character\\Skeleton\\Male\\SkeletonMaleSkin00_05.blp', '', '', 17, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Face,       'Character\\Skeleton\\Male\\SkeletonMaleFaceLower00_00.blp', 'Character\\Skeleton\\Male\\SkeletonMaleFaceUpper00_00.blp', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Face,       'Character\\Skeleton\\Male\\SkeletonMaleFaceLower00_01.blp', 'Character\\Skeleton\\Male\\SkeletonMaleFaceUpper00_01.blp', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Face,       'Character\\Skeleton\\Male\\SkeletonMaleFaceLower00_02.blp', 'Character\\Skeleton\\Male\\SkeletonMaleFaceUpper00_02.blp', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Face,       'Character\\Skeleton\\Male\\SkeletonMaleFaceLower00_03.blp', 'Character\\Skeleton\\Male\\SkeletonMaleFaceUpper00_03.blp', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Face,       'Character\\Skeleton\\Male\\SkeletonMaleFaceLower00_04.blp', 'Character\\Skeleton\\Male\\SkeletonMaleFaceUpper00_04.blp', '', 1, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Face,       'Character\\Skeleton\\Male\\SkeletonMaleFaceLower00_05.blp', 'Character\\Skeleton\\Male\\SkeletonMaleFaceUpper00_05.blp', '', 1, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Hair,       'Character\\Skeleton\\Hair00_00.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Underwear,  'Character\\Skeleton\\Male\\SkeletonMaleSkin00_00.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Underwear,  'Character\\Skeleton\\Male\\SkeletonMaleSkin00_01.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Underwear,  'Character\\Skeleton\\Male\\SkeletonMaleSkin00_02.blp', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Underwear,  'Character\\Skeleton\\Male\\SkeletonMaleSkin00_03.blp', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Underwear,  'Character\\Skeleton\\Male\\SkeletonMaleSkin00_04.blp', '', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Male,  @Underwear,  'Character\\Skeleton\\Male\\SkeletonMaleSkin00_05.blp', '', '', 17, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Female, @Skin,       'Character\\Skeleton\\Female\\SkeletonFemaleSkin00_00.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Female, @Face,       'Character\\Skeleton\\Female\\SkeletonFemaleFaceLower00_00.blp', '', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Female, @FacialHair, '', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Female, @Hair,       'Character\\Skeleton\\Hair00_00.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @Skeleton, @Female, @Underwear,  'Character\\Skeleton\\Female\\SkeletonFemaleSkin00_00.blp', '', '', 17, 0, 0);
