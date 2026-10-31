-- Race ID
SET @Mantid                           := @NextRace := @NextRace +1;
SET @MantidMask                       = 1 << (@Mantid - 1);
SET @MantidHelmetMask                 = 1 << @Mantid;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @MantidMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @MantidMask;
SET @BowHunters                           = @BowHunters        | @MantidMask;
SET @MantidLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @MantidAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @MantidKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @MantidHome = @Tauren; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @MantidKin = @Tauren; -- voice, emotes and names are copied from this race
SET @MantidFlags = @TaurenFlags;
SET @MantidExplorationSound = @TaurenExplorationSound;
SET @MantidCinematicSequence = @TaurenCinematicSequence;
SET @MantidBlood = 1;
SET @MantidMaleModelPath = 'custom\\mantid\\mt00\\mantid.m2'; -- CoA Custom 1.9 model (retail, prepared by coa_race_prep.py)
SET @MantidFaction = 1247; -- vacant slot
SET @MantidPlayer = 1248; -- vacant slot

-- Strings
SET @MantidClientPrefix               = 'Be'; -- helmet models of this prefix
SET @MantidClientString               = 'Mantid';
SET @MantidFacialHairCustomization1   = 'NORMAL';
SET @MantidFacialHairCustomization2   = 'NORMAL';
SET @MantidHairCustomization          = 'NORMAL';

-- Localization Strings
SET @MantidenUS                       = 'Mantid';
SET @MantidkoKR                       = '';
SET @MantidfrFR                       = '';
SET @MantiddeDE                       = '';
SET @MantidzhCN                       = '';
SET @MantidzhTW                       = '';
SET @MantidesES                       = '';
SET @MantidesMX                       = '';
SET @MantidruRU                       = '';
SET @MantidjaJP                       = '';
SET @MantidptPT                       = '';
SET @MantiditIT                       = '';
SET @MantidUnk1                       = '';
SET @MantidUnk2                       = '';
SET @MantidUnk3                       = '';
SET @MantidUnk4                       = '';

SET @MantidFemaleenUS                 = '';
SET @MantidFemalekoKR                 = '';
SET @MantidFemalefrFR                 = '';
SET @MantidFemaledeDE                 = '';
SET @MantidFemalezhCN                 = '';
SET @MantidFemalezhTW                 = '';
SET @MantidFemaleesES                 = '';
SET @MantidFemaleesMX                 = '';
SET @MantidFemaleruRU                 = '';
SET @MantidFemalejaJP                 = '';
SET @MantidFemaleptPT                 = '';
SET @MantidFemaleitIT                 = '';
SET @MantidFemaleUnk1                 = '';
SET @MantidFemaleUnk2                 = '';
SET @MantidFemaleUnk3                 = '';
SET @MantidFemaleUnk4                 = '';

SET @MantidMaleenUS                   = '';
SET @MantidMalekoKR                   = '';
SET @MantidMalefrFR                   = '';
SET @MantidMaledeDE                   = '';
SET @MantidMalezhCN                   = '';
SET @MantidMalezhTW                   = '';
SET @MantidMaleesES                   = '';
SET @MantidMaleesMX                   = '';
SET @MantidMaleruRU                   = '';
SET @MantidMalejaJP                   = '';
SET @MantidMaleptPT                   = '';
SET @MantidMaleitIT                   = '';
SET @MantidMaleUnk1                   = '';
SET @MantidMaleUnk2                   = '';
SET @MantidMaleUnk3                   = '';
SET @MantidMaleUnk4                   = '';

SET @MantidRacialNameenUS             = 'Racial - Mantid';
SET @MantidRacialNamekoKR             = '';
SET @MantidRacialNamefrFR             = '';
SET @MantidRacialNamedeDE             = '';
SET @MantidRacialNamezhCN             = '';
SET @MantidRacialNamezhTW             = '';
SET @MantidRacialNameesES             = '';
SET @MantidRacialNameesMX             = '';
SET @MantidRacialNameruRU             = '';
SET @MantidRacialNamejaJP             = '';
SET @MantidRacialNameptPT             = '';
SET @MantidRacialNameitIT             = '';
SET @MantidRacialNameUnk1             = '';
SET @MantidRacialNameUnk2             = '';
SET @MantidRacialNameUnk3             = '';
SET @MantidRacialNameUnk4             = '';

