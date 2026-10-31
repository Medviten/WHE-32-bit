-- Race ID
SET @NorthrendSkeleton                           := @NextRace := @NextRace +1;
SET @NorthrendSkeletonMask                       = 1 << (@NorthrendSkeleton - 1);
SET @NorthrendSkeletonHelmetMask                 = 1 << @NorthrendSkeleton;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @NorthrendSkeletonMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @NorthrendSkeletonMask;
SET @BowHunters                           = @BowHunters        | @NorthrendSkeletonMask;
SET @NorthrendSkeletonLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @NorthrendSkeletonAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @NorthrendSkeletonKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @NorthrendSkeletonHome = @Undead; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @NorthrendSkeletonKin = @Undead; -- voice, emotes and names are copied from this race
SET @NorthrendSkeletonFlags = @UndeadFlags;
SET @NorthrendSkeletonExplorationSound = @UndeadExplorationSound;
SET @NorthrendSkeletonCinematicSequence = @UndeadCinematicSequence;
SET @NorthrendSkeletonBlood = 1;
SET @NorthrendSkeletonFaction = 1215; -- vacant slot
SET @NorthrendSkeletonPlayer = 1216; -- vacant slot

-- Strings
SET @NorthrendSkeletonClientPrefix               = 'Sc'; -- helmet models of this prefix
SET @NorthrendSkeletonClientString               = 'NorthrendSkeleton';
SET @NorthrendSkeletonFacialHairCustomization1   = 'Normal';
SET @NorthrendSkeletonFacialHairCustomization2   = 'Normal';
SET @NorthrendSkeletonHairCustomization          = 'Normal';

-- Localization Strings
SET @NorthrendSkeletonenUS                       = 'Northrend Skeleton';
SET @NorthrendSkeletonkoKR                       = '';
SET @NorthrendSkeletonfrFR                       = '';
SET @NorthrendSkeletondeDE                       = '';
SET @NorthrendSkeletonzhCN                       = '';
SET @NorthrendSkeletonzhTW                       = '';
SET @NorthrendSkeletonesES                       = '';
SET @NorthrendSkeletonesMX                       = '';
SET @NorthrendSkeletonruRU                       = '';
SET @NorthrendSkeletonjaJP                       = '';
SET @NorthrendSkeletonptPT                       = '';
SET @NorthrendSkeletonitIT                       = '';
SET @NorthrendSkeletonUnk1                       = '';
SET @NorthrendSkeletonUnk2                       = '';
SET @NorthrendSkeletonUnk3                       = '';
SET @NorthrendSkeletonUnk4                       = '';

SET @NorthrendSkeletonFemaleenUS                 = '';
SET @NorthrendSkeletonFemalekoKR                 = '';
SET @NorthrendSkeletonFemalefrFR                 = '';
SET @NorthrendSkeletonFemaledeDE                 = '';
SET @NorthrendSkeletonFemalezhCN                 = '';
SET @NorthrendSkeletonFemalezhTW                 = '';
SET @NorthrendSkeletonFemaleesES                 = '';
SET @NorthrendSkeletonFemaleesMX                 = '';
SET @NorthrendSkeletonFemaleruRU                 = '';
SET @NorthrendSkeletonFemalejaJP                 = '';
SET @NorthrendSkeletonFemaleptPT                 = '';
SET @NorthrendSkeletonFemaleitIT                 = '';
SET @NorthrendSkeletonFemaleUnk1                 = '';
SET @NorthrendSkeletonFemaleUnk2                 = '';
SET @NorthrendSkeletonFemaleUnk3                 = '';
SET @NorthrendSkeletonFemaleUnk4                 = '';

SET @NorthrendSkeletonMaleenUS                   = '';
SET @NorthrendSkeletonMalekoKR                   = '';
SET @NorthrendSkeletonMalefrFR                   = '';
SET @NorthrendSkeletonMaledeDE                   = '';
SET @NorthrendSkeletonMalezhCN                   = '';
SET @NorthrendSkeletonMalezhTW                   = '';
SET @NorthrendSkeletonMaleesES                   = '';
SET @NorthrendSkeletonMaleesMX                   = '';
SET @NorthrendSkeletonMaleruRU                   = '';
SET @NorthrendSkeletonMalejaJP                   = '';
SET @NorthrendSkeletonMaleptPT                   = '';
SET @NorthrendSkeletonMaleitIT                   = '';
SET @NorthrendSkeletonMaleUnk1                   = '';
SET @NorthrendSkeletonMaleUnk2                   = '';
SET @NorthrendSkeletonMaleUnk3                   = '';
SET @NorthrendSkeletonMaleUnk4                   = '';

SET @NorthrendSkeletonRacialNameenUS             = 'Racial - Northrend Skeleton';
SET @NorthrendSkeletonRacialNamekoKR             = '';
SET @NorthrendSkeletonRacialNamefrFR             = '';
SET @NorthrendSkeletonRacialNamedeDE             = '';
SET @NorthrendSkeletonRacialNamezhCN             = '';
SET @NorthrendSkeletonRacialNamezhTW             = '';
SET @NorthrendSkeletonRacialNameesES             = '';
SET @NorthrendSkeletonRacialNameesMX             = '';
SET @NorthrendSkeletonRacialNameruRU             = '';
SET @NorthrendSkeletonRacialNamejaJP             = '';
SET @NorthrendSkeletonRacialNameptPT             = '';
SET @NorthrendSkeletonRacialNameitIT             = '';
SET @NorthrendSkeletonRacialNameUnk1             = '';
SET @NorthrendSkeletonRacialNameUnk2             = '';
SET @NorthrendSkeletonRacialNameUnk3             = '';
SET @NorthrendSkeletonRacialNameUnk4             = '';

