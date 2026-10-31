-- Race ID
SET @FelElf                           := @NextRace := @NextRace +1;
SET @FelElfMask                       = 1 << (@FelElf - 1);
SET @FelElfHelmetMask                 = 1 << @FelElf;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @FelElfMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @FelElfMask;
SET @BowHunters                           = @BowHunters        | @FelElfMask;
SET @FelElfLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @FelElfAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @FelElfKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @FelElfHome = @BloodElf; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @FelElfKin = @BloodElf; -- voice, emotes and names are copied from this race
SET @FelElfFlags = @BloodElfFlags;
SET @FelElfExplorationSound = @BloodElfExplorationSound;
SET @FelElfCinematicSequence = @BloodElfCinematicSequence;
SET @FelElfBlood = 1;
SET @FelElfMaleModelPath = 'Character\\FelElf\\Male\\FelElfWarriorMale.mdx'; -- WallCraft model, converted to the 3.3.5 format
SET @FelElfFemaleModelPath = 'Character\\FelElf\\Female\\FelElfCasterFemale.mdx';
SET @FelElfFaction = 1225; -- vacant slot
SET @FelElfPlayer = 1226; -- vacant slot

-- Strings
SET @FelElfClientPrefix               = 'Be'; -- helmet models of this prefix
SET @FelElfClientString               = 'FelElf';
SET @FelElfFacialHairCustomization1   = 'NORMAL';
SET @FelElfFacialHairCustomization2   = 'NORMAL';
SET @FelElfHairCustomization          = 'NORMAL';

-- Localization Strings
SET @FelElfenUS                       = 'Fel Elf';
SET @FelElfkoKR                       = '';
SET @FelElffrFR                       = '';
SET @FelElfdeDE                       = '';
SET @FelElfzhCN                       = '';
SET @FelElfzhTW                       = '';
SET @FelElfesES                       = '';
SET @FelElfesMX                       = '';
SET @FelElfruRU                       = '';
SET @FelElfjaJP                       = '';
SET @FelElfptPT                       = '';
SET @FelElfitIT                       = '';
SET @FelElfUnk1                       = '';
SET @FelElfUnk2                       = '';
SET @FelElfUnk3                       = '';
SET @FelElfUnk4                       = '';

SET @FelElfFemaleenUS                 = '';
SET @FelElfFemalekoKR                 = '';
SET @FelElfFemalefrFR                 = '';
SET @FelElfFemaledeDE                 = '';
SET @FelElfFemalezhCN                 = '';
SET @FelElfFemalezhTW                 = '';
SET @FelElfFemaleesES                 = '';
SET @FelElfFemaleesMX                 = '';
SET @FelElfFemaleruRU                 = '';
SET @FelElfFemalejaJP                 = '';
SET @FelElfFemaleptPT                 = '';
SET @FelElfFemaleitIT                 = '';
SET @FelElfFemaleUnk1                 = '';
SET @FelElfFemaleUnk2                 = '';
SET @FelElfFemaleUnk3                 = '';
SET @FelElfFemaleUnk4                 = '';

SET @FelElfMaleenUS                   = '';
SET @FelElfMalekoKR                   = '';
SET @FelElfMalefrFR                   = '';
SET @FelElfMaledeDE                   = '';
SET @FelElfMalezhCN                   = '';
SET @FelElfMalezhTW                   = '';
SET @FelElfMaleesES                   = '';
SET @FelElfMaleesMX                   = '';
SET @FelElfMaleruRU                   = '';
SET @FelElfMalejaJP                   = '';
SET @FelElfMaleptPT                   = '';
SET @FelElfMaleitIT                   = '';
SET @FelElfMaleUnk1                   = '';
SET @FelElfMaleUnk2                   = '';
SET @FelElfMaleUnk3                   = '';
SET @FelElfMaleUnk4                   = '';

SET @FelElfRacialNameenUS             = 'Racial - Fel Elf';
SET @FelElfRacialNamekoKR             = '';
SET @FelElfRacialNamefrFR             = '';
SET @FelElfRacialNamedeDE             = '';
SET @FelElfRacialNamezhCN             = '';
SET @FelElfRacialNamezhTW             = '';
SET @FelElfRacialNameesES             = '';
SET @FelElfRacialNameesMX             = '';
SET @FelElfRacialNameruRU             = '';
SET @FelElfRacialNamejaJP             = '';
SET @FelElfRacialNameptPT             = '';
SET @FelElfRacialNameitIT             = '';
SET @FelElfRacialNameUnk1             = '';
SET @FelElfRacialNameUnk2             = '';
SET @FelElfRacialNameUnk3             = '';
SET @FelElfRacialNameUnk4             = '';

