-- Race ID
SET @AllianceHaranir                           := @NextRace := @NextRace +1;
SET @AllianceHaranirMask                       = 1 << (@AllianceHaranir - 1);
SET @AllianceHaranirHelmetMask                 = 1 << @AllianceHaranir;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @AllianceHaranirMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @AllianceHaranirMask;
SET @BowHunters                           = @BowHunters      | @AllianceHaranirMask;
SET @AllianceHaranirLanguage                      = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @AllianceHaranirAlliance                      = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @AllianceHaranirKnowThyEnemy                  = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @AllianceHaranirHome = @NightElf; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @AllianceHaranirKin = @NightElf; -- voice, emotes and names are copied from this race
SET @AllianceHaranirFlags = @NightElfFlags;
SET @AllianceHaranirExplorationSound = @NightElfExplorationSound;
SET @AllianceHaranirCinematicSequence = @NightElfCinematicSequence;
SET @AllianceHaranirBlood = 1;
SET @AllianceHaranirMaleModelPath = 'custom\\haranir\\native\\male\\harronirmale.mdx';
SET @AllianceHaranirFemaleModelPath = 'custom\\haranir\\native\\female\\harronirfemale.mdx';
SET @AllianceHaranirFaction = 1311; -- vacant slot
SET @AllianceHaranirPlayer = 1312; -- vacant slot

-- Strings
SET @AllianceHaranirClientPrefix               = 'Ni'; -- helmet models of this prefix
SET @AllianceHaranirClientString               = 'AllianceHaranir';
SET @AllianceHaranirFacialHairCustomization1   = 'NORMAL';
SET @AllianceHaranirFacialHairCustomization2   = 'MARKINGS';
SET @AllianceHaranirHairCustomization          = 'NORMAL';

-- Localization Strings
SET @AllianceHaranirenUS                       = 'Haranir';
SET @AllianceHaranirkoKR                       = '';
SET @AllianceHaranirfrFR                       = '';
SET @AllianceHaranirdeDE                       = '';
SET @AllianceHaranirzhCN                       = '';
SET @AllianceHaranirzhTW                       = '';
SET @AllianceHaraniresES                       = '';
SET @AllianceHaraniresMX                       = '';
SET @AllianceHaranirruRU                       = '';
SET @AllianceHaranirjaJP                       = '';
SET @AllianceHaranirptPT                       = '';
SET @AllianceHaraniritIT                       = '';
SET @AllianceHaranirUnk1                       = '';
SET @AllianceHaranirUnk2                       = '';
SET @AllianceHaranirUnk3                       = '';
SET @AllianceHaranirUnk4                       = '';

SET @AllianceHaranirFemaleenUS                 = '';
SET @AllianceHaranirFemalekoKR                 = '';
SET @AllianceHaranirFemalefrFR                 = '';
SET @AllianceHaranirFemaledeDE                 = '';
SET @AllianceHaranirFemalezhCN                 = '';
SET @AllianceHaranirFemalezhTW                 = '';
SET @AllianceHaranirFemaleesES                 = '';
SET @AllianceHaranirFemaleesMX                 = '';
SET @AllianceHaranirFemaleruRU                 = '';
SET @AllianceHaranirFemalejaJP                 = '';
SET @AllianceHaranirFemaleptPT                 = '';
SET @AllianceHaranirFemaleitIT                 = '';
SET @AllianceHaranirFemaleUnk1                 = '';
SET @AllianceHaranirFemaleUnk2                 = '';
SET @AllianceHaranirFemaleUnk3                 = '';
SET @AllianceHaranirFemaleUnk4                 = '';

SET @AllianceHaranirMaleenUS                   = '';
SET @AllianceHaranirMalekoKR                   = '';
SET @AllianceHaranirMalefrFR                   = '';
SET @AllianceHaranirMaledeDE                   = '';
SET @AllianceHaranirMalezhCN                   = '';
SET @AllianceHaranirMalezhTW                   = '';
SET @AllianceHaranirMaleesES                   = '';
SET @AllianceHaranirMaleesMX                   = '';
SET @AllianceHaranirMaleruRU                   = '';
SET @AllianceHaranirMalejaJP                   = '';
SET @AllianceHaranirMaleptPT                   = '';
SET @AllianceHaranirMaleitIT                   = '';
SET @AllianceHaranirMaleUnk1                   = '';
SET @AllianceHaranirMaleUnk2                   = '';
SET @AllianceHaranirMaleUnk3                   = '';
SET @AllianceHaranirMaleUnk4                   = '';

SET @AllianceHaranirRacialNameenUS             = 'Racial - Haranir';
SET @AllianceHaranirRacialNamekoKR             = '';
SET @AllianceHaranirRacialNamefrFR             = '';
SET @AllianceHaranirRacialNamedeDE             = '';
SET @AllianceHaranirRacialNamezhCN             = '';
SET @AllianceHaranirRacialNamezhTW             = '';
SET @AllianceHaranirRacialNameesES             = '';
SET @AllianceHaranirRacialNameesMX             = '';
SET @AllianceHaranirRacialNameruRU             = '';
SET @AllianceHaranirRacialNamejaJP             = '';
SET @AllianceHaranirRacialNameptPT             = '';
SET @AllianceHaranirRacialNameitIT             = '';
SET @AllianceHaranirRacialNameUnk1             = '';
SET @AllianceHaranirRacialNameUnk2             = '';
SET @AllianceHaranirRacialNameUnk3             = '';
SET @AllianceHaranirRacialNameUnk4             = '';

