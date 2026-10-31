-- Race ID
SET @IceTroll                           := @NextRace := @NextRace +1;
SET @IceTrollMask                       = 1 << (@IceTroll - 1);
SET @IceTrollHelmetMask                 = 1 << @IceTroll;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @IceTrollMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @IceTrollMask;
SET @BowHunters                           = @BowHunters        | @IceTrollMask;
SET @IceTrollLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @IceTrollAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @IceTrollKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @IceTrollHome = @Troll; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @IceTrollKin = @Troll; -- voice, emotes and names are copied from this race
SET @IceTrollFlags = @TrollFlags;
SET @IceTrollExplorationSound = @TrollExplorationSound;
SET @IceTrollCinematicSequence = @TrollCinematicSequence;
SET @IceTrollBlood = 1;
SET @IceTrollFaction = 1217; -- vacant slot
SET @IceTrollPlayer = 1218; -- vacant slot

-- Strings
SET @IceTrollClientPrefix               = 'Tr'; -- helmet models of this prefix
SET @IceTrollClientString               = 'IceTroll';
SET @IceTrollFacialHairCustomization1   = 'Normal';
SET @IceTrollFacialHairCustomization2   = 'Normal';
SET @IceTrollHairCustomization          = 'Normal';

-- Localization Strings
SET @IceTrollenUS                       = 'Ice Troll';
SET @IceTrollkoKR                       = '';
SET @IceTrollfrFR                       = '';
SET @IceTrolldeDE                       = '';
SET @IceTrollzhCN                       = '';
SET @IceTrollzhTW                       = '';
SET @IceTrollesES                       = '';
SET @IceTrollesMX                       = '';
SET @IceTrollruRU                       = '';
SET @IceTrolljaJP                       = '';
SET @IceTrollptPT                       = '';
SET @IceTrollitIT                       = '';
SET @IceTrollUnk1                       = '';
SET @IceTrollUnk2                       = '';
SET @IceTrollUnk3                       = '';
SET @IceTrollUnk4                       = '';

SET @IceTrollFemaleenUS                 = '';
SET @IceTrollFemalekoKR                 = '';
SET @IceTrollFemalefrFR                 = '';
SET @IceTrollFemaledeDE                 = '';
SET @IceTrollFemalezhCN                 = '';
SET @IceTrollFemalezhTW                 = '';
SET @IceTrollFemaleesES                 = '';
SET @IceTrollFemaleesMX                 = '';
SET @IceTrollFemaleruRU                 = '';
SET @IceTrollFemalejaJP                 = '';
SET @IceTrollFemaleptPT                 = '';
SET @IceTrollFemaleitIT                 = '';
SET @IceTrollFemaleUnk1                 = '';
SET @IceTrollFemaleUnk2                 = '';
SET @IceTrollFemaleUnk3                 = '';
SET @IceTrollFemaleUnk4                 = '';

SET @IceTrollMaleenUS                   = '';
SET @IceTrollMalekoKR                   = '';
SET @IceTrollMalefrFR                   = '';
SET @IceTrollMaledeDE                   = '';
SET @IceTrollMalezhCN                   = '';
SET @IceTrollMalezhTW                   = '';
SET @IceTrollMaleesES                   = '';
SET @IceTrollMaleesMX                   = '';
SET @IceTrollMaleruRU                   = '';
SET @IceTrollMalejaJP                   = '';
SET @IceTrollMaleptPT                   = '';
SET @IceTrollMaleitIT                   = '';
SET @IceTrollMaleUnk1                   = '';
SET @IceTrollMaleUnk2                   = '';
SET @IceTrollMaleUnk3                   = '';
SET @IceTrollMaleUnk4                   = '';

SET @IceTrollRacialNameenUS             = 'Racial - Ice Troll';
SET @IceTrollRacialNamekoKR             = '';
SET @IceTrollRacialNamefrFR             = '';
SET @IceTrollRacialNamedeDE             = '';
SET @IceTrollRacialNamezhCN             = '';
SET @IceTrollRacialNamezhTW             = '';
SET @IceTrollRacialNameesES             = '';
SET @IceTrollRacialNameesMX             = '';
SET @IceTrollRacialNameruRU             = '';
SET @IceTrollRacialNamejaJP             = '';
SET @IceTrollRacialNameptPT             = '';
SET @IceTrollRacialNameitIT             = '';
SET @IceTrollRacialNameUnk1             = '';
SET @IceTrollRacialNameUnk2             = '';
SET @IceTrollRacialNameUnk3             = '';
SET @IceTrollRacialNameUnk4             = '';

