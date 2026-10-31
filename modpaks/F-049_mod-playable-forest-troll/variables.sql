-- Race ID
SET @ForestTroll                           := @NextRace := @NextRace +1;
SET @ForestTrollMask                       = 1 << (@ForestTroll - 1);
SET @ForestTrollHelmetMask                 = 1 << @ForestTroll;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @ForestTrollMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @ForestTrollMask;
SET @BowHunters                           = @BowHunters        | @ForestTrollMask;
SET @ForestTrollLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @ForestTrollAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @ForestTrollKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @ForestTrollHome = @Troll; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @ForestTrollKin = @Troll; -- voice, emotes and names are copied from this race
SET @ForestTrollFlags = @TrollFlags;
SET @ForestTrollExplorationSound = @TrollExplorationSound;
SET @ForestTrollCinematicSequence = @TrollCinematicSequence;
SET @ForestTrollBlood = 1;
SET @ForestTrollFaction = 1213; -- vacant slot
SET @ForestTrollPlayer = 1214; -- vacant slot

-- Strings
SET @ForestTrollClientPrefix               = 'Tr'; -- helmet models of this prefix
SET @ForestTrollClientString               = 'ForestTroll';
SET @ForestTrollFacialHairCustomization1   = 'TUSKS';
SET @ForestTrollFacialHairCustomization2   = 'TUSKS';
SET @ForestTrollHairCustomization          = 'Normal';

-- Localization Strings
SET @ForestTrollenUS                       = 'Forest Troll';
SET @ForestTrollkoKR                       = '';
SET @ForestTrollfrFR                       = '';
SET @ForestTrolldeDE                       = '';
SET @ForestTrollzhCN                       = '';
SET @ForestTrollzhTW                       = '';
SET @ForestTrollesES                       = '';
SET @ForestTrollesMX                       = '';
SET @ForestTrollruRU                       = '';
SET @ForestTrolljaJP                       = '';
SET @ForestTrollptPT                       = '';
SET @ForestTrollitIT                       = '';
SET @ForestTrollUnk1                       = '';
SET @ForestTrollUnk2                       = '';
SET @ForestTrollUnk3                       = '';
SET @ForestTrollUnk4                       = '';

SET @ForestTrollFemaleenUS                 = '';
SET @ForestTrollFemalekoKR                 = '';
SET @ForestTrollFemalefrFR                 = '';
SET @ForestTrollFemaledeDE                 = '';
SET @ForestTrollFemalezhCN                 = '';
SET @ForestTrollFemalezhTW                 = '';
SET @ForestTrollFemaleesES                 = '';
SET @ForestTrollFemaleesMX                 = '';
SET @ForestTrollFemaleruRU                 = '';
SET @ForestTrollFemalejaJP                 = '';
SET @ForestTrollFemaleptPT                 = '';
SET @ForestTrollFemaleitIT                 = '';
SET @ForestTrollFemaleUnk1                 = '';
SET @ForestTrollFemaleUnk2                 = '';
SET @ForestTrollFemaleUnk3                 = '';
SET @ForestTrollFemaleUnk4                 = '';

SET @ForestTrollMaleenUS                   = '';
SET @ForestTrollMalekoKR                   = '';
SET @ForestTrollMalefrFR                   = '';
SET @ForestTrollMaledeDE                   = '';
SET @ForestTrollMalezhCN                   = '';
SET @ForestTrollMalezhTW                   = '';
SET @ForestTrollMaleesES                   = '';
SET @ForestTrollMaleesMX                   = '';
SET @ForestTrollMaleruRU                   = '';
SET @ForestTrollMalejaJP                   = '';
SET @ForestTrollMaleptPT                   = '';
SET @ForestTrollMaleitIT                   = '';
SET @ForestTrollMaleUnk1                   = '';
SET @ForestTrollMaleUnk2                   = '';
SET @ForestTrollMaleUnk3                   = '';
SET @ForestTrollMaleUnk4                   = '';

SET @ForestTrollRacialNameenUS             = 'Racial - Forest Troll';
SET @ForestTrollRacialNamekoKR             = '';
SET @ForestTrollRacialNamefrFR             = '';
SET @ForestTrollRacialNamedeDE             = '';
SET @ForestTrollRacialNamezhCN             = '';
SET @ForestTrollRacialNamezhTW             = '';
SET @ForestTrollRacialNameesES             = '';
SET @ForestTrollRacialNameesMX             = '';
SET @ForestTrollRacialNameruRU             = '';
SET @ForestTrollRacialNamejaJP             = '';
SET @ForestTrollRacialNameptPT             = '';
SET @ForestTrollRacialNameitIT             = '';
SET @ForestTrollRacialNameUnk1             = '';
SET @ForestTrollRacialNameUnk2             = '';
SET @ForestTrollRacialNameUnk3             = '';
SET @ForestTrollRacialNameUnk4             = '';

