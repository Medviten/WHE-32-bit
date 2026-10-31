-- Race ID
SET @Demon                           := @NextRace := @NextRace +1;
SET @DemonMask                       = 1 << (@Demon - 1);
SET @DemonHelmetMask                 = 1 << @Demon;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @DemonMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @DemonMask;
SET @BowHunters                           = @BowHunters        | @DemonMask;
SET @DemonLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @DemonAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @DemonKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @DemonHome = @BloodElf; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @DemonKin = @BloodElf; -- voice, emotes and names are copied from this race
SET @DemonFlags = @BloodElfFlags;
SET @DemonExplorationSound = @BloodElfExplorationSound;
SET @DemonCinematicSequence = @BloodElfCinematicSequence;
SET @DemonBlood = 1;
SET @DemonMaleModelPath = 'Character\\DemonForm\\DemonForm.mdx'; -- WallCraft model, converted to the 3.3.5 format
SET @DemonFaction = 1231; -- vacant slot
SET @DemonPlayer = 1232; -- vacant slot

-- Strings
SET @DemonClientPrefix               = 'Be'; -- helmet models of this prefix
SET @DemonClientString               = 'Demon';
SET @DemonFacialHairCustomization1   = 'NORMAL';
SET @DemonFacialHairCustomization2   = 'NORMAL';
SET @DemonHairCustomization          = 'NORMAL';

-- Localization Strings
SET @DemonenUS                       = 'Demon';
SET @DemonkoKR                       = '';
SET @DemonfrFR                       = '';
SET @DemondeDE                       = '';
SET @DemonzhCN                       = '';
SET @DemonzhTW                       = '';
SET @DemonesES                       = '';
SET @DemonesMX                       = '';
SET @DemonruRU                       = '';
SET @DemonjaJP                       = '';
SET @DemonptPT                       = '';
SET @DemonitIT                       = '';
SET @DemonUnk1                       = '';
SET @DemonUnk2                       = '';
SET @DemonUnk3                       = '';
SET @DemonUnk4                       = '';

SET @DemonFemaleenUS                 = '';
SET @DemonFemalekoKR                 = '';
SET @DemonFemalefrFR                 = '';
SET @DemonFemaledeDE                 = '';
SET @DemonFemalezhCN                 = '';
SET @DemonFemalezhTW                 = '';
SET @DemonFemaleesES                 = '';
SET @DemonFemaleesMX                 = '';
SET @DemonFemaleruRU                 = '';
SET @DemonFemalejaJP                 = '';
SET @DemonFemaleptPT                 = '';
SET @DemonFemaleitIT                 = '';
SET @DemonFemaleUnk1                 = '';
SET @DemonFemaleUnk2                 = '';
SET @DemonFemaleUnk3                 = '';
SET @DemonFemaleUnk4                 = '';

SET @DemonMaleenUS                   = '';
SET @DemonMalekoKR                   = '';
SET @DemonMalefrFR                   = '';
SET @DemonMaledeDE                   = '';
SET @DemonMalezhCN                   = '';
SET @DemonMalezhTW                   = '';
SET @DemonMaleesES                   = '';
SET @DemonMaleesMX                   = '';
SET @DemonMaleruRU                   = '';
SET @DemonMalejaJP                   = '';
SET @DemonMaleptPT                   = '';
SET @DemonMaleitIT                   = '';
SET @DemonMaleUnk1                   = '';
SET @DemonMaleUnk2                   = '';
SET @DemonMaleUnk3                   = '';
SET @DemonMaleUnk4                   = '';

SET @DemonRacialNameenUS             = 'Racial - Demon';
SET @DemonRacialNamekoKR             = '';
SET @DemonRacialNamefrFR             = '';
SET @DemonRacialNamedeDE             = '';
SET @DemonRacialNamezhCN             = '';
SET @DemonRacialNamezhTW             = '';
SET @DemonRacialNameesES             = '';
SET @DemonRacialNameesMX             = '';
SET @DemonRacialNameruRU             = '';
SET @DemonRacialNamejaJP             = '';
SET @DemonRacialNameptPT             = '';
SET @DemonRacialNameitIT             = '';
SET @DemonRacialNameUnk1             = '';
SET @DemonRacialNameUnk2             = '';
SET @DemonRacialNameUnk3             = '';
SET @DemonRacialNameUnk4             = '';