SET @NorthrendSkeletonPlayerenUS                 = '"PLAYER", Northrend Skeleton';
SET @NorthrendSkeletonPlayerkoKR                 = '';
SET @NorthrendSkeletonPlayerfrFR                 = '';
SET @NorthrendSkeletonPlayerdeDE                 = '';
SET @NorthrendSkeletonPlayerzhCN                 = '';
SET @NorthrendSkeletonPlayerzhTW                 = '';
SET @NorthrendSkeletonPlayeresES                 = '';
SET @NorthrendSkeletonPlayeresMX                 = '';
SET @NorthrendSkeletonPlayerruRU                 = '';
SET @NorthrendSkeletonPlayerjaJP                 = '';
SET @NorthrendSkeletonPlayerptPT                 = '';
SET @NorthrendSkeletonPlayeritIT                 = '';
SET @NorthrendSkeletonPlayerUnk1                 = '';
SET @NorthrendSkeletonPlayerUnk2                 = '';
SET @NorthrendSkeletonPlayerUnk3                 = '';
SET @NorthrendSkeletonPlayerUnk4                 = '';

-- Placeholder name and description
SET @NorthrendSkeletonFactionNameenUS            = 'Bonewalkers of Northrend';
SET @NorthrendSkeletonFactionNamekoKR            = '';
SET @NorthrendSkeletonFactionNamefrFR            = '';
SET @NorthrendSkeletonFactionNamedeDE            = '';
SET @NorthrendSkeletonFactionNamezhCN            = '';
SET @NorthrendSkeletonFactionNamezhTW            = '';
SET @NorthrendSkeletonFactionNameesES            = '';
SET @NorthrendSkeletonFactionNameesMX            = '';
SET @NorthrendSkeletonFactionNameruRU            = '';
SET @NorthrendSkeletonFactionNamejaJP            = '';
SET @NorthrendSkeletonFactionNameptPT            = '';
SET @NorthrendSkeletonFactionNameitIT            = '';
SET @NorthrendSkeletonFactionNameUnk1            = '';
SET @NorthrendSkeletonFactionNameUnk2            = '';
SET @NorthrendSkeletonFactionNameUnk3            = '';
SET @NorthrendSkeletonFactionNameUnk4            = '';

SET @NorthrendSkeletonFactionDescriptionenUS     = 'Skeletal warriors of Northrend who broke free of the Lich King.';
SET @NorthrendSkeletonFactionDescriptionkoKR     = '';
SET @NorthrendSkeletonFactionDescriptionfrFR     = '';
SET @NorthrendSkeletonFactionDescriptiondeDE     = '';
SET @NorthrendSkeletonFactionDescriptionzhCN     = '';
SET @NorthrendSkeletonFactionDescriptionzhTW     = '';
SET @NorthrendSkeletonFactionDescriptionesES     = '';
SET @NorthrendSkeletonFactionDescriptionesMX     = '';
SET @NorthrendSkeletonFactionDescriptionruRU     = '';
SET @NorthrendSkeletonFactionDescriptionjaJP     = '';
SET @NorthrendSkeletonFactionDescriptionptPT     = '';
SET @NorthrendSkeletonFactionDescriptionitIT     = '';
SET @NorthrendSkeletonFactionDescriptionUnk1     = '';
SET @NorthrendSkeletonFactionDescriptionUnk2     = '';
SET @NorthrendSkeletonFactionDescriptionUnk3     = '';
SET @NorthrendSkeletonFactionDescriptionUnk4     = '';

SET @NorthrendSkeletonAchievementenUS            = 'Realm First! Level 80 Northrend Skeleton';
SET @NorthrendSkeletonAchievementkoKR            = '';
SET @NorthrendSkeletonAchievementfrFR            = '';
SET @NorthrendSkeletonAchievementdeDE            = '';
SET @NorthrendSkeletonAchievementzhCN            = '';
SET @NorthrendSkeletonAchievementzhTW            = '';
SET @NorthrendSkeletonAchievementesES            = '';
SET @NorthrendSkeletonAchievementesMX            = '';
SET @NorthrendSkeletonAchievementruRU            = '';
SET @NorthrendSkeletonAchievementjaJP            = '';
SET @NorthrendSkeletonAchievementptPT            = '';
SET @NorthrendSkeletonAchievementitIT            = '';
SET @NorthrendSkeletonAchievementUnk1            = '';
SET @NorthrendSkeletonAchievementUnk2            = '';
SET @NorthrendSkeletonAchievementUnk3            = '';
SET @NorthrendSkeletonAchievementUnk4            = '';

SET @NorthrendSkeletonAchievementDescriptionenUS = 'First Northrend Skeleton on the realm to achieve level 80.';
SET @NorthrendSkeletonAchievementDescriptionkoKR = '';
SET @NorthrendSkeletonAchievementDescriptionfrFR = '';
SET @NorthrendSkeletonAchievementDescriptiondeDE = '';
SET @NorthrendSkeletonAchievementDescriptionzhCN = '';
SET @NorthrendSkeletonAchievementDescriptionzhTW = '';
SET @NorthrendSkeletonAchievementDescriptionesES = '';
SET @NorthrendSkeletonAchievementDescriptionesMX = '';
SET @NorthrendSkeletonAchievementDescriptionruRU = '';
SET @NorthrendSkeletonAchievementDescriptionjaJP = '';
SET @NorthrendSkeletonAchievementDescriptionptPT = '';
SET @NorthrendSkeletonAchievementDescriptionitIT = '';
SET @NorthrendSkeletonAchievementDescriptionUnk1 = '';
SET @NorthrendSkeletonAchievementDescriptionUnk2 = '';
SET @NorthrendSkeletonAchievementDescriptionUnk3 = '';
SET @NorthrendSkeletonAchievementDescriptionUnk4 = '';