SET @ForestTrollPlayerenUS                 = '"PLAYER", Forest Troll';
SET @ForestTrollPlayerkoKR                 = '';
SET @ForestTrollPlayerfrFR                 = '';
SET @ForestTrollPlayerdeDE                 = '';
SET @ForestTrollPlayerzhCN                 = '';
SET @ForestTrollPlayerzhTW                 = '';
SET @ForestTrollPlayeresES                 = '';
SET @ForestTrollPlayeresMX                 = '';
SET @ForestTrollPlayerruRU                 = '';
SET @ForestTrollPlayerjaJP                 = '';
SET @ForestTrollPlayerptPT                 = '';
SET @ForestTrollPlayeritIT                 = '';
SET @ForestTrollPlayerUnk1                 = '';
SET @ForestTrollPlayerUnk2                 = '';
SET @ForestTrollPlayerUnk3                 = '';
SET @ForestTrollPlayerUnk4                 = '';

-- Placeholder name and description
SET @ForestTrollFactionNameenUS            = 'Revantusk Tribe';
SET @ForestTrollFactionNamekoKR            = '';
SET @ForestTrollFactionNamefrFR            = '';
SET @ForestTrollFactionNamedeDE            = '';
SET @ForestTrollFactionNamezhCN            = '';
SET @ForestTrollFactionNamezhTW            = '';
SET @ForestTrollFactionNameesES            = '';
SET @ForestTrollFactionNameesMX            = '';
SET @ForestTrollFactionNameruRU            = '';
SET @ForestTrollFactionNamejaJP            = '';
SET @ForestTrollFactionNameptPT            = '';
SET @ForestTrollFactionNameitIT            = '';
SET @ForestTrollFactionNameUnk1            = '';
SET @ForestTrollFactionNameUnk2            = '';
SET @ForestTrollFactionNameUnk3            = '';
SET @ForestTrollFactionNameUnk4            = '';

SET @ForestTrollFactionDescriptionenUS     = 'Forest trolls of the Hinterlands, allied with the Horde.';
SET @ForestTrollFactionDescriptionkoKR     = '';
SET @ForestTrollFactionDescriptionfrFR     = '';
SET @ForestTrollFactionDescriptiondeDE     = '';
SET @ForestTrollFactionDescriptionzhCN     = '';
SET @ForestTrollFactionDescriptionzhTW     = '';
SET @ForestTrollFactionDescriptionesES     = '';
SET @ForestTrollFactionDescriptionesMX     = '';
SET @ForestTrollFactionDescriptionruRU     = '';
SET @ForestTrollFactionDescriptionjaJP     = '';
SET @ForestTrollFactionDescriptionptPT     = '';
SET @ForestTrollFactionDescriptionitIT     = '';
SET @ForestTrollFactionDescriptionUnk1     = '';
SET @ForestTrollFactionDescriptionUnk2     = '';
SET @ForestTrollFactionDescriptionUnk3     = '';
SET @ForestTrollFactionDescriptionUnk4     = '';

SET @ForestTrollAchievementenUS            = 'Realm First! Level 80 Forest Troll';
SET @ForestTrollAchievementkoKR            = '';
SET @ForestTrollAchievementfrFR            = '';
SET @ForestTrollAchievementdeDE            = '';
SET @ForestTrollAchievementzhCN            = '';
SET @ForestTrollAchievementzhTW            = '';
SET @ForestTrollAchievementesES            = '';
SET @ForestTrollAchievementesMX            = '';
SET @ForestTrollAchievementruRU            = '';
SET @ForestTrollAchievementjaJP            = '';
SET @ForestTrollAchievementptPT            = '';
SET @ForestTrollAchievementitIT            = '';
SET @ForestTrollAchievementUnk1            = '';
SET @ForestTrollAchievementUnk2            = '';
SET @ForestTrollAchievementUnk3            = '';
SET @ForestTrollAchievementUnk4            = '';

SET @ForestTrollAchievementDescriptionenUS = 'First Forest Troll on the realm to achieve level 80.';
SET @ForestTrollAchievementDescriptionkoKR = '';
SET @ForestTrollAchievementDescriptionfrFR = '';
SET @ForestTrollAchievementDescriptiondeDE = '';
SET @ForestTrollAchievementDescriptionzhCN = '';
SET @ForestTrollAchievementDescriptionzhTW = '';
SET @ForestTrollAchievementDescriptionesES = '';
SET @ForestTrollAchievementDescriptionesMX = '';
SET @ForestTrollAchievementDescriptionruRU = '';
SET @ForestTrollAchievementDescriptionjaJP = '';
SET @ForestTrollAchievementDescriptionptPT = '';
SET @ForestTrollAchievementDescriptionitIT = '';
SET @ForestTrollAchievementDescriptionUnk1 = '';
SET @ForestTrollAchievementDescriptionUnk2 = '';
SET @ForestTrollAchievementDescriptionUnk3 = '';
SET @ForestTrollAchievementDescriptionUnk4 = '';
