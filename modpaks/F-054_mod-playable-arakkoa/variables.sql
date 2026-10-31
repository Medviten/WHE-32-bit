-- Race ID
SET @Arakkoa                           := @NextRace := @NextRace +1;
SET @ArakkoaMask                       = 1 << (@Arakkoa - 1);
SET @ArakkoaHelmetMask                 = 1 << @Arakkoa;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @ArakkoaMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @ArakkoaMask;
SET @BowHunters                           = @BowHunters      | @ArakkoaMask;
SET @ArakkoaLanguage                      = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @ArakkoaAlliance                      = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @ArakkoaKnowThyEnemy                  = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @ArakkoaHome = @Draenei; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @ArakkoaKin = @Draenei; -- voice, emotes and names are copied from this race
SET @ArakkoaFlags = @DraeneiFlags;
SET @ArakkoaExplorationSound = @DraeneiExplorationSound;
SET @ArakkoaCinematicSequence = @DraeneiCinematicSequence;
SET @ArakkoaBlood = 1;
SET @ArakkoaMaleModelPath = 'Character\\Arakkoa\\Male\\Arakkoa.mdx'; -- WallCraft model, converted to the 3.3.5 format
SET @ArakkoaFaction = 1223; -- vacant slot
SET @ArakkoaPlayer = 1224; -- vacant slot

-- Strings
SET @ArakkoaClientPrefix               = 'Hu'; -- helmet models of this prefix
SET @ArakkoaClientString               = 'Arakkoa';
SET @ArakkoaFacialHairCustomization1   = 'NORMAL';
SET @ArakkoaFacialHairCustomization2   = 'NORMAL';
SET @ArakkoaHairCustomization          = 'NORMAL';

-- Localization Strings
SET @ArakkoaenUS                       = 'Arakkoa';
SET @ArakkoakoKR                       = '';
SET @ArakkoafrFR                       = '';
SET @ArakkoadeDE                       = '';
SET @ArakkoazhCN                       = '';
SET @ArakkoazhTW                       = '';
SET @ArakkoaesES                       = '';
SET @ArakkoaesMX                       = '';
SET @ArakkoaruRU                       = '';
SET @ArakkoajaJP                       = '';
SET @ArakkoaptPT                       = '';
SET @ArakkoaitIT                       = '';
SET @ArakkoaUnk1                       = '';
SET @ArakkoaUnk2                       = '';
SET @ArakkoaUnk3                       = '';
SET @ArakkoaUnk4                       = '';

SET @ArakkoaFemaleenUS                 = '';
SET @ArakkoaFemalekoKR                 = '';
SET @ArakkoaFemalefrFR                 = '';
SET @ArakkoaFemaledeDE                 = '';
SET @ArakkoaFemalezhCN                 = '';
SET @ArakkoaFemalezhTW                 = '';
SET @ArakkoaFemaleesES                 = '';
SET @ArakkoaFemaleesMX                 = '';
SET @ArakkoaFemaleruRU                 = '';
SET @ArakkoaFemalejaJP                 = '';
SET @ArakkoaFemaleptPT                 = '';
SET @ArakkoaFemaleitIT                 = '';
SET @ArakkoaFemaleUnk1                 = '';
SET @ArakkoaFemaleUnk2                 = '';
SET @ArakkoaFemaleUnk3                 = '';
SET @ArakkoaFemaleUnk4                 = '';

SET @ArakkoaMaleenUS                   = '';
SET @ArakkoaMalekoKR                   = '';
SET @ArakkoaMalefrFR                   = '';
SET @ArakkoaMaledeDE                   = '';
SET @ArakkoaMalezhCN                   = '';
SET @ArakkoaMalezhTW                   = '';
SET @ArakkoaMaleesES                   = '';
SET @ArakkoaMaleesMX                   = '';
SET @ArakkoaMaleruRU                   = '';
SET @ArakkoaMalejaJP                   = '';
SET @ArakkoaMaleptPT                   = '';
SET @ArakkoaMaleitIT                   = '';
SET @ArakkoaMaleUnk1                   = '';
SET @ArakkoaMaleUnk2                   = '';
SET @ArakkoaMaleUnk3                   = '';
SET @ArakkoaMaleUnk4                   = '';

SET @ArakkoaRacialNameenUS             = 'Racial - Arakkoa';
SET @ArakkoaRacialNamekoKR             = '';
SET @ArakkoaRacialNamefrFR             = '';
SET @ArakkoaRacialNamedeDE             = '';
SET @ArakkoaRacialNamezhCN             = '';
SET @ArakkoaRacialNamezhTW             = '';
SET @ArakkoaRacialNameesES             = '';
SET @ArakkoaRacialNameesMX             = '';
SET @ArakkoaRacialNameruRU             = '';
SET @ArakkoaRacialNamejaJP             = '';
SET @ArakkoaRacialNameptPT             = '';
SET @ArakkoaRacialNameitIT             = '';
SET @ArakkoaRacialNameUnk1             = '';
SET @ArakkoaRacialNameUnk2             = '';
SET @ArakkoaRacialNameUnk3             = '';
SET @ArakkoaRacialNameUnk4             = '';

