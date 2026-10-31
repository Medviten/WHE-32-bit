-- Race ID
SET @Skeleton                           := @NextRace := @NextRace +1;
SET @SkeletonMask                       = 1 << (@Skeleton - 1);
SET @SkeletonHelmetMask                 = 1 << @Skeleton;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @SkeletonMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @SkeletonMask;
SET @BowHunters                           = @BowHunters        | @SkeletonMask;
SET @SkeletonLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @SkeletonAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @SkeletonKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @SkeletonHome = @Undead; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @SkeletonKin = @Undead; -- voice, emotes and names are copied from this race
SET @SkeletonFlags = @UndeadFlags;
SET @SkeletonExplorationSound = @UndeadExplorationSound;
SET @SkeletonCinematicSequence = @UndeadCinematicSequence;
SET @SkeletonBlood = 1;
SET @SkeletonFaction = 1211; -- vacant slot
SET @SkeletonPlayer = 1212; -- vacant slot

-- Strings
SET @SkeletonClientPrefix               = 'Sc'; -- helmet models of this prefix
SET @SkeletonClientString               = 'Skeleton';
SET @SkeletonFacialHairCustomization1   = 'Normal';
SET @SkeletonFacialHairCustomization2   = 'Normal';
SET @SkeletonHairCustomization          = 'Normal';

-- Localization Strings
SET @SkeletonenUS                       = 'Skeleton';
SET @SkeletonkoKR                       = '';
SET @SkeletonfrFR                       = '';
SET @SkeletondeDE                       = '';
SET @SkeletonzhCN                       = '';
SET @SkeletonzhTW                       = '';
SET @SkeletonesES                       = '';
SET @SkeletonesMX                       = '';
SET @SkeletonruRU                       = '';
SET @SkeletonjaJP                       = '';
SET @SkeletonptPT                       = '';
SET @SkeletonitIT                       = '';
SET @SkeletonUnk1                       = '';
SET @SkeletonUnk2                       = '';
SET @SkeletonUnk3                       = '';
SET @SkeletonUnk4                       = '';

SET @SkeletonFemaleenUS                 = '';
SET @SkeletonFemalekoKR                 = '';
SET @SkeletonFemalefrFR                 = '';
SET @SkeletonFemaledeDE                 = '';
SET @SkeletonFemalezhCN                 = '';
SET @SkeletonFemalezhTW                 = '';
SET @SkeletonFemaleesES                 = '';
SET @SkeletonFemaleesMX                 = '';
SET @SkeletonFemaleruRU                 = '';
SET @SkeletonFemalejaJP                 = '';
SET @SkeletonFemaleptPT                 = '';
SET @SkeletonFemaleitIT                 = '';
SET @SkeletonFemaleUnk1                 = '';
SET @SkeletonFemaleUnk2                 = '';
SET @SkeletonFemaleUnk3                 = '';
SET @SkeletonFemaleUnk4                 = '';

SET @SkeletonMaleenUS                   = '';
SET @SkeletonMalekoKR                   = '';
SET @SkeletonMalefrFR                   = '';
SET @SkeletonMaledeDE                   = '';
SET @SkeletonMalezhCN                   = '';
SET @SkeletonMalezhTW                   = '';
SET @SkeletonMaleesES                   = '';
SET @SkeletonMaleesMX                   = '';
SET @SkeletonMaleruRU                   = '';
SET @SkeletonMalejaJP                   = '';
SET @SkeletonMaleptPT                   = '';
SET @SkeletonMaleitIT                   = '';
SET @SkeletonMaleUnk1                   = '';
SET @SkeletonMaleUnk2                   = '';
SET @SkeletonMaleUnk3                   = '';
SET @SkeletonMaleUnk4                   = '';

SET @SkeletonRacialNameenUS             = 'Racial - Skeleton';
SET @SkeletonRacialNamekoKR             = '';
SET @SkeletonRacialNamefrFR             = '';
SET @SkeletonRacialNamedeDE             = '';
SET @SkeletonRacialNamezhCN             = '';
SET @SkeletonRacialNamezhTW             = '';
SET @SkeletonRacialNameesES             = '';
SET @SkeletonRacialNameesMX             = '';
SET @SkeletonRacialNameruRU             = '';
SET @SkeletonRacialNamejaJP             = '';
SET @SkeletonRacialNameptPT             = '';
SET @SkeletonRacialNameitIT             = '';
SET @SkeletonRacialNameUnk1             = '';
SET @SkeletonRacialNameUnk2             = '';
SET @SkeletonRacialNameUnk3             = '';
SET @SkeletonRacialNameUnk4             = '';

