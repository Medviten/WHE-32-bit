-- Race ID
SET @Centaur                           := @NextRace := @NextRace +1;
SET @CentaurMask                       = 1 << (@Centaur - 1);
SET @CentaurHelmetMask                 = 1 << @Centaur;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @CentaurMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @CentaurMask;
SET @BowHunters                           = @BowHunters        | @CentaurMask;
SET @CentaurLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @CentaurAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @CentaurKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @CentaurHome = @Tauren; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @CentaurKin = @Tauren; -- voice, emotes and names are copied from this race
SET @CentaurFlags = @TaurenFlags;
SET @CentaurExplorationSound = @TaurenExplorationSound;
SET @CentaurCinematicSequence = @TaurenCinematicSequence;
SET @CentaurBlood = 1;
SET @CentaurMaleModelPath = 'custom\\centaur\\unknown\\4036647.m2'; -- CoA Custom 1.9 model (retail, prepared by coa_race_prep.py)
SET @CentaurFemaleModelPath = 'custom\\centaur\\unknown\\4081379.m2';
SET @CentaurFaction = 1229; -- vacant slot
SET @CentaurPlayer = 1230; -- vacant slot

-- Strings
SET @CentaurClientPrefix               = 'Ta'; -- helmet models of this prefix
SET @CentaurClientString               = 'Centaur';
SET @CentaurFacialHairCustomization1   = 'NORMAL';
SET @CentaurFacialHairCustomization2   = 'NORMAL';
SET @CentaurHairCustomization          = 'NORMAL';

-- Localization Strings
SET @CentaurenUS                       = 'Centaur';
SET @CentaurkoKR                       = '';
SET @CentaurfrFR                       = '';
SET @CentaurdeDE                       = '';
SET @CentaurzhCN                       = '';
SET @CentaurzhTW                       = '';
SET @CentauresES                       = '';
SET @CentauresMX                       = '';
SET @CentaurruRU                       = '';
SET @CentaurjaJP                       = '';
SET @CentaurptPT                       = '';
SET @CentauritIT                       = '';
SET @CentaurUnk1                       = '';
SET @CentaurUnk2                       = '';
SET @CentaurUnk3                       = '';
SET @CentaurUnk4                       = '';

SET @CentaurFemaleenUS                 = '';
SET @CentaurFemalekoKR                 = '';
SET @CentaurFemalefrFR                 = '';
SET @CentaurFemaledeDE                 = '';
SET @CentaurFemalezhCN                 = '';
SET @CentaurFemalezhTW                 = '';
SET @CentaurFemaleesES                 = '';
SET @CentaurFemaleesMX                 = '';
SET @CentaurFemaleruRU                 = '';
SET @CentaurFemalejaJP                 = '';
SET @CentaurFemaleptPT                 = '';
SET @CentaurFemaleitIT                 = '';
SET @CentaurFemaleUnk1                 = '';
SET @CentaurFemaleUnk2                 = '';
SET @CentaurFemaleUnk3                 = '';
SET @CentaurFemaleUnk4                 = '';

SET @CentaurMaleenUS                   = '';
SET @CentaurMalekoKR                   = '';
SET @CentaurMalefrFR                   = '';
SET @CentaurMaledeDE                   = '';
SET @CentaurMalezhCN                   = '';
SET @CentaurMalezhTW                   = '';
SET @CentaurMaleesES                   = '';
SET @CentaurMaleesMX                   = '';
SET @CentaurMaleruRU                   = '';
SET @CentaurMalejaJP                   = '';
SET @CentaurMaleptPT                   = '';
SET @CentaurMaleitIT                   = '';
SET @CentaurMaleUnk1                   = '';
SET @CentaurMaleUnk2                   = '';
SET @CentaurMaleUnk3                   = '';
SET @CentaurMaleUnk4                   = '';

SET @CentaurRacialNameenUS             = 'Racial - Centaur';
SET @CentaurRacialNamekoKR             = '';
SET @CentaurRacialNamefrFR             = '';
SET @CentaurRacialNamedeDE             = '';
SET @CentaurRacialNamezhCN             = '';
SET @CentaurRacialNamezhTW             = '';
SET @CentaurRacialNameesES             = '';
SET @CentaurRacialNameesMX             = '';
SET @CentaurRacialNameruRU             = '';
SET @CentaurRacialNamejaJP             = '';
SET @CentaurRacialNameptPT             = '';
SET @CentaurRacialNameitIT             = '';
SET @CentaurRacialNameUnk1             = '';
SET @CentaurRacialNameUnk2             = '';
SET @CentaurRacialNameUnk3             = '';
SET @CentaurRacialNameUnk4             = '';