SET @MantidPlayerenUS                 = '"PLAYER", Mantid';
SET @MantidPlayerkoKR                 = '';
SET @MantidPlayerfrFR                 = '';
SET @MantidPlayerdeDE                 = '';
SET @MantidPlayerzhCN                 = '';
SET @MantidPlayerzhTW                 = '';
SET @MantidPlayeresES                 = '';
SET @MantidPlayeresMX                 = '';
SET @MantidPlayerruRU                 = '';
SET @MantidPlayerjaJP                 = '';
SET @MantidPlayerptPT                 = '';
SET @MantidPlayeritIT                 = '';
SET @MantidPlayerUnk1                 = '';
SET @MantidPlayerUnk2                 = '';
SET @MantidPlayerUnk3                 = '';
SET @MantidPlayerUnk4                 = '';

-- Placeholder name and description
SET @MantidFactionNameenUS            = 'Klaxxi Exiles';
SET @MantidFactionNamekoKR            = '';
SET @MantidFactionNamefrFR            = '';
SET @MantidFactionNamedeDE            = '';
SET @MantidFactionNamezhCN            = '';
SET @MantidFactionNamezhTW            = '';
SET @MantidFactionNameesES            = '';
SET @MantidFactionNameesMX            = '';
SET @MantidFactionNameruRU            = '';
SET @MantidFactionNamejaJP            = '';
SET @MantidFactionNameptPT            = '';
SET @MantidFactionNameitIT            = '';
SET @MantidFactionNameUnk1            = '';
SET @MantidFactionNameUnk2            = '';
SET @MantidFactionNameUnk3            = '';
SET @MantidFactionNameUnk4            = '';

SET @MantidFactionDescriptionenUS     = 'Mantid paragons who broke with the Empress and found a new hive in the Horde.';
SET @MantidFactionDescriptionkoKR     = '';
SET @MantidFactionDescriptionfrFR     = '';
SET @MantidFactionDescriptiondeDE     = '';
SET @MantidFactionDescriptionzhCN     = '';
SET @MantidFactionDescriptionzhTW     = '';
SET @MantidFactionDescriptionesES     = '';
SET @MantidFactionDescriptionesMX     = '';
SET @MantidFactionDescriptionruRU     = '';
SET @MantidFactionDescriptionjaJP     = '';
SET @MantidFactionDescriptionptPT     = '';
SET @MantidFactionDescriptionitIT     = '';
SET @MantidFactionDescriptionUnk1     = '';
SET @MantidFactionDescriptionUnk2     = '';
SET @MantidFactionDescriptionUnk3     = '';
SET @MantidFactionDescriptionUnk4     = '';

SET @MantidAchievementenUS            = 'Realm First! Level 80 Mantid';
SET @MantidAchievementkoKR            = '';
SET @MantidAchievementfrFR            = '';
SET @MantidAchievementdeDE            = '';
SET @MantidAchievementzhCN            = '';
SET @MantidAchievementzhTW            = '';
SET @MantidAchievementesES            = '';
SET @MantidAchievementesMX            = '';
SET @MantidAchievementruRU            = '';
SET @MantidAchievementjaJP            = '';
SET @MantidAchievementptPT            = '';
SET @MantidAchievementitIT            = '';
SET @MantidAchievementUnk1            = '';
SET @MantidAchievementUnk2            = '';
SET @MantidAchievementUnk3            = '';
SET @MantidAchievementUnk4            = '';

SET @MantidAchievementDescriptionenUS = 'First Mantid on the realm to achieve level 80.';
SET @MantidAchievementDescriptionkoKR = '';
SET @MantidAchievementDescriptionfrFR = '';
SET @MantidAchievementDescriptiondeDE = '';
SET @MantidAchievementDescriptionzhCN = '';
SET @MantidAchievementDescriptionzhTW = '';
SET @MantidAchievementDescriptionesES = '';
SET @MantidAchievementDescriptionesMX = '';
SET @MantidAchievementDescriptionruRU = '';
SET @MantidAchievementDescriptionjaJP = '';
SET @MantidAchievementDescriptionptPT = '';
SET @MantidAchievementDescriptionitIT = '';
SET @MantidAchievementDescriptionUnk1 = '';
SET @MantidAchievementDescriptionUnk2 = '';
SET @MantidAchievementDescriptionUnk3 = '';
SET @MantidAchievementDescriptionUnk4 = '';
