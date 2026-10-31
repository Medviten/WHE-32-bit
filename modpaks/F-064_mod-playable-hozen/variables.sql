-- Race ID
SET @Hozen                           := @NextRace := @NextRace +1;
SET @HozenMask                       = 1 << (@Hozen - 1);
SET @HozenHelmetMask                 = 1 << @Hozen;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @HozenMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @HozenMask;
SET @BowHunters                           = @BowHunters      | @HozenMask;
SET @HozenLanguage                      = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @HozenAlliance                      = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @HozenKnowThyEnemy                  = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @HozenHome = @Human; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @HozenKin = @Tauren; -- voice, emotes and names are copied from this race
SET @HozenFlags = @HumanFlags;
SET @HozenExplorationSound = @HumanExplorationSound;
SET @HozenCinematicSequence = @HumanCinematicSequence;
SET @HozenBlood = 1;
SET @HozenMaleModelPath = 'custom\\hozen\\unknown\\536927.m2'; -- CoA Custom 1.9 model (retail, prepared by coa_race_prep.py)
SET @HozenFaction = 1243; -- vacant slot
SET @HozenPlayer = 1244; -- vacant slot

-- Strings
SET @HozenClientPrefix               = 'Hu'; -- helmet models of this prefix
SET @HozenClientString               = 'Hozen';
SET @HozenFacialHairCustomization1   = 'NORMAL';
SET @HozenFacialHairCustomization2   = 'NORMAL';
SET @HozenHairCustomization          = 'NORMAL';

-- Localization Strings
SET @HozenenUS                       = 'Hozen';
SET @HozenkoKR                       = '';
SET @HozenfrFR                       = '';
SET @HozendeDE                       = '';
SET @HozenzhCN                       = '';
SET @HozenzhTW                       = '';
SET @HozenesES                       = '';
SET @HozenesMX                       = '';
SET @HozenruRU                       = '';
SET @HozenjaJP                       = '';
SET @HozenptPT                       = '';
SET @HozenitIT                       = '';
SET @HozenUnk1                       = '';
SET @HozenUnk2                       = '';
SET @HozenUnk3                       = '';
SET @HozenUnk4                       = '';

SET @HozenFemaleenUS                 = '';
SET @HozenFemalekoKR                 = '';
SET @HozenFemalefrFR                 = '';
SET @HozenFemaledeDE                 = '';
SET @HozenFemalezhCN                 = '';
SET @HozenFemalezhTW                 = '';
SET @HozenFemaleesES                 = '';
SET @HozenFemaleesMX                 = '';
SET @HozenFemaleruRU                 = '';
SET @HozenFemalejaJP                 = '';
SET @HozenFemaleptPT                 = '';
SET @HozenFemaleitIT                 = '';
SET @HozenFemaleUnk1                 = '';
SET @HozenFemaleUnk2                 = '';
SET @HozenFemaleUnk3                 = '';
SET @HozenFemaleUnk4                 = '';

SET @HozenMaleenUS                   = '';
SET @HozenMalekoKR                   = '';
SET @HozenMalefrFR                   = '';
SET @HozenMaledeDE                   = '';
SET @HozenMalezhCN                   = '';
SET @HozenMalezhTW                   = '';
SET @HozenMaleesES                   = '';
SET @HozenMaleesMX                   = '';
SET @HozenMaleruRU                   = '';
SET @HozenMalejaJP                   = '';
SET @HozenMaleptPT                   = '';
SET @HozenMaleitIT                   = '';
SET @HozenMaleUnk1                   = '';
SET @HozenMaleUnk2                   = '';
SET @HozenMaleUnk3                   = '';
SET @HozenMaleUnk4                   = '';

SET @HozenRacialNameenUS             = 'Racial - Hozen';
SET @HozenRacialNamekoKR             = '';
SET @HozenRacialNamefrFR             = '';
SET @HozenRacialNamedeDE             = '';
SET @HozenRacialNamezhCN             = '';
SET @HozenRacialNamezhTW             = '';
SET @HozenRacialNameesES             = '';
SET @HozenRacialNameesMX             = '';
SET @HozenRacialNameruRU             = '';
SET @HozenRacialNamejaJP             = '';
SET @HozenRacialNameptPT             = '';
SET @HozenRacialNameitIT             = '';
SET @HozenRacialNameUnk1             = '';
SET @HozenRacialNameUnk2             = '';
SET @HozenRacialNameUnk3             = '';
SET @HozenRacialNameUnk4             = '';