SET @CentaurPlayerenUS                 = '"PLAYER", Centaur';
SET @CentaurPlayerkoKR                 = '';
SET @CentaurPlayerfrFR                 = '';
SET @CentaurPlayerdeDE                 = '';
SET @CentaurPlayerzhCN                 = '';
SET @CentaurPlayerzhTW                 = '';
SET @CentaurPlayeresES                 = '';
SET @CentaurPlayeresMX                 = '';
SET @CentaurPlayerruRU                 = '';
SET @CentaurPlayerjaJP                 = '';
SET @CentaurPlayerptPT                 = '';
SET @CentaurPlayeritIT                 = '';
SET @CentaurPlayerUnk1                 = '';
SET @CentaurPlayerUnk2                 = '';
SET @CentaurPlayerUnk3                 = '';
SET @CentaurPlayerUnk4                 = '';

-- Placeholder name and description
SET @CentaurFactionNameenUS            = 'Gelkis Clan';
SET @CentaurFactionNamekoKR            = '';
SET @CentaurFactionNamefrFR            = '';
SET @CentaurFactionNamedeDE            = '';
SET @CentaurFactionNamezhCN            = '';
SET @CentaurFactionNamezhTW            = '';
SET @CentaurFactionNameesES            = '';
SET @CentaurFactionNameesMX            = '';
SET @CentaurFactionNameruRU            = '';
SET @CentaurFactionNamejaJP            = '';
SET @CentaurFactionNameptPT            = '';
SET @CentaurFactionNameitIT            = '';
SET @CentaurFactionNameUnk1            = '';
SET @CentaurFactionNameUnk2            = '';
SET @CentaurFactionNameUnk3            = '';
SET @CentaurFactionNameUnk4            = '';

SET @CentaurFactionDescriptionenUS     = 'Centaur of Desolace who honour the earth and made peace with the tauren.';
SET @CentaurFactionDescriptionkoKR     = '';
SET @CentaurFactionDescriptionfrFR     = '';
SET @CentaurFactionDescriptiondeDE     = '';
SET @CentaurFactionDescriptionzhCN     = '';
SET @CentaurFactionDescriptionzhTW     = '';
SET @CentaurFactionDescriptionesES     = '';
SET @CentaurFactionDescriptionesMX     = '';
SET @CentaurFactionDescriptionruRU     = '';
SET @CentaurFactionDescriptionjaJP     = '';
SET @CentaurFactionDescriptionptPT     = '';
SET @CentaurFactionDescriptionitIT     = '';
SET @CentaurFactionDescriptionUnk1     = '';
SET @CentaurFactionDescriptionUnk2     = '';
SET @CentaurFactionDescriptionUnk3     = '';
SET @CentaurFactionDescriptionUnk4     = '';

SET @CentaurAchievementenUS            = 'Realm First! Level 80 Centaur';
SET @CentaurAchievementkoKR            = '';
SET @CentaurAchievementfrFR            = '';
SET @CentaurAchievementdeDE            = '';
SET @CentaurAchievementzhCN            = '';
SET @CentaurAchievementzhTW            = '';
SET @CentaurAchievementesES            = '';
SET @CentaurAchievementesMX            = '';
SET @CentaurAchievementruRU            = '';
SET @CentaurAchievementjaJP            = '';
SET @CentaurAchievementptPT            = '';
SET @CentaurAchievementitIT            = '';
SET @CentaurAchievementUnk1            = '';
SET @CentaurAchievementUnk2            = '';
SET @CentaurAchievementUnk3            = '';
SET @CentaurAchievementUnk4            = '';

SET @CentaurAchievementDescriptionenUS = 'First Centaur on the realm to achieve level 80.';
SET @CentaurAchievementDescriptionkoKR = '';
SET @CentaurAchievementDescriptionfrFR = '';
SET @CentaurAchievementDescriptiondeDE = '';
SET @CentaurAchievementDescriptionzhCN = '';
SET @CentaurAchievementDescriptionzhTW = '';
SET @CentaurAchievementDescriptionesES = '';
SET @CentaurAchievementDescriptionesMX = '';
SET @CentaurAchievementDescriptionruRU = '';
SET @CentaurAchievementDescriptionjaJP = '';
SET @CentaurAchievementDescriptionptPT = '';
SET @CentaurAchievementDescriptionitIT = '';
SET @CentaurAchievementDescriptionUnk1 = '';
SET @CentaurAchievementDescriptionUnk2 = '';
SET @CentaurAchievementDescriptionUnk3 = '';
SET @CentaurAchievementDescriptionUnk4 = '';
