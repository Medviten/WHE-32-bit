-- Race ID
SET @Shivan                           := @NextRace := @NextRace +1;
SET @ShivanMask                       = 1 << (@Shivan - 1);
SET @ShivanHelmetMask                 = 1 << @Shivan;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @ShivanMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @ShivanMask;
SET @BowHunters                           = @BowHunters      | @ShivanMask;
SET @ShivanLanguage                      = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @ShivanAlliance                      = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @ShivanKnowThyEnemy                  = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @ShivanHome = @Draenei; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @ShivanKin = @Draenei; -- voice, emotes and names are copied from this race
SET @ShivanFlags = @DraeneiFlags;
SET @ShivanExplorationSound = @DraeneiExplorationSound;
SET @ShivanCinematicSequence = @DraeneiCinematicSequence;
SET @ShivanBlood = 1;
SET @ShivanMaleModelPath = 'Character\\Shivan\\Shivan.mdx'; -- WallCraft model, converted to the 3.3.5 format
SET @ShivanFaction = 1239; -- vacant slot
SET @ShivanPlayer = 1240; -- vacant slot

-- Strings
SET @ShivanClientPrefix               = 'Dr'; -- helmet models of this prefix
SET @ShivanClientString               = 'Shivan';
SET @ShivanFacialHairCustomization1   = 'NORMAL';
SET @ShivanFacialHairCustomization2   = 'NORMAL';
SET @ShivanHairCustomization          = 'NORMAL';

-- Localization Strings
SET @ShivanenUS                       = 'Shivan';
SET @ShivankoKR                       = '';
SET @ShivanfrFR                       = '';
SET @ShivandeDE                       = '';
SET @ShivanzhCN                       = '';
SET @ShivanzhTW                       = '';
SET @ShivanesES                       = '';
SET @ShivanesMX                       = '';
SET @ShivanruRU                       = '';
SET @ShivanjaJP                       = '';
SET @ShivanptPT                       = '';
SET @ShivanitIT                       = '';
SET @ShivanUnk1                       = '';
SET @ShivanUnk2                       = '';
SET @ShivanUnk3                       = '';
SET @ShivanUnk4                       = '';

SET @ShivanFemaleenUS                 = '';
SET @ShivanFemalekoKR                 = '';
SET @ShivanFemalefrFR                 = '';
SET @ShivanFemaledeDE                 = '';
SET @ShivanFemalezhCN                 = '';
SET @ShivanFemalezhTW                 = '';
SET @ShivanFemaleesES                 = '';
SET @ShivanFemaleesMX                 = '';
SET @ShivanFemaleruRU                 = '';
SET @ShivanFemalejaJP                 = '';
SET @ShivanFemaleptPT                 = '';
SET @ShivanFemaleitIT                 = '';
SET @ShivanFemaleUnk1                 = '';
SET @ShivanFemaleUnk2                 = '';
SET @ShivanFemaleUnk3                 = '';
SET @ShivanFemaleUnk4                 = '';

SET @ShivanMaleenUS                   = '';
SET @ShivanMalekoKR                   = '';
SET @ShivanMalefrFR                   = '';
SET @ShivanMaledeDE                   = '';
SET @ShivanMalezhCN                   = '';
SET @ShivanMalezhTW                   = '';
SET @ShivanMaleesES                   = '';
SET @ShivanMaleesMX                   = '';
SET @ShivanMaleruRU                   = '';
SET @ShivanMalejaJP                   = '';
SET @ShivanMaleptPT                   = '';
SET @ShivanMaleitIT                   = '';
SET @ShivanMaleUnk1                   = '';
SET @ShivanMaleUnk2                   = '';
SET @ShivanMaleUnk3                   = '';
SET @ShivanMaleUnk4                   = '';

SET @ShivanRacialNameenUS             = 'Racial - Shivan';
SET @ShivanRacialNamekoKR             = '';
SET @ShivanRacialNamefrFR             = '';
SET @ShivanRacialNamedeDE             = '';
SET @ShivanRacialNamezhCN             = '';
SET @ShivanRacialNamezhTW             = '';
SET @ShivanRacialNameesES             = '';
SET @ShivanRacialNameesMX             = '';
SET @ShivanRacialNameruRU             = '';
SET @ShivanRacialNamejaJP             = '';
SET @ShivanRacialNameptPT             = '';
SET @ShivanRacialNameitIT             = '';
SET @ShivanRacialNameUnk1             = '';
SET @ShivanRacialNameUnk2             = '';
SET @ShivanRacialNameUnk3             = '';
SET @ShivanRacialNameUnk4             = '';

