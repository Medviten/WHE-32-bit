-- Race ID
SET @HordeHaranir                           := @NextRace := @NextRace +1;
SET @HordeHaranirMask                       = 1 << (@HordeHaranir - 1);
SET @HordeHaranirHelmetMask                 = 1 << @HordeHaranir;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @HordeHaranirMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @HordeHaranirMask;
SET @BowHunters                           = @BowHunters        | @HordeHaranirMask;
SET @HordeHaranirLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @HordeHaranirAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @HordeHaranirKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @HordeHaranirHome = @Troll; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @HordeHaranirKin = @NightElf; -- voice, emotes and names are copied from this race
SET @HordeHaranirFlags = @TrollFlags;
SET @HordeHaranirExplorationSound = @TrollExplorationSound;
SET @HordeHaranirCinematicSequence = @TrollCinematicSequence;
SET @HordeHaranirBlood = 1;
SET @HordeHaranirFaction = 1313; -- vacant slot
SET @HordeHaranirPlayer = 1314; -- vacant slot

-- Strings
SET @HordeHaranirClientPrefix               = 'Ni'; -- helmet models of this prefix
SET @HordeHaranirClientString               = 'HordeHaranir';
SET @HordeHaranirFacialHairCustomization1   = 'TUSKS';
SET @HordeHaranirFacialHairCustomization2   = 'TUSKS';
SET @HordeHaranirHairCustomization          = 'NORMAL';

-- Localization Strings
SET @HordeHaranirenUS                       = 'Haranir';
SET @HordeHaranirkoKR                       = '';
SET @HordeHaranirfrFR                       = '';
SET @HordeHaranirdeDE                       = '';
SET @HordeHaranirzhCN                       = '';
SET @HordeHaranirzhTW                       = '';
SET @HordeHaraniresES                       = '';
SET @HordeHaraniresMX                       = '';
SET @HordeHaranirruRU                       = '';
SET @HordeHaranirjaJP                       = '';
SET @HordeHaranirptPT                       = '';
SET @HordeHaraniritIT                       = '';
SET @HordeHaranirUnk1                       = '';
SET @HordeHaranirUnk2                       = '';
SET @HordeHaranirUnk3                       = '';
SET @HordeHaranirUnk4                       = '';

SET @HordeHaranirFemaleenUS                 = '';
SET @HordeHaranirFemalekoKR                 = '';
SET @HordeHaranirFemalefrFR                 = '';
SET @HordeHaranirFemaledeDE                 = '';
SET @HordeHaranirFemalezhCN                 = '';
SET @HordeHaranirFemalezhTW                 = '';
SET @HordeHaranirFemaleesES                 = '';
SET @HordeHaranirFemaleesMX                 = '';
SET @HordeHaranirFemaleruRU                 = '';
SET @HordeHaranirFemalejaJP                 = '';
SET @HordeHaranirFemaleptPT                 = '';
SET @HordeHaranirFemaleitIT                 = '';
SET @HordeHaranirFemaleUnk1                 = '';
SET @HordeHaranirFemaleUnk2                 = '';
SET @HordeHaranirFemaleUnk3                 = '';
SET @HordeHaranirFemaleUnk4                 = '';

SET @HordeHaranirMaleenUS                   = '';
SET @HordeHaranirMalekoKR                   = '';
SET @HordeHaranirMalefrFR                   = '';
SET @HordeHaranirMaledeDE                   = '';
SET @HordeHaranirMalezhCN                   = '';
SET @HordeHaranirMalezhTW                   = '';
SET @HordeHaranirMaleesES                   = '';
SET @HordeHaranirMaleesMX                   = '';
SET @HordeHaranirMaleruRU                   = '';
SET @HordeHaranirMalejaJP                   = '';
SET @HordeHaranirMaleptPT                   = '';
SET @HordeHaranirMaleitIT                   = '';
SET @HordeHaranirMaleUnk1                   = '';
SET @HordeHaranirMaleUnk2                   = '';
SET @HordeHaranirMaleUnk3                   = '';
SET @HordeHaranirMaleUnk4                   = '';

SET @HordeHaranirRacialNameenUS             = 'Racial - Haranir';
SET @HordeHaranirRacialNamekoKR             = '';
SET @HordeHaranirRacialNamefrFR             = '';
SET @HordeHaranirRacialNamedeDE             = '';
SET @HordeHaranirRacialNamezhCN             = '';
SET @HordeHaranirRacialNamezhTW             = '';
SET @HordeHaranirRacialNameesES             = '';
SET @HordeHaranirRacialNameesMX             = '';
SET @HordeHaranirRacialNameruRU             = '';
SET @HordeHaranirRacialNamejaJP             = '';
SET @HordeHaranirRacialNameptPT             = '';
SET @HordeHaranirRacialNameitIT             = '';
SET @HordeHaranirRacialNameUnk1             = '';
SET @HordeHaranirRacialNameUnk2             = '';
SET @HordeHaranirRacialNameUnk3             = '';
SET @HordeHaranirRacialNameUnk4             = '';

