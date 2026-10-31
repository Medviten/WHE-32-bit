-- Race ID
SET @Kyrian                           := @NextRace := @NextRace +1;
SET @KyrianMask                       = 1 << (@Kyrian - 1);
SET @KyrianHelmetMask                 = 1 << @Kyrian;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @KyrianMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @KyrianMask;
SET @BowHunters                           = @BowHunters      | @KyrianMask;
SET @KyrianLanguage                      = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @KyrianAlliance                      = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @KyrianKnowThyEnemy                  = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @KyrianHome = @NightElf; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @KyrianKin = @Draenei; -- voice, emotes and names are copied from this race
SET @KyrianFlags = @NightElfFlags;
SET @KyrianExplorationSound = @NightElfExplorationSound;
SET @KyrianCinematicSequence = @NightElfCinematicSequence;
SET @KyrianBlood = 1;
SET @KyrianMaleModelPath = 'custom\\kyrian\\native\\kyrianmale.m2'; -- Aetheria model (retail, prepared by coa_race_prep.py)
SET @KyrianFemaleModelPath = 'custom\\kyrian\\native\\kyrianfemale.m2';
SET @KyrianFaction = 1251; -- vacant slot
SET @KyrianPlayer = 1252; -- vacant slot

-- Strings
SET @KyrianClientPrefix               = 'Dr'; -- helmet models of this prefix
SET @KyrianClientString               = 'Kyrian';
SET @KyrianFacialHairCustomization1   = 'NORMAL';
SET @KyrianFacialHairCustomization2   = 'NORMAL';
SET @KyrianHairCustomization          = 'NORMAL';

-- Localization Strings
SET @KyrianenUS                       = 'Kyrian';
SET @KyriankoKR                       = '';
SET @KyrianfrFR                       = '';
SET @KyriandeDE                       = '';
SET @KyrianzhCN                       = '';
SET @KyrianzhTW                       = '';
SET @KyrianesES                       = '';
SET @KyrianesMX                       = '';
SET @KyrianruRU                       = '';
SET @KyrianjaJP                       = '';
SET @KyrianptPT                       = '';
SET @KyrianitIT                       = '';
SET @KyrianUnk1                       = '';
SET @KyrianUnk2                       = '';
SET @KyrianUnk3                       = '';
SET @KyrianUnk4                       = '';

SET @KyrianFemaleenUS                 = '';
SET @KyrianFemalekoKR                 = '';
SET @KyrianFemalefrFR                 = '';
SET @KyrianFemaledeDE                 = '';
SET @KyrianFemalezhCN                 = '';
SET @KyrianFemalezhTW                 = '';
SET @KyrianFemaleesES                 = '';
SET @KyrianFemaleesMX                 = '';
SET @KyrianFemaleruRU                 = '';
SET @KyrianFemalejaJP                 = '';
SET @KyrianFemaleptPT                 = '';
SET @KyrianFemaleitIT                 = '';
SET @KyrianFemaleUnk1                 = '';
SET @KyrianFemaleUnk2                 = '';
SET @KyrianFemaleUnk3                 = '';
SET @KyrianFemaleUnk4                 = '';

SET @KyrianMaleenUS                   = '';
SET @KyrianMalekoKR                   = '';
SET @KyrianMalefrFR                   = '';
SET @KyrianMaledeDE                   = '';
SET @KyrianMalezhCN                   = '';
SET @KyrianMalezhTW                   = '';
SET @KyrianMaleesES                   = '';
SET @KyrianMaleesMX                   = '';
SET @KyrianMaleruRU                   = '';
SET @KyrianMalejaJP                   = '';
SET @KyrianMaleptPT                   = '';
SET @KyrianMaleitIT                   = '';
SET @KyrianMaleUnk1                   = '';
SET @KyrianMaleUnk2                   = '';
SET @KyrianMaleUnk3                   = '';
SET @KyrianMaleUnk4                   = '';

SET @KyrianRacialNameenUS             = 'Racial - Kyrian';
SET @KyrianRacialNamekoKR             = '';
SET @KyrianRacialNamefrFR             = '';
SET @KyrianRacialNamedeDE             = '';
SET @KyrianRacialNamezhCN             = '';
SET @KyrianRacialNamezhTW             = '';
SET @KyrianRacialNameesES             = '';
SET @KyrianRacialNameesMX             = '';
SET @KyrianRacialNameruRU             = '';
SET @KyrianRacialNamejaJP             = '';
SET @KyrianRacialNameptPT             = '';
SET @KyrianRacialNameitIT             = '';
SET @KyrianRacialNameUnk1             = '';
SET @KyrianRacialNameUnk2             = '';
SET @KyrianRacialNameUnk3             = '';
SET @KyrianRacialNameUnk4             = '';

