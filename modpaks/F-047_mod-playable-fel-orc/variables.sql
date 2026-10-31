-- Race ID
SET @FelOrc                           := @NextRace := @NextRace +1;
SET @FelOrcMask                       = 1 << (@FelOrc - 1);
SET @FelOrcHelmetMask                 = 1 << @FelOrc;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @FelOrcMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @FelOrcMask;
SET @BowHunters                           = @BowHunters        | @FelOrcMask;
SET @FelOrcLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @FelOrcAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @FelOrcKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @FelOrcHome = @Orc; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @FelOrcKin = @Orc; -- voice, emotes and names are copied from this race
SET @FelOrcFlags = @OrcFlags;
SET @FelOrcExplorationSound = @OrcExplorationSound;
SET @FelOrcCinematicSequence = @OrcCinematicSequence;
SET @FelOrcBlood = 1;
SET @FelOrcFaction = 1209; -- vacant slot
SET @FelOrcPlayer = 1210; -- vacant slot

-- Strings
SET @FelOrcClientPrefix               = 'Or'; -- helmet models of this prefix
SET @FelOrcClientString               = 'FelOrc';
SET @FelOrcFacialHairCustomization1   = 'NORMAL';
SET @FelOrcFacialHairCustomization2   = 'NORMAL';
SET @FelOrcHairCustomization          = 'NORMAL';

-- Localization Strings
SET @FelOrcenUS                       = 'Fel Orc';
SET @FelOrckoKR                       = '';
SET @FelOrcfrFR                       = '';
SET @FelOrcdeDE                       = '';
SET @FelOrczhCN                       = '';
SET @FelOrczhTW                       = '';
SET @FelOrcesES                       = '';
SET @FelOrcesMX                       = '';
SET @FelOrcruRU                       = '';
SET @FelOrcjaJP                       = '';
SET @FelOrcptPT                       = '';
SET @FelOrcitIT                       = '';
SET @FelOrcUnk1                       = '';
SET @FelOrcUnk2                       = '';
SET @FelOrcUnk3                       = '';
SET @FelOrcUnk4                       = '';

SET @FelOrcFemaleenUS                 = '';
SET @FelOrcFemalekoKR                 = '';
SET @FelOrcFemalefrFR                 = '';
SET @FelOrcFemaledeDE                 = '';
SET @FelOrcFemalezhCN                 = '';
SET @FelOrcFemalezhTW                 = '';
SET @FelOrcFemaleesES                 = '';
SET @FelOrcFemaleesMX                 = '';
SET @FelOrcFemaleruRU                 = '';
SET @FelOrcFemalejaJP                 = '';
SET @FelOrcFemaleptPT                 = '';
SET @FelOrcFemaleitIT                 = '';
SET @FelOrcFemaleUnk1                 = '';
SET @FelOrcFemaleUnk2                 = '';
SET @FelOrcFemaleUnk3                 = '';
SET @FelOrcFemaleUnk4                 = '';

SET @FelOrcMaleenUS                   = '';
SET @FelOrcMalekoKR                   = '';
SET @FelOrcMalefrFR                   = '';
SET @FelOrcMaledeDE                   = '';
SET @FelOrcMalezhCN                   = '';
SET @FelOrcMalezhTW                   = '';
SET @FelOrcMaleesES                   = '';
SET @FelOrcMaleesMX                   = '';
SET @FelOrcMaleruRU                   = '';
SET @FelOrcMalejaJP                   = '';
SET @FelOrcMaleptPT                   = '';
SET @FelOrcMaleitIT                   = '';
SET @FelOrcMaleUnk1                   = '';
SET @FelOrcMaleUnk2                   = '';
SET @FelOrcMaleUnk3                   = '';
SET @FelOrcMaleUnk4                   = '';

SET @FelOrcRacialNameenUS             = 'Racial - Fel Orc';
SET @FelOrcRacialNamekoKR             = '';
SET @FelOrcRacialNamefrFR             = '';
SET @FelOrcRacialNamedeDE             = '';
SET @FelOrcRacialNamezhCN             = '';
SET @FelOrcRacialNamezhTW             = '';
SET @FelOrcRacialNameesES             = '';
SET @FelOrcRacialNameesMX             = '';
SET @FelOrcRacialNameruRU             = '';
SET @FelOrcRacialNamejaJP             = '';
SET @FelOrcRacialNameptPT             = '';
SET @FelOrcRacialNameitIT             = '';
SET @FelOrcRacialNameUnk1             = '';
SET @FelOrcRacialNameUnk2             = '';
SET @FelOrcRacialNameUnk3             = '';
SET @FelOrcRacialNameUnk4             = '';