SET @IceTrollPlayerenUS                 = '"PLAYER", Ice Troll';
SET @IceTrollPlayerkoKR                 = '';
SET @IceTrollPlayerfrFR                 = '';
SET @IceTrollPlayerdeDE                 = '';
SET @IceTrollPlayerzhCN                 = '';
SET @IceTrollPlayerzhTW                 = '';
SET @IceTrollPlayeresES                 = '';
SET @IceTrollPlayeresMX                 = '';
SET @IceTrollPlayerruRU                 = '';
SET @IceTrollPlayerjaJP                 = '';
SET @IceTrollPlayerptPT                 = '';
SET @IceTrollPlayeritIT                 = '';
SET @IceTrollPlayerUnk1                 = '';
SET @IceTrollPlayerUnk2                 = '';
SET @IceTrollPlayerUnk3                 = '';
SET @IceTrollPlayerUnk4                 = '';

-- Placeholder name and description
SET @IceTrollFactionNameenUS            = 'Frostmane Exiles';
SET @IceTrollFactionNamekoKR            = '';
SET @IceTrollFactionNamefrFR            = '';
SET @IceTrollFactionNamedeDE            = '';
SET @IceTrollFactionNamezhCN            = '';
SET @IceTrollFactionNamezhTW            = '';
SET @IceTrollFactionNameesES            = '';
SET @IceTrollFactionNameesMX            = '';
SET @IceTrollFactionNameruRU            = '';
SET @IceTrollFactionNamejaJP            = '';
SET @IceTrollFactionNameptPT            = '';
SET @IceTrollFactionNameitIT            = '';
SET @IceTrollFactionNameUnk1            = '';
SET @IceTrollFactionNameUnk2            = '';
SET @IceTrollFactionNameUnk3            = '';
SET @IceTrollFactionNameUnk4            = '';

SET @IceTrollFactionDescriptionenUS     = 'Ice trolls who left their tribes to join the Horde.';
SET @IceTrollFactionDescriptionkoKR     = '';
SET @IceTrollFactionDescriptionfrFR     = '';
SET @IceTrollFactionDescriptiondeDE     = '';
SET @IceTrollFactionDescriptionzhCN     = '';
SET @IceTrollFactionDescriptionzhTW     = '';
SET @IceTrollFactionDescriptionesES     = '';
SET @IceTrollFactionDescriptionesMX     = '';
SET @IceTrollFactionDescriptionruRU     = '';
SET @IceTrollFactionDescriptionjaJP     = '';
SET @IceTrollFactionDescriptionptPT     = '';
SET @IceTrollFactionDescriptionitIT     = '';
SET @IceTrollFactionDescriptionUnk1     = '';
SET @IceTrollFactionDescriptionUnk2     = '';
SET @IceTrollFactionDescriptionUnk3     = '';
SET @IceTrollFactionDescriptionUnk4     = '';

SET @IceTrollAchievementenUS            = 'Realm First! Level 80 Ice Troll';
SET @IceTrollAchievementkoKR            = '';
SET @IceTrollAchievementfrFR            = '';
SET @IceTrollAchievementdeDE            = '';
SET @IceTrollAchievementzhCN            = '';
SET @IceTrollAchievementzhTW            = '';
SET @IceTrollAchievementesES            = '';
SET @IceTrollAchievementesMX            = '';
SET @IceTrollAchievementruRU            = '';
SET @IceTrollAchievementjaJP            = '';
SET @IceTrollAchievementptPT            = '';
SET @IceTrollAchievementitIT            = '';
SET @IceTrollAchievementUnk1            = '';
SET @IceTrollAchievementUnk2            = '';
SET @IceTrollAchievementUnk3            = '';
SET @IceTrollAchievementUnk4            = '';

SET @IceTrollAchievementDescriptionenUS = 'First Ice Troll on the realm to achieve level 80.';
SET @IceTrollAchievementDescriptionkoKR = '';
SET @IceTrollAchievementDescriptionfrFR = '';
SET @IceTrollAchievementDescriptiondeDE = '';
SET @IceTrollAchievementDescriptionzhCN = '';
SET @IceTrollAchievementDescriptionzhTW = '';
SET @IceTrollAchievementDescriptionesES = '';
SET @IceTrollAchievementDescriptionesMX = '';
SET @IceTrollAchievementDescriptionruRU = '';
SET @IceTrollAchievementDescriptionjaJP = '';
SET @IceTrollAchievementDescriptionptPT = '';
SET @IceTrollAchievementDescriptionitIT = '';
SET @IceTrollAchievementDescriptionUnk1 = '';
SET @IceTrollAchievementDescriptionUnk2 = '';
SET @IceTrollAchievementDescriptionUnk3 = '';
SET @IceTrollAchievementDescriptionUnk4 = '';