SET @KyrianPlayerenUS                 = '"PLAYER", Kyrian';
SET @KyrianPlayerkoKR                 = '';
SET @KyrianPlayerfrFR                 = '';
SET @KyrianPlayerdeDE                 = '';
SET @KyrianPlayerzhCN                 = '';
SET @KyrianPlayerzhTW                 = '';
SET @KyrianPlayeresES                 = '';
SET @KyrianPlayeresMX                 = '';
SET @KyrianPlayerruRU                 = '';
SET @KyrianPlayerjaJP                 = '';
SET @KyrianPlayerptPT                 = '';
SET @KyrianPlayeritIT                 = '';
SET @KyrianPlayerUnk1                 = '';
SET @KyrianPlayerUnk2                 = '';
SET @KyrianPlayerUnk3                 = '';
SET @KyrianPlayerUnk4                 = '';

-- Placeholder name and description
SET @KyrianFactionNameenUS            = 'Ascended of Bastion';
SET @KyrianFactionNamekoKR            = '';
SET @KyrianFactionNamefrFR            = '';
SET @KyrianFactionNamedeDE            = '';
SET @KyrianFactionNamezhCN            = '';
SET @KyrianFactionNamezhTW            = '';
SET @KyrianFactionNameesES            = '';
SET @KyrianFactionNameesMX            = '';
SET @KyrianFactionNameruRU            = '';
SET @KyrianFactionNamejaJP            = '';
SET @KyrianFactionNameptPT            = '';
SET @KyrianFactionNameitIT            = '';
SET @KyrianFactionNameUnk1            = '';
SET @KyrianFactionNameUnk2            = '';
SET @KyrianFactionNameUnk3            = '';
SET @KyrianFactionNameUnk4            = '';

SET @KyrianFactionDescriptionenUS     = 'Winged stewards of Bastion who left the Path of Ascension to guard the living.';
SET @KyrianFactionDescriptionkoKR     = '';
SET @KyrianFactionDescriptionfrFR     = '';
SET @KyrianFactionDescriptiondeDE     = '';
SET @KyrianFactionDescriptionzhCN     = '';
SET @KyrianFactionDescriptionzhTW     = '';
SET @KyrianFactionDescriptionesES     = '';
SET @KyrianFactionDescriptionesMX     = '';
SET @KyrianFactionDescriptionruRU     = '';
SET @KyrianFactionDescriptionjaJP     = '';
SET @KyrianFactionDescriptionptPT     = '';
SET @KyrianFactionDescriptionitIT     = '';
SET @KyrianFactionDescriptionUnk1     = '';
SET @KyrianFactionDescriptionUnk2     = '';
SET @KyrianFactionDescriptionUnk3     = '';
SET @KyrianFactionDescriptionUnk4     = '';

SET @KyrianAchievementenUS            = 'Realm First! Level 80 Kyrian';
SET @KyrianAchievementkoKR            = '';
SET @KyrianAchievementfrFR            = '';
SET @KyrianAchievementdeDE            = '';
SET @KyrianAchievementzhCN            = '';
SET @KyrianAchievementzhTW            = '';
SET @KyrianAchievementesES            = '';
SET @KyrianAchievementesMX            = '';
SET @KyrianAchievementruRU            = '';
SET @KyrianAchievementjaJP            = '';
SET @KyrianAchievementptPT            = '';
SET @KyrianAchievementitIT            = '';
SET @KyrianAchievementUnk1            = '';
SET @KyrianAchievementUnk2            = '';
SET @KyrianAchievementUnk3            = '';
SET @KyrianAchievementUnk4            = '';

SET @KyrianAchievementDescriptionenUS = 'First Kyrian on the realm to achieve level 80.';
SET @KyrianAchievementDescriptionkoKR = '';
SET @KyrianAchievementDescriptionfrFR = '';
SET @KyrianAchievementDescriptiondeDE = '';
SET @KyrianAchievementDescriptionzhCN = '';
SET @KyrianAchievementDescriptionzhTW = '';
SET @KyrianAchievementDescriptionesES = '';
SET @KyrianAchievementDescriptionesMX = '';
SET @KyrianAchievementDescriptionruRU = '';
SET @KyrianAchievementDescriptionjaJP = '';
SET @KyrianAchievementDescriptionptPT = '';
SET @KyrianAchievementDescriptionitIT = '';
SET @KyrianAchievementDescriptionUnk1 = '';
SET @KyrianAchievementDescriptionUnk2 = '';
SET @KyrianAchievementDescriptionUnk3 = '';
SET @KyrianAchievementDescriptionUnk4 = '';