SET @HordeHaranirPlayerenUS                 = '"PLAYER", Haranir';
SET @HordeHaranirPlayerkoKR                 = '';
SET @HordeHaranirPlayerfrFR                 = '';
SET @HordeHaranirPlayerdeDE                 = '';
SET @HordeHaranirPlayerzhCN                 = '';
SET @HordeHaranirPlayerzhTW                 = '';
SET @HordeHaranirPlayeresES                 = '';
SET @HordeHaranirPlayeresMX                 = '';
SET @HordeHaranirPlayerruRU                 = '';
SET @HordeHaranirPlayerjaJP                 = '';
SET @HordeHaranirPlayerptPT                 = '';
SET @HordeHaranirPlayeritIT                 = '';
SET @HordeHaranirPlayerUnk1                 = '';
SET @HordeHaranirPlayerUnk2                 = '';
SET @HordeHaranirPlayerUnk3                 = '';
SET @HordeHaranirPlayerUnk4                 = '';

-- Placeholder name and description
SET @HordeHaranirFactionNameenUS            = 'Hara\'ti Hunters';
SET @HordeHaranirFactionNamekoKR            = '';
SET @HordeHaranirFactionNamefrFR            = '';
SET @HordeHaranirFactionNamedeDE            = '';
SET @HordeHaranirFactionNamezhCN            = '';
SET @HordeHaranirFactionNamezhTW            = '';
SET @HordeHaranirFactionNameesES            = '';
SET @HordeHaranirFactionNameesMX            = '';
SET @HordeHaranirFactionNameruRU            = '';
SET @HordeHaranirFactionNamejaJP            = '';
SET @HordeHaranirFactionNameptPT            = '';
SET @HordeHaranirFactionNameitIT            = '';
SET @HordeHaranirFactionNameUnk1            = '';
SET @HordeHaranirFactionNameUnk2            = '';
SET @HordeHaranirFactionNameUnk3            = '';
SET @HordeHaranirFactionNameUnk4            = '';

SET @HordeHaranirFactionDescriptionenUS     = 'Haranir of Harandar who left the roots of the Goddess\'s domain to fight beside the Horde.';
SET @HordeHaranirFactionDescriptionkoKR     = '';
SET @HordeHaranirFactionDescriptionfrFR     = '';
SET @HordeHaranirFactionDescriptiondeDE     = '';
SET @HordeHaranirFactionDescriptionzhCN     = '';
SET @HordeHaranirFactionDescriptionzhTW     = '';
SET @HordeHaranirFactionDescriptionesES     = '';
SET @HordeHaranirFactionDescriptionesMX     = '';
SET @HordeHaranirFactionDescriptionruRU     = '';
SET @HordeHaranirFactionDescriptionjaJP     = '';
SET @HordeHaranirFactionDescriptionptPT     = '';
SET @HordeHaranirFactionDescriptionitIT     = '';
SET @HordeHaranirFactionDescriptionUnk1     = '';
SET @HordeHaranirFactionDescriptionUnk2     = '';
SET @HordeHaranirFactionDescriptionUnk3     = '';
SET @HordeHaranirFactionDescriptionUnk4     = '';

SET @HordeHaranirAchievementenUS            = 'Realm First! Level 80 Haranir';
SET @HordeHaranirAchievementkoKR            = '';
SET @HordeHaranirAchievementfrFR            = '';
SET @HordeHaranirAchievementdeDE            = '';
SET @HordeHaranirAchievementzhCN            = '';
SET @HordeHaranirAchievementzhTW            = '';
SET @HordeHaranirAchievementesES            = '';
SET @HordeHaranirAchievementesMX            = '';
SET @HordeHaranirAchievementruRU            = '';
SET @HordeHaranirAchievementjaJP            = '';
SET @HordeHaranirAchievementptPT            = '';
SET @HordeHaranirAchievementitIT            = '';
SET @HordeHaranirAchievementUnk1            = '';
SET @HordeHaranirAchievementUnk2            = '';
SET @HordeHaranirAchievementUnk3            = '';
SET @HordeHaranirAchievementUnk4            = '';

SET @HordeHaranirAchievementDescriptionenUS = 'First Haranir on the realm to achieve level 80.';
SET @HordeHaranirAchievementDescriptionkoKR = '';
SET @HordeHaranirAchievementDescriptionfrFR = '';
SET @HordeHaranirAchievementDescriptiondeDE = '';
SET @HordeHaranirAchievementDescriptionzhCN = '';
SET @HordeHaranirAchievementDescriptionzhTW = '';
SET @HordeHaranirAchievementDescriptionesES = '';
SET @HordeHaranirAchievementDescriptionesMX = '';
SET @HordeHaranirAchievementDescriptionruRU = '';
SET @HordeHaranirAchievementDescriptionjaJP = '';
SET @HordeHaranirAchievementDescriptionptPT = '';
SET @HordeHaranirAchievementDescriptionitIT = '';
SET @HordeHaranirAchievementDescriptionUnk1 = '';
SET @HordeHaranirAchievementDescriptionUnk2 = '';
SET @HordeHaranirAchievementDescriptionUnk3 = '';
SET @HordeHaranirAchievementDescriptionUnk4 = '';
