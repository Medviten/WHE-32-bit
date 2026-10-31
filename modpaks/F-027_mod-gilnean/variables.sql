-- Race ID
SET @Gilnean                           := 255;               -- 13: reserved in config.sql, so the client's alteredFormRaces is "12=13"
SET @GilneanMask                       = 1 << (@Gilnean - 1);        -- 4096
SET @GilneanHelmetMask                 = 1 << @Gilnean;              -- 8192

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                      = @AllianceMask     | @GilneanMask;
SET @BarrensBros                       = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                  = @PlayableRaceMask | @GilneanMask;
SET @GunHunters                        = @GunHunters       | @GilneanMask;
SET @GilneanLanguage                   = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @GilneanAlliance                   = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @GilneanKnowThyEnemy               = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @GilneanExplorationSound           = @HumanExplorationSound;
SET @GilneanCinematicSequence          = @NightElfCinematicSequence;
SET @GilneanBlood                      = 1;
SET @GilneanMaleModelPath              = 'Character\\Gilnean\\Male\\GilneanMale.M2'; -- copied from 'Character\\Human\\Male\\HumanMale.mdx'
SET @GilneanFemaleModelPath            = 'Character\\Gilnean\\Female\\GilneanFemale.M2'; -- copied from 'Character\\Human\\Female\\HumanFemale.mdx'
SET @GilneanMaleFootprint              = @FootprintShoe;
SET @GilneanFemaleFootprint            = @FootprintShoe;

-- Strings
SET @GilneanClientPrefix               = 'Hu';
SET @GilneanClientString               = 'Gilnean';
SET @GilneanFacialHairCustomization1   = 'NORMAL';
SET @GilneanFacialHairCustomization2   = 'PIERCINGS';
SET @GilneanHairCustomization          = 'NORMAL';

-- Localization Strings
SET @GilneanenUS                       = 'Gilnean';
SET @GilneankoKR                       = '';
SET @GilneanfrFR                       = '';
SET @GilneandeDE                       = '';
SET @GilneanzhCN                       = '';
SET @GilneanzhTW                       = '';
SET @GilneanesES                       = '';
SET @GilneanesMX                       = '';
SET @GilneanruRU                       = '';
SET @GilneanjaJP                       = '';
SET @GilneanptPT                       = '';
SET @GilneanitIT                       = '';
SET @GilneanUnk1                       = '';
SET @GilneanUnk2                       = '';
SET @GilneanUnk3                       = '';
SET @GilneanUnk4                       = '';

SET @GilneanFemaleenUS                 = '';
SET @GilneanFemalekoKR                 = '';
SET @GilneanFemalefrFR                 = '';
SET @GilneanFemaledeDE                 = '';
SET @GilneanFemalezhCN                 = '';
SET @GilneanFemalezhTW                 = '';
SET @GilneanFemaleesES                 = '';
SET @GilneanFemaleesMX                 = '';
SET @GilneanFemaleruRU                 = '';
SET @GilneanFemalejaJP                 = '';
SET @GilneanFemaleptPT                 = '';
SET @GilneanFemaleitIT                 = '';
SET @GilneanFemaleUnk1                 = '';
SET @GilneanFemaleUnk2                 = '';
SET @GilneanFemaleUnk3                 = '';
SET @GilneanFemaleUnk4                 = '';

SET @GilneanMaleenUS                   = '';
SET @GilneanMalekoKR                   = '';
SET @GilneanMalefrFR                   = '';
SET @GilneanMaledeDE                   = '';
SET @GilneanMalezhCN                   = '';
SET @GilneanMalezhTW                   = '';
SET @GilneanMaleesES                   = '';
SET @GilneanMaleesMX                   = '';
SET @GilneanMaleruRU                   = '';
SET @GilneanMalejaJP                   = '';
SET @GilneanMaleptPT                   = '';
SET @GilneanMaleitIT                   = '';
SET @GilneanMaleUnk1                   = '';
SET @GilneanMaleUnk2                   = '';
SET @GilneanMaleUnk3                   = '';
SET @GilneanMaleUnk4                   = '';

SET @GilneanRacialNameenUS             = 'Racial - Gilnean';
SET @GilneanRacialNamekoKR             = '';
SET @GilneanRacialNamefrFR             = '';
SET @GilneanRacialNamedeDE             = '';
SET @GilneanRacialNamezhCN             = '';
SET @GilneanRacialNamezhTW             = '';
SET @GilneanRacialNameesES             = '';
SET @GilneanRacialNameesMX             = '';
SET @GilneanRacialNameruRU             = '';
SET @GilneanRacialNamejaJP             = '';
SET @GilneanRacialNameptPT             = '';
SET @GilneanRacialNameitIT             = '';
SET @GilneanRacialNameUnk1             = '';
SET @GilneanRacialNameUnk2             = '';
SET @GilneanRacialNameUnk3             = '';
SET @GilneanRacialNameUnk4             = '';