SET @ShivanPlayerenUS                 = '"PLAYER", Shivan';
SET @ShivanPlayerkoKR                 = '';
SET @ShivanPlayerfrFR                 = '';
SET @ShivanPlayerdeDE                 = '';
SET @ShivanPlayerzhCN                 = '';
SET @ShivanPlayerzhTW                 = '';
SET @ShivanPlayeresES                 = '';
SET @ShivanPlayeresMX                 = '';
SET @ShivanPlayerruRU                 = '';
SET @ShivanPlayerjaJP                 = '';
SET @ShivanPlayerptPT                 = '';
SET @ShivanPlayeritIT                 = '';
SET @ShivanPlayerUnk1                 = '';
SET @ShivanPlayerUnk2                 = '';
SET @ShivanPlayerUnk3                 = '';
SET @ShivanPlayerUnk4                 = '';

-- Placeholder name and description
SET @ShivanFactionNameenUS            = 'Shivarra Penitents';
SET @ShivanFactionNamekoKR            = '';
SET @ShivanFactionNamefrFR            = '';
SET @ShivanFactionNamedeDE            = '';
SET @ShivanFactionNamezhCN            = '';
SET @ShivanFactionNamezhTW            = '';
SET @ShivanFactionNameesES            = '';
SET @ShivanFactionNameesMX            = '';
SET @ShivanFactionNameruRU            = '';
SET @ShivanFactionNamejaJP            = '';
SET @ShivanFactionNameptPT            = '';
SET @ShivanFactionNameitIT            = '';
SET @ShivanFactionNameUnk1            = '';
SET @ShivanFactionNameUnk2            = '';
SET @ShivanFactionNameUnk3            = '';
SET @ShivanFactionNameUnk4            = '';

SET @ShivanFactionDescriptionenUS     = 'Shivarra who turned from the Burning Legion and serve the Naaru.';
SET @ShivanFactionDescriptionkoKR     = '';
SET @ShivanFactionDescriptionfrFR     = '';
SET @ShivanFactionDescriptiondeDE     = '';
SET @ShivanFactionDescriptionzhCN     = '';
SET @ShivanFactionDescriptionzhTW     = '';
SET @ShivanFactionDescriptionesES     = '';
SET @ShivanFactionDescriptionesMX     = '';
SET @ShivanFactionDescriptionruRU     = '';
SET @ShivanFactionDescriptionjaJP     = '';
SET @ShivanFactionDescriptionptPT     = '';
SET @ShivanFactionDescriptionitIT     = '';
SET @ShivanFactionDescriptionUnk1     = '';
SET @ShivanFactionDescriptionUnk2     = '';
SET @ShivanFactionDescriptionUnk3     = '';
SET @ShivanFactionDescriptionUnk4     = '';

SET @ShivanAchievementenUS            = 'Realm First! Level 80 Shivan';
SET @ShivanAchievementkoKR            = '';
SET @ShivanAchievementfrFR            = '';
SET @ShivanAchievementdeDE            = '';
SET @ShivanAchievementzhCN            = '';
SET @ShivanAchievementzhTW            = '';
SET @ShivanAchievementesES            = '';
SET @ShivanAchievementesMX            = '';
SET @ShivanAchievementruRU            = '';
SET @ShivanAchievementjaJP            = '';
SET @ShivanAchievementptPT            = '';
SET @ShivanAchievementitIT            = '';
SET @ShivanAchievementUnk1            = '';
SET @ShivanAchievementUnk2            = '';
SET @ShivanAchievementUnk3            = '';
SET @ShivanAchievementUnk4            = '';

SET @ShivanAchievementDescriptionenUS = 'First Shivan on the realm to achieve level 80.';
SET @ShivanAchievementDescriptionkoKR = '';
SET @ShivanAchievementDescriptionfrFR = '';
SET @ShivanAchievementDescriptiondeDE = '';
SET @ShivanAchievementDescriptionzhCN = '';
SET @ShivanAchievementDescriptionzhTW = '';
SET @ShivanAchievementDescriptionesES = '';
SET @ShivanAchievementDescriptionesMX = '';
SET @ShivanAchievementDescriptionruRU = '';
SET @ShivanAchievementDescriptionjaJP = '';
SET @ShivanAchievementDescriptionptPT = '';
SET @ShivanAchievementDescriptionitIT = '';
SET @ShivanAchievementDescriptionUnk1 = '';
SET @ShivanAchievementDescriptionUnk2 = '';
SET @ShivanAchievementDescriptionUnk3 = '';
SET @ShivanAchievementDescriptionUnk4 = '';