SET @AllianceHaranirPlayerenUS                 = '"PLAYER", Haranir';
SET @AllianceHaranirPlayerkoKR                 = '';
SET @AllianceHaranirPlayerfrFR                 = '';
SET @AllianceHaranirPlayerdeDE                 = '';
SET @AllianceHaranirPlayerzhCN                 = '';
SET @AllianceHaranirPlayerzhTW                 = '';
SET @AllianceHaranirPlayeresES                 = '';
SET @AllianceHaranirPlayeresMX                 = '';
SET @AllianceHaranirPlayerruRU                 = '';
SET @AllianceHaranirPlayerjaJP                 = '';
SET @AllianceHaranirPlayerptPT                 = '';
SET @AllianceHaranirPlayeritIT                 = '';
SET @AllianceHaranirPlayerUnk1                 = '';
SET @AllianceHaranirPlayerUnk2                 = '';
SET @AllianceHaranirPlayerUnk3                 = '';
SET @AllianceHaranirPlayerUnk4                 = '';

-- Placeholder name and description
SET @AllianceHaranirFactionNameenUS            = 'Hara\'ti Wardens';
SET @AllianceHaranirFactionNamekoKR            = '';
SET @AllianceHaranirFactionNamefrFR            = '';
SET @AllianceHaranirFactionNamedeDE            = '';
SET @AllianceHaranirFactionNamezhCN            = '';
SET @AllianceHaranirFactionNamezhTW            = '';
SET @AllianceHaranirFactionNameesES            = '';
SET @AllianceHaranirFactionNameesMX            = '';
SET @AllianceHaranirFactionNameruRU            = '';
SET @AllianceHaranirFactionNamejaJP            = '';
SET @AllianceHaranirFactionNameptPT            = '';
SET @AllianceHaranirFactionNameitIT            = '';
SET @AllianceHaranirFactionNameUnk1            = '';
SET @AllianceHaranirFactionNameUnk2            = '';
SET @AllianceHaranirFactionNameUnk3            = '';
SET @AllianceHaranirFactionNameUnk4            = '';

SET @AllianceHaranirFactionDescriptionenUS     = 'Haranir of Harandar who left the roots of the Goddess\'s domain to fight beside the Alliance.';
SET @AllianceHaranirFactionDescriptionkoKR     = '';
SET @AllianceHaranirFactionDescriptionfrFR     = '';
SET @AllianceHaranirFactionDescriptiondeDE     = '';
SET @AllianceHaranirFactionDescriptionzhCN     = '';
SET @AllianceHaranirFactionDescriptionzhTW     = '';
SET @AllianceHaranirFactionDescriptionesES     = '';
SET @AllianceHaranirFactionDescriptionesMX     = '';
SET @AllianceHaranirFactionDescriptionruRU     = '';
SET @AllianceHaranirFactionDescriptionjaJP     = '';
SET @AllianceHaranirFactionDescriptionptPT     = '';
SET @AllianceHaranirFactionDescriptionitIT     = '';
SET @AllianceHaranirFactionDescriptionUnk1     = '';
SET @AllianceHaranirFactionDescriptionUnk2     = '';
SET @AllianceHaranirFactionDescriptionUnk3     = '';
SET @AllianceHaranirFactionDescriptionUnk4     = '';

SET @AllianceHaranirAchievementenUS            = 'Realm First! Level 80 Haranir';
SET @AllianceHaranirAchievementkoKR            = '';
SET @AllianceHaranirAchievementfrFR            = '';
SET @AllianceHaranirAchievementdeDE            = '';
SET @AllianceHaranirAchievementzhCN            = '';
SET @AllianceHaranirAchievementzhTW            = '';
SET @AllianceHaranirAchievementesES            = '';
SET @AllianceHaranirAchievementesMX            = '';
SET @AllianceHaranirAchievementruRU            = '';
SET @AllianceHaranirAchievementjaJP            = '';
SET @AllianceHaranirAchievementptPT            = '';
SET @AllianceHaranirAchievementitIT            = '';
SET @AllianceHaranirAchievementUnk1            = '';
SET @AllianceHaranirAchievementUnk2            = '';
SET @AllianceHaranirAchievementUnk3            = '';
SET @AllianceHaranirAchievementUnk4            = '';

SET @AllianceHaranirAchievementDescriptionenUS = 'First Haranir on the realm to achieve level 80.';
SET @AllianceHaranirAchievementDescriptionkoKR = '';
SET @AllianceHaranirAchievementDescriptionfrFR = '';
SET @AllianceHaranirAchievementDescriptiondeDE = '';
SET @AllianceHaranirAchievementDescriptionzhCN = '';
SET @AllianceHaranirAchievementDescriptionzhTW = '';
SET @AllianceHaranirAchievementDescriptionesES = '';
SET @AllianceHaranirAchievementDescriptionesMX = '';
SET @AllianceHaranirAchievementDescriptionruRU = '';
SET @AllianceHaranirAchievementDescriptionjaJP = '';
SET @AllianceHaranirAchievementDescriptionptPT = '';
SET @AllianceHaranirAchievementDescriptionitIT = '';
SET @AllianceHaranirAchievementDescriptionUnk1 = '';
SET @AllianceHaranirAchievementDescriptionUnk2 = '';
SET @AllianceHaranirAchievementDescriptionUnk3 = '';
SET @AllianceHaranirAchievementDescriptionUnk4 = '';