SET @SkeletonPlayerenUS                 = '"PLAYER", Skeleton';
SET @SkeletonPlayerkoKR                 = '';
SET @SkeletonPlayerfrFR                 = '';
SET @SkeletonPlayerdeDE                 = '';
SET @SkeletonPlayerzhCN                 = '';
SET @SkeletonPlayerzhTW                 = '';
SET @SkeletonPlayeresES                 = '';
SET @SkeletonPlayeresMX                 = '';
SET @SkeletonPlayerruRU                 = '';
SET @SkeletonPlayerjaJP                 = '';
SET @SkeletonPlayerptPT                 = '';
SET @SkeletonPlayeritIT                 = '';
SET @SkeletonPlayerUnk1                 = '';
SET @SkeletonPlayerUnk2                 = '';
SET @SkeletonPlayerUnk3                 = '';
SET @SkeletonPlayerUnk4                 = '';

-- Placeholder name and description
SET @SkeletonFactionNameenUS            = 'Bonewalkers';
SET @SkeletonFactionNamekoKR            = '';
SET @SkeletonFactionNamefrFR            = '';
SET @SkeletonFactionNamedeDE            = '';
SET @SkeletonFactionNamezhCN            = '';
SET @SkeletonFactionNamezhTW            = '';
SET @SkeletonFactionNameesES            = '';
SET @SkeletonFactionNameesMX            = '';
SET @SkeletonFactionNameruRU            = '';
SET @SkeletonFactionNamejaJP            = '';
SET @SkeletonFactionNameptPT            = '';
SET @SkeletonFactionNameitIT            = '';
SET @SkeletonFactionNameUnk1            = '';
SET @SkeletonFactionNameUnk2            = '';
SET @SkeletonFactionNameUnk3            = '';
SET @SkeletonFactionNameUnk4            = '';

SET @SkeletonFactionDescriptionenUS     = 'Restless skeletons who answer to the Banshee Queen rather than the Lich King.';
SET @SkeletonFactionDescriptionkoKR     = '';
SET @SkeletonFactionDescriptionfrFR     = '';
SET @SkeletonFactionDescriptiondeDE     = '';
SET @SkeletonFactionDescriptionzhCN     = '';
SET @SkeletonFactionDescriptionzhTW     = '';
SET @SkeletonFactionDescriptionesES     = '';
SET @SkeletonFactionDescriptionesMX     = '';
SET @SkeletonFactionDescriptionruRU     = '';
SET @SkeletonFactionDescriptionjaJP     = '';
SET @SkeletonFactionDescriptionptPT     = '';
SET @SkeletonFactionDescriptionitIT     = '';
SET @SkeletonFactionDescriptionUnk1     = '';
SET @SkeletonFactionDescriptionUnk2     = '';
SET @SkeletonFactionDescriptionUnk3     = '';
SET @SkeletonFactionDescriptionUnk4     = '';

SET @SkeletonAchievementenUS            = 'Realm First! Level 80 Skeleton';
SET @SkeletonAchievementkoKR            = '';
SET @SkeletonAchievementfrFR            = '';
SET @SkeletonAchievementdeDE            = '';
SET @SkeletonAchievementzhCN            = '';
SET @SkeletonAchievementzhTW            = '';
SET @SkeletonAchievementesES            = '';
SET @SkeletonAchievementesMX            = '';
SET @SkeletonAchievementruRU            = '';
SET @SkeletonAchievementjaJP            = '';
SET @SkeletonAchievementptPT            = '';
SET @SkeletonAchievementitIT            = '';
SET @SkeletonAchievementUnk1            = '';
SET @SkeletonAchievementUnk2            = '';
SET @SkeletonAchievementUnk3            = '';
SET @SkeletonAchievementUnk4            = '';

SET @SkeletonAchievementDescriptionenUS = 'First Skeleton on the realm to achieve level 80.';
SET @SkeletonAchievementDescriptionkoKR = '';
SET @SkeletonAchievementDescriptionfrFR = '';
SET @SkeletonAchievementDescriptiondeDE = '';
SET @SkeletonAchievementDescriptionzhCN = '';
SET @SkeletonAchievementDescriptionzhTW = '';
SET @SkeletonAchievementDescriptionesES = '';
SET @SkeletonAchievementDescriptionesMX = '';
SET @SkeletonAchievementDescriptionruRU = '';
SET @SkeletonAchievementDescriptionjaJP = '';
SET @SkeletonAchievementDescriptionptPT = '';
SET @SkeletonAchievementDescriptionitIT = '';
SET @SkeletonAchievementDescriptionUnk1 = '';
SET @SkeletonAchievementDescriptionUnk2 = '';
SET @SkeletonAchievementDescriptionUnk3 = '';
SET @SkeletonAchievementDescriptionUnk4 = '';