SET @FelElfPlayerenUS                 = '"PLAYER", Fel Elf';
SET @FelElfPlayerkoKR                 = '';
SET @FelElfPlayerfrFR                 = '';
SET @FelElfPlayerdeDE                 = '';
SET @FelElfPlayerzhCN                 = '';
SET @FelElfPlayerzhTW                 = '';
SET @FelElfPlayeresES                 = '';
SET @FelElfPlayeresMX                 = '';
SET @FelElfPlayerruRU                 = '';
SET @FelElfPlayerjaJP                 = '';
SET @FelElfPlayerptPT                 = '';
SET @FelElfPlayeritIT                 = '';
SET @FelElfPlayerUnk1                 = '';
SET @FelElfPlayerUnk2                 = '';
SET @FelElfPlayerUnk3                 = '';
SET @FelElfPlayerUnk4                 = '';

-- Placeholder name and description
SET @FelElfFactionNameenUS            = 'Illidari Exiles';
SET @FelElfFactionNamekoKR            = '';
SET @FelElfFactionNamefrFR            = '';
SET @FelElfFactionNamedeDE            = '';
SET @FelElfFactionNamezhCN            = '';
SET @FelElfFactionNamezhTW            = '';
SET @FelElfFactionNameesES            = '';
SET @FelElfFactionNameesMX            = '';
SET @FelElfFactionNameruRU            = '';
SET @FelElfFactionNamejaJP            = '';
SET @FelElfFactionNameptPT            = '';
SET @FelElfFactionNameitIT            = '';
SET @FelElfFactionNameUnk1            = '';
SET @FelElfFactionNameUnk2            = '';
SET @FelElfFactionNameUnk3            = '';
SET @FelElfFactionNameUnk4            = '';

SET @FelElfFactionDescriptionenUS     = 'Fel elves who left Illidan\'s service and returned to their kin in the Horde.';
SET @FelElfFactionDescriptionkoKR     = '';
SET @FelElfFactionDescriptionfrFR     = '';
SET @FelElfFactionDescriptiondeDE     = '';
SET @FelElfFactionDescriptionzhCN     = '';
SET @FelElfFactionDescriptionzhTW     = '';
SET @FelElfFactionDescriptionesES     = '';
SET @FelElfFactionDescriptionesMX     = '';
SET @FelElfFactionDescriptionruRU     = '';
SET @FelElfFactionDescriptionjaJP     = '';
SET @FelElfFactionDescriptionptPT     = '';
SET @FelElfFactionDescriptionitIT     = '';
SET @FelElfFactionDescriptionUnk1     = '';
SET @FelElfFactionDescriptionUnk2     = '';
SET @FelElfFactionDescriptionUnk3     = '';
SET @FelElfFactionDescriptionUnk4     = '';

SET @FelElfAchievementenUS            = 'Realm First! Level 80 Fel Elf';
SET @FelElfAchievementkoKR            = '';
SET @FelElfAchievementfrFR            = '';
SET @FelElfAchievementdeDE            = '';
SET @FelElfAchievementzhCN            = '';
SET @FelElfAchievementzhTW            = '';
SET @FelElfAchievementesES            = '';
SET @FelElfAchievementesMX            = '';
SET @FelElfAchievementruRU            = '';
SET @FelElfAchievementjaJP            = '';
SET @FelElfAchievementptPT            = '';
SET @FelElfAchievementitIT            = '';
SET @FelElfAchievementUnk1            = '';
SET @FelElfAchievementUnk2            = '';
SET @FelElfAchievementUnk3            = '';
SET @FelElfAchievementUnk4            = '';

SET @FelElfAchievementDescriptionenUS = 'First Fel Elf on the realm to achieve level 80.';
SET @FelElfAchievementDescriptionkoKR = '';
SET @FelElfAchievementDescriptionfrFR = '';
SET @FelElfAchievementDescriptiondeDE = '';
SET @FelElfAchievementDescriptionzhCN = '';
SET @FelElfAchievementDescriptionzhTW = '';
SET @FelElfAchievementDescriptionesES = '';
SET @FelElfAchievementDescriptionesMX = '';
SET @FelElfAchievementDescriptionruRU = '';
SET @FelElfAchievementDescriptionjaJP = '';
SET @FelElfAchievementDescriptionptPT = '';
SET @FelElfAchievementDescriptionitIT = '';
SET @FelElfAchievementDescriptionUnk1 = '';
SET @FelElfAchievementDescriptionUnk2 = '';
SET @FelElfAchievementDescriptionUnk3 = '';
SET @FelElfAchievementDescriptionUnk4 = '';
