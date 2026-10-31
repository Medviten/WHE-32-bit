-- Race ID
SET @Ethereal                           := @NextRace := @NextRace +1;
SET @EtherealMask                       = 1 << (@Ethereal - 1);
SET @EtherealHelmetMask                 = 1 << @Ethereal;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @EtherealMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @EtherealMask;
SET @BowHunters                           = @BowHunters      | @EtherealMask;
SET @EtherealLanguage                      = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @EtherealAlliance                      = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @EtherealKnowThyEnemy                  = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @EtherealHome = @NightElf; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @EtherealKin = @Draenei; -- voice, emotes and names are copied from this race
SET @EtherealFlags = @NightElfFlags;
SET @EtherealExplorationSound = @NightElfExplorationSound;
SET @EtherealCinematicSequence = @NightElfCinematicSequence;
SET @EtherealBlood = 1;
SET @EtherealMaleModelPath = 'custom\\ethereal\\e\\etherial.m2'; -- CoA Custom 1.9 model (retail, prepared by coa_race_prep.py)
SET @EtherealFaction = 1249; -- vacant slot
SET @EtherealPlayer = 1250; -- vacant slot

-- Strings
SET @EtherealClientPrefix               = 'Be'; -- helmet models of this prefix
SET @EtherealClientString               = 'Ethereal';
SET @EtherealFacialHairCustomization1   = 'NORMAL';
SET @EtherealFacialHairCustomization2   = 'NORMAL';
SET @EtherealHairCustomization          = 'NORMAL';

-- Localization Strings
SET @EtherealenUS                       = 'Ethereal';
SET @EtherealkoKR                       = '';
SET @EtherealfrFR                       = '';
SET @EtherealdeDE                       = '';
SET @EtherealzhCN                       = '';
SET @EtherealzhTW                       = '';
SET @EtherealesES                       = '';
SET @EtherealesMX                       = '';
SET @EtherealruRU                       = '';
SET @EtherealjaJP                       = '';
SET @EtherealptPT                       = '';
SET @EtherealitIT                       = '';
SET @EtherealUnk1                       = '';
SET @EtherealUnk2                       = '';
SET @EtherealUnk3                       = '';
SET @EtherealUnk4                       = '';

SET @EtherealFemaleenUS                 = '';
SET @EtherealFemalekoKR                 = '';
SET @EtherealFemalefrFR                 = '';
SET @EtherealFemaledeDE                 = '';
SET @EtherealFemalezhCN                 = '';
SET @EtherealFemalezhTW                 = '';
SET @EtherealFemaleesES                 = '';
SET @EtherealFemaleesMX                 = '';
SET @EtherealFemaleruRU                 = '';
SET @EtherealFemalejaJP                 = '';
SET @EtherealFemaleptPT                 = '';
SET @EtherealFemaleitIT                 = '';
SET @EtherealFemaleUnk1                 = '';
SET @EtherealFemaleUnk2                 = '';
SET @EtherealFemaleUnk3                 = '';
SET @EtherealFemaleUnk4                 = '';

SET @EtherealMaleenUS                   = '';
SET @EtherealMalekoKR                   = '';
SET @EtherealMalefrFR                   = '';
SET @EtherealMaledeDE                   = '';
SET @EtherealMalezhCN                   = '';
SET @EtherealMalezhTW                   = '';
SET @EtherealMaleesES                   = '';
SET @EtherealMaleesMX                   = '';
SET @EtherealMaleruRU                   = '';
SET @EtherealMalejaJP                   = '';
SET @EtherealMaleptPT                   = '';
SET @EtherealMaleitIT                   = '';
SET @EtherealMaleUnk1                   = '';
SET @EtherealMaleUnk2                   = '';
SET @EtherealMaleUnk3                   = '';
SET @EtherealMaleUnk4                   = '';

SET @EtherealRacialNameenUS             = 'Racial - Ethereal';
SET @EtherealRacialNamekoKR             = '';
SET @EtherealRacialNamefrFR             = '';
SET @EtherealRacialNamedeDE             = '';
SET @EtherealRacialNamezhCN             = '';
SET @EtherealRacialNamezhTW             = '';
SET @EtherealRacialNameesES             = '';
SET @EtherealRacialNameesMX             = '';
SET @EtherealRacialNameruRU             = '';
SET @EtherealRacialNamejaJP             = '';
SET @EtherealRacialNameptPT             = '';
SET @EtherealRacialNameitIT             = '';
SET @EtherealRacialNameUnk1             = '';
SET @EtherealRacialNameUnk2             = '';
SET @EtherealRacialNameUnk3             = '';
SET @EtherealRacialNameUnk4             = '';

