-- Race ID
SET @Sylvari                           := @NextRace := @NextRace +1;
SET @SylvariMask                       = 1 << (@Sylvari - 1);
SET @SylvariHelmetMask                 = 1 << @Sylvari;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @SylvariMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @SylvariMask;
SET @BowHunters                           = @BowHunters      | @SylvariMask;
SET @SylvariLanguage                      = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @SylvariAlliance                      = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @SylvariKnowThyEnemy                  = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @SylvariHome = @NightElf; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @SylvariKin = @NightElf; -- voice, emotes and names are copied from this race
SET @SylvariFlags = @NightElfFlags;
SET @SylvariExplorationSound = @NightElfExplorationSound;
SET @SylvariCinematicSequence = @NightElfCinematicSequence;
SET @SylvariBlood = 1;
SET @SylvariMaleModelPath = 'custom\\vorkai\\fmm\\faunmale.m2'; -- CoA Custom 1.9 model (retail, prepared by coa_race_prep.py)
SET @SylvariFemaleModelPath = 'custom\\vorkai\\fnf00\\faunfemale.m2';
SET @SylvariFaction = 1245; -- vacant slot
SET @SylvariPlayer = 1246; -- vacant slot

-- Strings
SET @SylvariClientPrefix               = 'Be'; -- helmet models of this prefix
SET @SylvariClientString               = 'Sylvari';
SET @SylvariFacialHairCustomization1   = 'NORMAL';
SET @SylvariFacialHairCustomization2   = 'NORMAL';
SET @SylvariHairCustomization          = 'NORMAL';

-- Localization Strings
SET @SylvarienUS                       = 'Sylvari';
SET @SylvarikoKR                       = '';
SET @SylvarifrFR                       = '';
SET @SylvarideDE                       = '';
SET @SylvarizhCN                       = '';
SET @SylvarizhTW                       = '';
SET @SylvariesES                       = '';
SET @SylvariesMX                       = '';
SET @SylvariruRU                       = '';
SET @SylvarijaJP                       = '';
SET @SylvariptPT                       = '';
SET @SylvariitIT                       = '';
SET @SylvariUnk1                       = '';
SET @SylvariUnk2                       = '';
SET @SylvariUnk3                       = '';
SET @SylvariUnk4                       = '';

SET @SylvariFemaleenUS                 = '';
SET @SylvariFemalekoKR                 = '';
SET @SylvariFemalefrFR                 = '';
SET @SylvariFemaledeDE                 = '';
SET @SylvariFemalezhCN                 = '';
SET @SylvariFemalezhTW                 = '';
SET @SylvariFemaleesES                 = '';
SET @SylvariFemaleesMX                 = '';
SET @SylvariFemaleruRU                 = '';
SET @SylvariFemalejaJP                 = '';
SET @SylvariFemaleptPT                 = '';
SET @SylvariFemaleitIT                 = '';
SET @SylvariFemaleUnk1                 = '';
SET @SylvariFemaleUnk2                 = '';
SET @SylvariFemaleUnk3                 = '';
SET @SylvariFemaleUnk4                 = '';

SET @SylvariMaleenUS                   = '';
SET @SylvariMalekoKR                   = '';
SET @SylvariMalefrFR                   = '';
SET @SylvariMaledeDE                   = '';
SET @SylvariMalezhCN                   = '';
SET @SylvariMalezhTW                   = '';
SET @SylvariMaleesES                   = '';
SET @SylvariMaleesMX                   = '';
SET @SylvariMaleruRU                   = '';
SET @SylvariMalejaJP                   = '';
SET @SylvariMaleptPT                   = '';
SET @SylvariMaleitIT                   = '';
SET @SylvariMaleUnk1                   = '';
SET @SylvariMaleUnk2                   = '';
SET @SylvariMaleUnk3                   = '';
SET @SylvariMaleUnk4                   = '';

SET @SylvariRacialNameenUS             = 'Racial - Sylvari';
SET @SylvariRacialNamekoKR             = '';
SET @SylvariRacialNamefrFR             = '';
SET @SylvariRacialNamedeDE             = '';
SET @SylvariRacialNamezhCN             = '';
SET @SylvariRacialNamezhTW             = '';
SET @SylvariRacialNameesES             = '';
SET @SylvariRacialNameesMX             = '';
SET @SylvariRacialNameruRU             = '';
SET @SylvariRacialNamejaJP             = '';
SET @SylvariRacialNameptPT             = '';
SET @SylvariRacialNameitIT             = '';
SET @SylvariRacialNameUnk1             = '';
SET @SylvariRacialNameUnk2             = '';
SET @SylvariRacialNameUnk3             = '';
SET @SylvariRacialNameUnk4             = '';