SET @HozenPlayerenUS                 = '"PLAYER", Hozen';
SET @HozenPlayerkoKR                 = '';
SET @HozenPlayerfrFR                 = '';
SET @HozenPlayerdeDE                 = '';
SET @HozenPlayerzhCN                 = '';
SET @HozenPlayerzhTW                 = '';
SET @HozenPlayeresES                 = '';
SET @HozenPlayeresMX                 = '';
SET @HozenPlayerruRU                 = '';
SET @HozenPlayerjaJP                 = '';
SET @HozenPlayerptPT                 = '';
SET @HozenPlayeritIT                 = '';
SET @HozenPlayerUnk1                 = '';
SET @HozenPlayerUnk2                 = '';
SET @HozenPlayerUnk3                 = '';
SET @HozenPlayerUnk4                 = '';

-- Placeholder name and description
SET @HozenFactionNameenUS            = 'Hozen of the Jade Forest';
SET @HozenFactionNamekoKR            = '';
SET @HozenFactionNamefrFR            = '';
SET @HozenFactionNamedeDE            = '';
SET @HozenFactionNamezhCN            = '';
SET @HozenFactionNamezhTW            = '';
SET @HozenFactionNameesES            = '';
SET @HozenFactionNameesMX            = '';
SET @HozenFactionNameruRU            = '';
SET @HozenFactionNamejaJP            = '';
SET @HozenFactionNameptPT            = '';
SET @HozenFactionNameitIT            = '';
SET @HozenFactionNameUnk1            = '';
SET @HozenFactionNameUnk2            = '';
SET @HozenFactionNameUnk3            = '';
SET @HozenFactionNameUnk4            = '';

SET @HozenFactionDescriptionenUS     = 'Hozen who left the Jade Forest to see the wider world, and stayed for the bananas.';
SET @HozenFactionDescriptionkoKR     = '';
SET @HozenFactionDescriptionfrFR     = '';
SET @HozenFactionDescriptiondeDE     = '';
SET @HozenFactionDescriptionzhCN     = '';
SET @HozenFactionDescriptionzhTW     = '';
SET @HozenFactionDescriptionesES     = '';
SET @HozenFactionDescriptionesMX     = '';
SET @HozenFactionDescriptionruRU     = '';
SET @HozenFactionDescriptionjaJP     = '';
SET @HozenFactionDescriptionptPT     = '';
SET @HozenFactionDescriptionitIT     = '';
SET @HozenFactionDescriptionUnk1     = '';
SET @HozenFactionDescriptionUnk2     = '';
SET @HozenFactionDescriptionUnk3     = '';
SET @HozenFactionDescriptionUnk4     = '';

SET @HozenAchievementenUS            = 'Realm First! Level 80 Hozen';
SET @HozenAchievementkoKR            = '';
SET @HozenAchievementfrFR            = '';
SET @HozenAchievementdeDE            = '';
SET @HozenAchievementzhCN            = '';
SET @HozenAchievementzhTW            = '';
SET @HozenAchievementesES            = '';
SET @HozenAchievementesMX            = '';
SET @HozenAchievementruRU            = '';
SET @HozenAchievementjaJP            = '';
SET @HozenAchievementptPT            = '';
SET @HozenAchievementitIT            = '';
SET @HozenAchievementUnk1            = '';
SET @HozenAchievementUnk2            = '';
SET @HozenAchievementUnk3            = '';
SET @HozenAchievementUnk4            = '';

SET @HozenAchievementDescriptionenUS = 'First Hozen on the realm to achieve level 80.';
SET @HozenAchievementDescriptionkoKR = '';
SET @HozenAchievementDescriptionfrFR = '';
SET @HozenAchievementDescriptiondeDE = '';
SET @HozenAchievementDescriptionzhCN = '';
SET @HozenAchievementDescriptionzhTW = '';
SET @HozenAchievementDescriptionesES = '';
SET @HozenAchievementDescriptionesMX = '';
SET @HozenAchievementDescriptionruRU = '';
SET @HozenAchievementDescriptionjaJP = '';
SET @HozenAchievementDescriptionptPT = '';
SET @HozenAchievementDescriptionitIT = '';
SET @HozenAchievementDescriptionUnk1 = '';
SET @HozenAchievementDescriptionUnk2 = '';
SET @HozenAchievementDescriptionUnk3 = '';
SET @HozenAchievementDescriptionUnk4 = '';