SET @ArakkoaPlayerenUS                 = '"PLAYER", Arakkoa';
SET @ArakkoaPlayerkoKR                 = '';
SET @ArakkoaPlayerfrFR                 = '';
SET @ArakkoaPlayerdeDE                 = '';
SET @ArakkoaPlayerzhCN                 = '';
SET @ArakkoaPlayerzhTW                 = '';
SET @ArakkoaPlayeresES                 = '';
SET @ArakkoaPlayeresMX                 = '';
SET @ArakkoaPlayerruRU                 = '';
SET @ArakkoaPlayerjaJP                 = '';
SET @ArakkoaPlayerptPT                 = '';
SET @ArakkoaPlayeritIT                 = '';
SET @ArakkoaPlayerUnk1                 = '';
SET @ArakkoaPlayerUnk2                 = '';
SET @ArakkoaPlayerUnk3                 = '';
SET @ArakkoaPlayerUnk4                 = '';

-- Placeholder name and description
SET @ArakkoaFactionNameenUS            = 'Arakkoa Outcasts';
SET @ArakkoaFactionNamekoKR            = '';
SET @ArakkoaFactionNamefrFR            = '';
SET @ArakkoaFactionNamedeDE            = '';
SET @ArakkoaFactionNamezhCN            = '';
SET @ArakkoaFactionNamezhTW            = '';
SET @ArakkoaFactionNameesES            = '';
SET @ArakkoaFactionNameesMX            = '';
SET @ArakkoaFactionNameruRU            = '';
SET @ArakkoaFactionNamejaJP            = '';
SET @ArakkoaFactionNameptPT            = '';
SET @ArakkoaFactionNameitIT            = '';
SET @ArakkoaFactionNameUnk1            = '';
SET @ArakkoaFactionNameUnk2            = '';
SET @ArakkoaFactionNameUnk3            = '';
SET @ArakkoaFactionNameUnk4            = '';

SET @ArakkoaFactionDescriptionenUS     = 'Arakkoa of Terokkar Forest who stand with the Alliance.';
SET @ArakkoaFactionDescriptionkoKR     = '';
SET @ArakkoaFactionDescriptionfrFR     = '';
SET @ArakkoaFactionDescriptiondeDE     = '';
SET @ArakkoaFactionDescriptionzhCN     = '';
SET @ArakkoaFactionDescriptionzhTW     = '';
SET @ArakkoaFactionDescriptionesES     = '';
SET @ArakkoaFactionDescriptionesMX     = '';
SET @ArakkoaFactionDescriptionruRU     = '';
SET @ArakkoaFactionDescriptionjaJP     = '';
SET @ArakkoaFactionDescriptionptPT     = '';
SET @ArakkoaFactionDescriptionitIT     = '';
SET @ArakkoaFactionDescriptionUnk1     = '';
SET @ArakkoaFactionDescriptionUnk2     = '';
SET @ArakkoaFactionDescriptionUnk3     = '';
SET @ArakkoaFactionDescriptionUnk4     = '';

SET @ArakkoaAchievementenUS            = 'Realm First! Level 80 Arakkoa';
SET @ArakkoaAchievementkoKR            = '';
SET @ArakkoaAchievementfrFR            = '';
SET @ArakkoaAchievementdeDE            = '';
SET @ArakkoaAchievementzhCN            = '';
SET @ArakkoaAchievementzhTW            = '';
SET @ArakkoaAchievementesES            = '';
SET @ArakkoaAchievementesMX            = '';
SET @ArakkoaAchievementruRU            = '';
SET @ArakkoaAchievementjaJP            = '';
SET @ArakkoaAchievementptPT            = '';
SET @ArakkoaAchievementitIT            = '';
SET @ArakkoaAchievementUnk1            = '';
SET @ArakkoaAchievementUnk2            = '';
SET @ArakkoaAchievementUnk3            = '';
SET @ArakkoaAchievementUnk4            = '';

SET @ArakkoaAchievementDescriptionenUS = 'First Arakkoa on the realm to achieve level 80.';
SET @ArakkoaAchievementDescriptionkoKR = '';
SET @ArakkoaAchievementDescriptionfrFR = '';
SET @ArakkoaAchievementDescriptiondeDE = '';
SET @ArakkoaAchievementDescriptionzhCN = '';
SET @ArakkoaAchievementDescriptionzhTW = '';
SET @ArakkoaAchievementDescriptionesES = '';
SET @ArakkoaAchievementDescriptionesMX = '';
SET @ArakkoaAchievementDescriptionruRU = '';
SET @ArakkoaAchievementDescriptionjaJP = '';
SET @ArakkoaAchievementDescriptionptPT = '';
SET @ArakkoaAchievementDescriptionitIT = '';
SET @ArakkoaAchievementDescriptionUnk1 = '';
SET @ArakkoaAchievementDescriptionUnk2 = '';
SET @ArakkoaAchievementDescriptionUnk3 = '';
SET @ArakkoaAchievementDescriptionUnk4 = '';
