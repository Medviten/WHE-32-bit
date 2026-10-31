-- Race ID
SET @FacelessOne                           := @NextRace := @NextRace +1;
SET @FacelessOneMask                       = 1 << (@FacelessOne - 1);
SET @FacelessOneHelmetMask                 = 1 << @FacelessOne;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @FacelessOneMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @FacelessOneMask;
SET @BowHunters                           = @BowHunters        | @FacelessOneMask;
SET @FacelessOneLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @FacelessOneAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @FacelessOneKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @FacelessOneHome = @Orc; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @FacelessOneKin = @Undead; -- voice, emotes and names are copied from this race
SET @FacelessOneFlags = @OrcFlags;
SET @FacelessOneExplorationSound = @OrcExplorationSound;
SET @FacelessOneCinematicSequence = @OrcCinematicSequence;
SET @FacelessOneBlood = 1;
SET @FacelessOneMaleModelPath = 'Creature\\FacelessOne\\FacelessPlayer.m2'; -- CoA Custom 1.9 model (retail, prepared by coa_race_prep.py)
SET @FacelessOneFaction = 1257; -- vacant slot
SET @FacelessOnePlayer = 1258; -- vacant slot

-- Strings
SET @FacelessOneClientPrefix               = 'Gn'; -- helmet models of this prefix
SET @FacelessOneClientString               = 'FacelessOne';
SET @FacelessOneFacialHairCustomization1   = 'NORMAL';
SET @FacelessOneFacialHairCustomization2   = 'NORMAL';
SET @FacelessOneHairCustomization          = 'NORMAL';

-- Localization Strings
SET @FacelessOneenUS                       = 'Faceless One';
SET @FacelessOnekoKR                       = '';
SET @FacelessOnefrFR                       = '';
SET @FacelessOnedeDE                       = '';
SET @FacelessOnezhCN                       = '';
SET @FacelessOnezhTW                       = '';
SET @FacelessOneesES                       = '';
SET @FacelessOneesMX                       = '';
SET @FacelessOneruRU                       = '';
SET @FacelessOnejaJP                       = '';
SET @FacelessOneptPT                       = '';
SET @FacelessOneitIT                       = '';
SET @FacelessOneUnk1                       = '';
SET @FacelessOneUnk2                       = '';
SET @FacelessOneUnk3                       = '';
SET @FacelessOneUnk4                       = '';

SET @FacelessOneFemaleenUS                 = '';
SET @FacelessOneFemalekoKR                 = '';
SET @FacelessOneFemalefrFR                 = '';
SET @FacelessOneFemaledeDE                 = '';
SET @FacelessOneFemalezhCN                 = '';
SET @FacelessOneFemalezhTW                 = '';
SET @FacelessOneFemaleesES                 = '';
SET @FacelessOneFemaleesMX                 = '';
SET @FacelessOneFemaleruRU                 = '';
SET @FacelessOneFemalejaJP                 = '';
SET @FacelessOneFemaleptPT                 = '';
SET @FacelessOneFemaleitIT                 = '';
SET @FacelessOneFemaleUnk1                 = '';
SET @FacelessOneFemaleUnk2                 = '';
SET @FacelessOneFemaleUnk3                 = '';
SET @FacelessOneFemaleUnk4                 = '';

SET @FacelessOneMaleenUS                   = '';
SET @FacelessOneMalekoKR                   = '';
SET @FacelessOneMalefrFR                   = '';
SET @FacelessOneMaledeDE                   = '';
SET @FacelessOneMalezhCN                   = '';
SET @FacelessOneMalezhTW                   = '';
SET @FacelessOneMaleesES                   = '';
SET @FacelessOneMaleesMX                   = '';
SET @FacelessOneMaleruRU                   = '';
SET @FacelessOneMalejaJP                   = '';
SET @FacelessOneMaleptPT                   = '';
SET @FacelessOneMaleitIT                   = '';
SET @FacelessOneMaleUnk1                   = '';
SET @FacelessOneMaleUnk2                   = '';
SET @FacelessOneMaleUnk3                   = '';
SET @FacelessOneMaleUnk4                   = '';

SET @FacelessOneRacialNameenUS             = 'Racial - Faceless One';
SET @FacelessOneRacialNamekoKR             = '';
SET @FacelessOneRacialNamefrFR             = '';
SET @FacelessOneRacialNamedeDE             = '';
SET @FacelessOneRacialNamezhCN             = '';
SET @FacelessOneRacialNamezhTW             = '';
SET @FacelessOneRacialNameesES             = '';
SET @FacelessOneRacialNameesMX             = '';
SET @FacelessOneRacialNameruRU             = '';
SET @FacelessOneRacialNamejaJP             = '';
SET @FacelessOneRacialNameptPT             = '';
SET @FacelessOneRacialNameitIT             = '';
SET @FacelessOneRacialNameUnk1             = '';
SET @FacelessOneRacialNameUnk2             = '';
SET @FacelessOneRacialNameUnk3             = '';
SET @FacelessOneRacialNameUnk4             = '';