SET @EtherealPlayerenUS                 = '"PLAYER", Ethereal';
SET @EtherealPlayerkoKR                 = '';
SET @EtherealPlayerfrFR                 = '';
SET @EtherealPlayerdeDE                 = '';
SET @EtherealPlayerzhCN                 = '';
SET @EtherealPlayerzhTW                 = '';
SET @EtherealPlayeresES                 = '';
SET @EtherealPlayeresMX                 = '';
SET @EtherealPlayerruRU                 = '';
SET @EtherealPlayerjaJP                 = '';
SET @EtherealPlayerptPT                 = '';
SET @EtherealPlayeritIT                 = '';
SET @EtherealPlayerUnk1                 = '';
SET @EtherealPlayerUnk2                 = '';
SET @EtherealPlayerUnk3                 = '';
SET @EtherealPlayerUnk4                 = '';

-- Placeholder name and description
SET @EtherealFactionNameenUS            = 'Consortium Envoys';
SET @EtherealFactionNamekoKR            = '';
SET @EtherealFactionNamefrFR            = '';
SET @EtherealFactionNamedeDE            = '';
SET @EtherealFactionNamezhCN            = '';
SET @EtherealFactionNamezhTW            = '';
SET @EtherealFactionNameesES            = '';
SET @EtherealFactionNameesMX            = '';
SET @EtherealFactionNameruRU            = '';
SET @EtherealFactionNamejaJP            = '';
SET @EtherealFactionNameptPT            = '';
SET @EtherealFactionNameitIT            = '';
SET @EtherealFactionNameUnk1            = '';
SET @EtherealFactionNameUnk2            = '';
SET @EtherealFactionNameUnk3            = '';
SET @EtherealFactionNameUnk4            = '';

SET @EtherealFactionDescriptionenUS     = 'Ethereal traders who offer the Alliance their wares and their blades.';
SET @EtherealFactionDescriptionkoKR     = '';
SET @EtherealFactionDescriptionfrFR     = '';
SET @EtherealFactionDescriptiondeDE     = '';
SET @EtherealFactionDescriptionzhCN     = '';
SET @EtherealFactionDescriptionzhTW     = '';
SET @EtherealFactionDescriptionesES     = '';
SET @EtherealFactionDescriptionesMX     = '';
SET @EtherealFactionDescriptionruRU     = '';
SET @EtherealFactionDescriptionjaJP     = '';
SET @EtherealFactionDescriptionptPT     = '';
SET @EtherealFactionDescriptionitIT     = '';
SET @EtherealFactionDescriptionUnk1     = '';
SET @EtherealFactionDescriptionUnk2     = '';
SET @EtherealFactionDescriptionUnk3     = '';
SET @EtherealFactionDescriptionUnk4     = '';

SET @EtherealAchievementenUS            = 'Realm First! Level 80 Ethereal';
SET @EtherealAchievementkoKR            = '';
SET @EtherealAchievementfrFR            = '';
SET @EtherealAchievementdeDE            = '';
SET @EtherealAchievementzhCN            = '';
SET @EtherealAchievementzhTW            = '';
SET @EtherealAchievementesES            = '';
SET @EtherealAchievementesMX            = '';
SET @EtherealAchievementruRU            = '';
SET @EtherealAchievementjaJP            = '';
SET @EtherealAchievementptPT            = '';
SET @EtherealAchievementitIT            = '';
SET @EtherealAchievementUnk1            = '';
SET @EtherealAchievementUnk2            = '';
SET @EtherealAchievementUnk3            = '';
SET @EtherealAchievementUnk4            = '';

SET @EtherealAchievementDescriptionenUS = 'First Ethereal on the realm to achieve level 80.';
SET @EtherealAchievementDescriptionkoKR = '';
SET @EtherealAchievementDescriptionfrFR = '';
SET @EtherealAchievementDescriptiondeDE = '';
SET @EtherealAchievementDescriptionzhCN = '';
SET @EtherealAchievementDescriptionzhTW = '';
SET @EtherealAchievementDescriptionesES = '';
SET @EtherealAchievementDescriptionesMX = '';
SET @EtherealAchievementDescriptionruRU = '';
SET @EtherealAchievementDescriptionjaJP = '';
SET @EtherealAchievementDescriptionptPT = '';
SET @EtherealAchievementDescriptionitIT = '';
SET @EtherealAchievementDescriptionUnk1 = '';
SET @EtherealAchievementDescriptionUnk2 = '';
SET @EtherealAchievementDescriptionUnk3 = '';
SET @EtherealAchievementDescriptionUnk4 = '';