SET @DemonPlayerenUS                 = '"PLAYER", Demon';
SET @DemonPlayerkoKR                 = '';
SET @DemonPlayerfrFR                 = '';
SET @DemonPlayerdeDE                 = '';
SET @DemonPlayerzhCN                 = '';
SET @DemonPlayerzhTW                 = '';
SET @DemonPlayeresES                 = '';
SET @DemonPlayeresMX                 = '';
SET @DemonPlayerruRU                 = '';
SET @DemonPlayerjaJP                 = '';
SET @DemonPlayerptPT                 = '';
SET @DemonPlayeritIT                 = '';
SET @DemonPlayerUnk1                 = '';
SET @DemonPlayerUnk2                 = '';
SET @DemonPlayerUnk3                 = '';
SET @DemonPlayerUnk4                 = '';

-- Placeholder name and description
SET @DemonFactionNameenUS            = 'Illidari';
SET @DemonFactionNamekoKR            = '';
SET @DemonFactionNamefrFR            = '';
SET @DemonFactionNamedeDE            = '';
SET @DemonFactionNamezhCN            = '';
SET @DemonFactionNamezhTW            = '';
SET @DemonFactionNameesES            = '';
SET @DemonFactionNameesMX            = '';
SET @DemonFactionNameruRU            = '';
SET @DemonFactionNamejaJP            = '';
SET @DemonFactionNameptPT            = '';
SET @DemonFactionNameitIT            = '';
SET @DemonFactionNameUnk1            = '';
SET @DemonFactionNameUnk2            = '';
SET @DemonFactionNameUnk3            = '';
SET @DemonFactionNameUnk4            = '';

SET @DemonFactionDescriptionenUS     = 'Demonic followers of Illidan who fight the Legion alongside the Horde.';
SET @DemonFactionDescriptionkoKR     = '';
SET @DemonFactionDescriptionfrFR     = '';
SET @DemonFactionDescriptiondeDE     = '';
SET @DemonFactionDescriptionzhCN     = '';
SET @DemonFactionDescriptionzhTW     = '';
SET @DemonFactionDescriptionesES     = '';
SET @DemonFactionDescriptionesMX     = '';
SET @DemonFactionDescriptionruRU     = '';
SET @DemonFactionDescriptionjaJP     = '';
SET @DemonFactionDescriptionptPT     = '';
SET @DemonFactionDescriptionitIT     = '';
SET @DemonFactionDescriptionUnk1     = '';
SET @DemonFactionDescriptionUnk2     = '';
SET @DemonFactionDescriptionUnk3     = '';
SET @DemonFactionDescriptionUnk4     = '';

SET @DemonAchievementenUS            = 'Realm First! Level 80 Demon';
SET @DemonAchievementkoKR            = '';
SET @DemonAchievementfrFR            = '';
SET @DemonAchievementdeDE            = '';
SET @DemonAchievementzhCN            = '';
SET @DemonAchievementzhTW            = '';
SET @DemonAchievementesES            = '';
SET @DemonAchievementesMX            = '';
SET @DemonAchievementruRU            = '';
SET @DemonAchievementjaJP            = '';
SET @DemonAchievementptPT            = '';
SET @DemonAchievementitIT            = '';
SET @DemonAchievementUnk1            = '';
SET @DemonAchievementUnk2            = '';
SET @DemonAchievementUnk3            = '';
SET @DemonAchievementUnk4            = '';

SET @DemonAchievementDescriptionenUS = 'First Demon on the realm to achieve level 80.';
SET @DemonAchievementDescriptionkoKR = '';
SET @DemonAchievementDescriptionfrFR = '';
SET @DemonAchievementDescriptiondeDE = '';
SET @DemonAchievementDescriptionzhCN = '';
SET @DemonAchievementDescriptionzhTW = '';
SET @DemonAchievementDescriptionesES = '';
SET @DemonAchievementDescriptionesMX = '';
SET @DemonAchievementDescriptionruRU = '';
SET @DemonAchievementDescriptionjaJP = '';
SET @DemonAchievementDescriptionptPT = '';
SET @DemonAchievementDescriptionitIT = '';
SET @DemonAchievementDescriptionUnk1 = '';
SET @DemonAchievementDescriptionUnk2 = '';
SET @DemonAchievementDescriptionUnk3 = '';
SET @DemonAchievementDescriptionUnk4 = '';