SET @FacelessOnePlayerenUS                 = '"PLAYER", Faceless One';
SET @FacelessOnePlayerkoKR                 = '';
SET @FacelessOnePlayerfrFR                 = '';
SET @FacelessOnePlayerdeDE                 = '';
SET @FacelessOnePlayerzhCN                 = '';
SET @FacelessOnePlayerzhTW                 = '';
SET @FacelessOnePlayeresES                 = '';
SET @FacelessOnePlayeresMX                 = '';
SET @FacelessOnePlayerruRU                 = '';
SET @FacelessOnePlayerjaJP                 = '';
SET @FacelessOnePlayerptPT                 = '';
SET @FacelessOnePlayeritIT                 = '';
SET @FacelessOnePlayerUnk1                 = '';
SET @FacelessOnePlayerUnk2                 = '';
SET @FacelessOnePlayerUnk3                 = '';
SET @FacelessOnePlayerUnk4                 = '';

-- Placeholder name and description
SET @FacelessOneFactionNameenUS            = 'The Unspoken';
SET @FacelessOneFactionNamekoKR            = '';
SET @FacelessOneFactionNamefrFR            = '';
SET @FacelessOneFactionNamedeDE            = '';
SET @FacelessOneFactionNamezhCN            = '';
SET @FacelessOneFactionNamezhTW            = '';
SET @FacelessOneFactionNameesES            = '';
SET @FacelessOneFactionNameesMX            = '';
SET @FacelessOneFactionNameruRU            = '';
SET @FacelessOneFactionNamejaJP            = '';
SET @FacelessOneFactionNameptPT            = '';
SET @FacelessOneFactionNameitIT            = '';
SET @FacelessOneFactionNameUnk1            = '';
SET @FacelessOneFactionNameUnk2            = '';
SET @FacelessOneFactionNameUnk3            = '';
SET @FacelessOneFactionNameUnk4            = '';

SET @FacelessOneFactionDescriptionenUS     = 'Faceless ones who slipped the whispers of the Old Gods and serve the Horde in silence.';
SET @FacelessOneFactionDescriptionkoKR     = '';
SET @FacelessOneFactionDescriptionfrFR     = '';
SET @FacelessOneFactionDescriptiondeDE     = '';
SET @FacelessOneFactionDescriptionzhCN     = '';
SET @FacelessOneFactionDescriptionzhTW     = '';
SET @FacelessOneFactionDescriptionesES     = '';
SET @FacelessOneFactionDescriptionesMX     = '';
SET @FacelessOneFactionDescriptionruRU     = '';
SET @FacelessOneFactionDescriptionjaJP     = '';
SET @FacelessOneFactionDescriptionptPT     = '';
SET @FacelessOneFactionDescriptionitIT     = '';
SET @FacelessOneFactionDescriptionUnk1     = '';
SET @FacelessOneFactionDescriptionUnk2     = '';
SET @FacelessOneFactionDescriptionUnk3     = '';
SET @FacelessOneFactionDescriptionUnk4     = '';

SET @FacelessOneAchievementenUS            = 'Realm First! Level 80 Faceless One';
SET @FacelessOneAchievementkoKR            = '';
SET @FacelessOneAchievementfrFR            = '';
SET @FacelessOneAchievementdeDE            = '';
SET @FacelessOneAchievementzhCN            = '';
SET @FacelessOneAchievementzhTW            = '';
SET @FacelessOneAchievementesES            = '';
SET @FacelessOneAchievementesMX            = '';
SET @FacelessOneAchievementruRU            = '';
SET @FacelessOneAchievementjaJP            = '';
SET @FacelessOneAchievementptPT            = '';
SET @FacelessOneAchievementitIT            = '';
SET @FacelessOneAchievementUnk1            = '';
SET @FacelessOneAchievementUnk2            = '';
SET @FacelessOneAchievementUnk3            = '';
SET @FacelessOneAchievementUnk4            = '';

SET @FacelessOneAchievementDescriptionenUS = 'First Faceless One on the realm to achieve level 80.';
SET @FacelessOneAchievementDescriptionkoKR = '';
SET @FacelessOneAchievementDescriptionfrFR = '';
SET @FacelessOneAchievementDescriptiondeDE = '';
SET @FacelessOneAchievementDescriptionzhCN = '';
SET @FacelessOneAchievementDescriptionzhTW = '';
SET @FacelessOneAchievementDescriptionesES = '';
SET @FacelessOneAchievementDescriptionesMX = '';
SET @FacelessOneAchievementDescriptionruRU = '';
SET @FacelessOneAchievementDescriptionjaJP = '';
SET @FacelessOneAchievementDescriptionptPT = '';
SET @FacelessOneAchievementDescriptionitIT = '';
SET @FacelessOneAchievementDescriptionUnk1 = '';
SET @FacelessOneAchievementDescriptionUnk2 = '';
SET @FacelessOneAchievementDescriptionUnk3 = '';
SET @FacelessOneAchievementDescriptionUnk4 = '';