SET @FelOrcPlayerenUS                 = '"PLAYER", Fel Orc';
SET @FelOrcPlayerkoKR                 = '';
SET @FelOrcPlayerfrFR                 = '';
SET @FelOrcPlayerdeDE                 = '';
SET @FelOrcPlayerzhCN                 = '';
SET @FelOrcPlayerzhTW                 = '';
SET @FelOrcPlayeresES                 = '';
SET @FelOrcPlayeresMX                 = '';
SET @FelOrcPlayerruRU                 = '';
SET @FelOrcPlayerjaJP                 = '';
SET @FelOrcPlayerptPT                 = '';
SET @FelOrcPlayeritIT                 = '';
SET @FelOrcPlayerUnk1                 = '';
SET @FelOrcPlayerUnk2                 = '';
SET @FelOrcPlayerUnk3                 = '';
SET @FelOrcPlayerUnk4                 = '';

-- Placeholder name and description
SET @FelOrcFactionNameenUS            = 'Fel Horde';
SET @FelOrcFactionNamekoKR            = '';
SET @FelOrcFactionNamefrFR            = '';
SET @FelOrcFactionNamedeDE            = '';
SET @FelOrcFactionNamezhCN            = '';
SET @FelOrcFactionNamezhTW            = '';
SET @FelOrcFactionNameesES            = '';
SET @FelOrcFactionNameesMX            = '';
SET @FelOrcFactionNameruRU            = '';
SET @FelOrcFactionNamejaJP            = '';
SET @FelOrcFactionNameptPT            = '';
SET @FelOrcFactionNameitIT            = '';
SET @FelOrcFactionNameUnk1            = '';
SET @FelOrcFactionNameUnk2            = '';
SET @FelOrcFactionNameUnk3            = '';
SET @FelOrcFactionNameUnk4            = '';

SET @FelOrcFactionDescriptionenUS     = 'Orcs who drank the blood of Mannoroth and broke free of the Legion.';
SET @FelOrcFactionDescriptionkoKR     = '';
SET @FelOrcFactionDescriptionfrFR     = '';
SET @FelOrcFactionDescriptiondeDE     = '';
SET @FelOrcFactionDescriptionzhCN     = '';
SET @FelOrcFactionDescriptionzhTW     = '';
SET @FelOrcFactionDescriptionesES     = '';
SET @FelOrcFactionDescriptionesMX     = '';
SET @FelOrcFactionDescriptionruRU     = '';
SET @FelOrcFactionDescriptionjaJP     = '';
SET @FelOrcFactionDescriptionptPT     = '';
SET @FelOrcFactionDescriptionitIT     = '';
SET @FelOrcFactionDescriptionUnk1     = '';
SET @FelOrcFactionDescriptionUnk2     = '';
SET @FelOrcFactionDescriptionUnk3     = '';
SET @FelOrcFactionDescriptionUnk4     = '';

SET @FelOrcAchievementenUS            = 'Realm First! Level 80 Fel Orc';
SET @FelOrcAchievementkoKR            = '';
SET @FelOrcAchievementfrFR            = '';
SET @FelOrcAchievementdeDE            = '';
SET @FelOrcAchievementzhCN            = '';
SET @FelOrcAchievementzhTW            = '';
SET @FelOrcAchievementesES            = '';
SET @FelOrcAchievementesMX            = '';
SET @FelOrcAchievementruRU            = '';
SET @FelOrcAchievementjaJP            = '';
SET @FelOrcAchievementptPT            = '';
SET @FelOrcAchievementitIT            = '';
SET @FelOrcAchievementUnk1            = '';
SET @FelOrcAchievementUnk2            = '';
SET @FelOrcAchievementUnk3            = '';
SET @FelOrcAchievementUnk4            = '';

SET @FelOrcAchievementDescriptionenUS = 'First Fel Orc on the realm to achieve level 80.';
SET @FelOrcAchievementDescriptionkoKR = '';
SET @FelOrcAchievementDescriptionfrFR = '';
SET @FelOrcAchievementDescriptiondeDE = '';
SET @FelOrcAchievementDescriptionzhCN = '';
SET @FelOrcAchievementDescriptionzhTW = '';
SET @FelOrcAchievementDescriptionesES = '';
SET @FelOrcAchievementDescriptionesMX = '';
SET @FelOrcAchievementDescriptionruRU = '';
SET @FelOrcAchievementDescriptionjaJP = '';
SET @FelOrcAchievementDescriptionptPT = '';
SET @FelOrcAchievementDescriptionitIT = '';
SET @FelOrcAchievementDescriptionUnk1 = '';
SET @FelOrcAchievementDescriptionUnk2 = '';
SET @FelOrcAchievementDescriptionUnk3 = '';
SET @FelOrcAchievementDescriptionUnk4 = '';