SET @GilneanPlayerenUS                 = '"PLAYER", " Gilnean"';
SET @GilneanPlayerkoKR                 = '';
SET @GilneanPlayerfrFR                 = '';
SET @GilneanPlayerdeDE                 = '';
SET @GilneanPlayerzhCN                 = '';
SET @GilneanPlayerzhTW                 = '';
SET @GilneanPlayeresES                 = '';
SET @GilneanPlayeresMX                 = '';
SET @GilneanPlayerruRU                 = '';
SET @GilneanPlayerjaJP                 = '';
SET @GilneanPlayerptPT                 = '';
SET @GilneanPlayeritIT                 = '';
SET @GilneanPlayerUnk1                 = '';
SET @GilneanPlayerUnk2                 = '';
SET @GilneanPlayerUnk3                 = '';
SET @GilneanPlayerUnk4                 = '';

SET @GilneanFactionNameenUS            = 'Gilneas';
SET @GilneanFactionNamekoKR            = '';
SET @GilneanFactionNamefrFR            = '';
SET @GilneanFactionNamedeDE            = '';
SET @GilneanFactionNamezhCN            = '';
SET @GilneanFactionNamezhTW            = '';
SET @GilneanFactionNameesES            = '';
SET @GilneanFactionNameesMX            = '';
SET @GilneanFactionNameruRU            = '';
SET @GilneanFactionNamejaJP            = '';
SET @GilneanFactionNameptPT            = '';
SET @GilneanFactionNameitIT            = '';
SET @GilneanFactionNameUnk1            = '';
SET @GilneanFactionNameUnk2            = '';
SET @GilneanFactionNameUnk3            = '';
SET @GilneanFactionNameUnk4            = '';

SET @GilneanFactionDescriptionenUS     = 'The human kingdom of Gilneas';
SET @GilneanFactionDescriptionkoKR     = '';
SET @GilneanFactionDescriptionfrFR     = '';
SET @GilneanFactionDescriptiondeDE     = '';
SET @GilneanFactionDescriptionzhCN     = '';
SET @GilneanFactionDescriptionzhTW     = '';
SET @GilneanFactionDescriptionesES     = '';
SET @GilneanFactionDescriptionesMX     = '';
SET @GilneanFactionDescriptionruRU     = '';
SET @GilneanFactionDescriptionjaJP     = '';
SET @GilneanFactionDescriptionptPT     = '';
SET @GilneanFactionDescriptionitIT     = '';
SET @GilneanFactionDescriptionUnk1     = '';
SET @GilneanFactionDescriptionUnk2     = '';
SET @GilneanFactionDescriptionUnk3     = '';
SET @GilneanFactionDescriptionUnk4     = '';

SET @GilneanAchievementenUS            = 'Realm First! Level 80 Gilnean';
SET @GilneanAchievementkoKR            = '';
SET @GilneanAchievementfrFR            = '';
SET @GilneanAchievementdeDE            = '';
SET @GilneanAchievementzhCN            = '';
SET @GilneanAchievementzhTW            = '';
SET @GilneanAchievementesES            = '';
SET @GilneanAchievementesMX            = '';
SET @GilneanAchievementruRU            = '';
SET @GilneanAchievementjaJP            = '';
SET @GilneanAchievementptPT            = '';
SET @GilneanAchievementitIT            = '';
SET @GilneanAchievementUnk1            = '';
SET @GilneanAchievementUnk2            = '';
SET @GilneanAchievementUnk3            = '';
SET @GilneanAchievementUnk4            = '';

SET @GilneanAchievementDescriptionenUS = 'First Gilnean on the realm to achieve level 80.';
SET @GilneanAchievementDescriptionkoKR = '';
SET @GilneanAchievementDescriptionfrFR = '';
SET @GilneanAchievementDescriptiondeDE = '';
SET @GilneanAchievementDescriptionzhCN = '';
SET @GilneanAchievementDescriptionzhTW = '';
SET @GilneanAchievementDescriptionesES = '';
SET @GilneanAchievementDescriptionesMX = '';
SET @GilneanAchievementDescriptionruRU = '';
SET @GilneanAchievementDescriptionjaJP = '';
SET @GilneanAchievementDescriptionptPT = '';
SET @GilneanAchievementDescriptionitIT = '';
SET @GilneanAchievementDescriptionUnk1 = '';
SET @GilneanAchievementDescriptionUnk2 = '';
SET @GilneanAchievementDescriptionUnk3 = '';
SET @GilneanAchievementDescriptionUnk4 = '';