SET @SylvariPlayerenUS                 = '"PLAYER", Sylvari';
SET @SylvariPlayerkoKR                 = '';
SET @SylvariPlayerfrFR                 = '';
SET @SylvariPlayerdeDE                 = '';
SET @SylvariPlayerzhCN                 = '';
SET @SylvariPlayerzhTW                 = '';
SET @SylvariPlayeresES                 = '';
SET @SylvariPlayeresMX                 = '';
SET @SylvariPlayerruRU                 = '';
SET @SylvariPlayerjaJP                 = '';
SET @SylvariPlayerptPT                 = '';
SET @SylvariPlayeritIT                 = '';
SET @SylvariPlayerUnk1                 = '';
SET @SylvariPlayerUnk2                 = '';
SET @SylvariPlayerUnk3                 = '';
SET @SylvariPlayerUnk4                 = '';

-- Placeholder name and description
SET @SylvariFactionNameenUS            = 'Grove Wardens';
SET @SylvariFactionNamekoKR            = '';
SET @SylvariFactionNamefrFR            = '';
SET @SylvariFactionNamedeDE            = '';
SET @SylvariFactionNamezhCN            = '';
SET @SylvariFactionNamezhTW            = '';
SET @SylvariFactionNameesES            = '';
SET @SylvariFactionNameesMX            = '';
SET @SylvariFactionNameruRU            = '';
SET @SylvariFactionNamejaJP            = '';
SET @SylvariFactionNameptPT            = '';
SET @SylvariFactionNameitIT            = '';
SET @SylvariFactionNameUnk1            = '';
SET @SylvariFactionNameUnk2            = '';
SET @SylvariFactionNameUnk3            = '';
SET @SylvariFactionNameUnk4            = '';

SET @SylvariFactionDescriptionenUS     = 'Fauns and dryads of the forest who guard the groves beside the night elves.';
SET @SylvariFactionDescriptionkoKR     = '';
SET @SylvariFactionDescriptionfrFR     = '';
SET @SylvariFactionDescriptiondeDE     = '';
SET @SylvariFactionDescriptionzhCN     = '';
SET @SylvariFactionDescriptionzhTW     = '';
SET @SylvariFactionDescriptionesES     = '';
SET @SylvariFactionDescriptionesMX     = '';
SET @SylvariFactionDescriptionruRU     = '';
SET @SylvariFactionDescriptionjaJP     = '';
SET @SylvariFactionDescriptionptPT     = '';
SET @SylvariFactionDescriptionitIT     = '';
SET @SylvariFactionDescriptionUnk1     = '';
SET @SylvariFactionDescriptionUnk2     = '';
SET @SylvariFactionDescriptionUnk3     = '';
SET @SylvariFactionDescriptionUnk4     = '';

SET @SylvariAchievementenUS            = 'Realm First! Level 80 Sylvari';
SET @SylvariAchievementkoKR            = '';
SET @SylvariAchievementfrFR            = '';
SET @SylvariAchievementdeDE            = '';
SET @SylvariAchievementzhCN            = '';
SET @SylvariAchievementzhTW            = '';
SET @SylvariAchievementesES            = '';
SET @SylvariAchievementesMX            = '';
SET @SylvariAchievementruRU            = '';
SET @SylvariAchievementjaJP            = '';
SET @SylvariAchievementptPT            = '';
SET @SylvariAchievementitIT            = '';
SET @SylvariAchievementUnk1            = '';
SET @SylvariAchievementUnk2            = '';
SET @SylvariAchievementUnk3            = '';
SET @SylvariAchievementUnk4            = '';

SET @SylvariAchievementDescriptionenUS = 'First Sylvari on the realm to achieve level 80.';
SET @SylvariAchievementDescriptionkoKR = '';
SET @SylvariAchievementDescriptionfrFR = '';
SET @SylvariAchievementDescriptiondeDE = '';
SET @SylvariAchievementDescriptionzhCN = '';
SET @SylvariAchievementDescriptionzhTW = '';
SET @SylvariAchievementDescriptionesES = '';
SET @SylvariAchievementDescriptionesMX = '';
SET @SylvariAchievementDescriptionruRU = '';
SET @SylvariAchievementDescriptionjaJP = '';
SET @SylvariAchievementDescriptionptPT = '';
SET @SylvariAchievementDescriptionitIT = '';
SET @SylvariAchievementDescriptionUnk1 = '';
SET @SylvariAchievementDescriptionUnk2 = '';
SET @SylvariAchievementDescriptionUnk3 = '';
SET @SylvariAchievementDescriptionUnk4 = '';
