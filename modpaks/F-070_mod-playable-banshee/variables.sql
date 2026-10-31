-- Race ID
SET @Banshee                           := @NextRace := @NextRace +1;
SET @BansheeMask                       = 1 << (@Banshee - 1);
SET @BansheeHelmetMask                 = 1 << @Banshee;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @BansheeMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @BansheeMask;
SET @BowHunters                           = @BowHunters        | @BansheeMask;
SET @BansheeLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @BansheeAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @BansheeKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @BansheeHome = @Undead; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @BansheeKin = @Undead; -- voice, emotes and names are copied from this race
SET @BansheeFlags = @UndeadFlags;
SET @BansheeExplorationSound = @UndeadExplorationSound;
SET @BansheeCinematicSequence = @UndeadCinematicSequence;
SET @BansheeBlood = 1;
SET @BansheeMaleModelPath = 'Creature\\Banshee\\BansheePlayer.m2'; -- CoA Custom 1.9 model (retail, prepared by coa_race_prep.py)
SET @BansheeFemaleModelPath = 'Creature\\Banshee\\BansheePlayer.m2';
SET @BansheeFaction = 1255; -- vacant slot
SET @BansheePlayer = 1256; -- vacant slot

-- Strings
SET @BansheeClientPrefix               = 'Be'; -- helmet models of this prefix
SET @BansheeClientString               = 'Banshee';
SET @BansheeFacialHairCustomization1   = 'NORMAL';
SET @BansheeFacialHairCustomization2   = 'NORMAL';
SET @BansheeHairCustomization          = 'NORMAL';

-- Localization Strings
SET @BansheeenUS                       = 'Banshee';
SET @BansheekoKR                       = '';
SET @BansheefrFR                       = '';
SET @BansheedeDE                       = '';
SET @BansheezhCN                       = '';
SET @BansheezhTW                       = '';
SET @BansheeesES                       = '';
SET @BansheeesMX                       = '';
SET @BansheeruRU                       = '';
SET @BansheejaJP                       = '';
SET @BansheeptPT                       = '';
SET @BansheeitIT                       = '';
SET @BansheeUnk1                       = '';
SET @BansheeUnk2                       = '';
SET @BansheeUnk3                       = '';
SET @BansheeUnk4                       = '';

SET @BansheeFemaleenUS                 = '';
SET @BansheeFemalekoKR                 = '';
SET @BansheeFemalefrFR                 = '';
SET @BansheeFemaledeDE                 = '';
SET @BansheeFemalezhCN                 = '';
SET @BansheeFemalezhTW                 = '';
SET @BansheeFemaleesES                 = '';
SET @BansheeFemaleesMX                 = '';
SET @BansheeFemaleruRU                 = '';
SET @BansheeFemalejaJP                 = '';
SET @BansheeFemaleptPT                 = '';
SET @BansheeFemaleitIT                 = '';
SET @BansheeFemaleUnk1                 = '';
SET @BansheeFemaleUnk2                 = '';
SET @BansheeFemaleUnk3                 = '';
SET @BansheeFemaleUnk4                 = '';

SET @BansheeMaleenUS                   = '';
SET @BansheeMalekoKR                   = '';
SET @BansheeMalefrFR                   = '';
SET @BansheeMaledeDE                   = '';
SET @BansheeMalezhCN                   = '';
SET @BansheeMalezhTW                   = '';
SET @BansheeMaleesES                   = '';
SET @BansheeMaleesMX                   = '';
SET @BansheeMaleruRU                   = '';
SET @BansheeMalejaJP                   = '';
SET @BansheeMaleptPT                   = '';
SET @BansheeMaleitIT                   = '';
SET @BansheeMaleUnk1                   = '';
SET @BansheeMaleUnk2                   = '';
SET @BansheeMaleUnk3                   = '';
SET @BansheeMaleUnk4                   = '';

SET @BansheeRacialNameenUS             = 'Racial - Banshee';
SET @BansheeRacialNamekoKR             = '';
SET @BansheeRacialNamefrFR             = '';
SET @BansheeRacialNamedeDE             = '';
SET @BansheeRacialNamezhCN             = '';
SET @BansheeRacialNamezhTW             = '';
SET @BansheeRacialNameesES             = '';
SET @BansheeRacialNameesMX             = '';
SET @BansheeRacialNameruRU             = '';
SET @BansheeRacialNamejaJP             = '';
SET @BansheeRacialNameptPT             = '';
SET @BansheeRacialNameitIT             = '';
SET @BansheeRacialNameUnk1             = '';
SET @BansheeRacialNameUnk2             = '';
SET @BansheeRacialNameUnk3             = '';
SET @BansheeRacialNameUnk4             = '';

SET @BansheePlayerenUS                 = '"PLAYER", Banshee';
SET @BansheePlayerkoKR                 = '';
SET @BansheePlayerfrFR                 = '';
SET @BansheePlayerdeDE                 = '';
SET @BansheePlayerzhCN                 = '';
SET @BansheePlayerzhTW                 = '';
SET @BansheePlayeresES                 = '';
SET @BansheePlayeresMX                 = '';
SET @BansheePlayerruRU                 = '';
SET @BansheePlayerjaJP                 = '';
SET @BansheePlayerptPT                 = '';
SET @BansheePlayeritIT                 = '';
SET @BansheePlayerUnk1                 = '';
SET @BansheePlayerUnk2                 = '';
SET @BansheePlayerUnk3                 = '';
SET @BansheePlayerUnk4                 = '';

-- Placeholder name and description
SET @BansheeFactionNameenUS            = 'Wailing Sisterhood';
SET @BansheeFactionNamekoKR            = '';
SET @BansheeFactionNamefrFR            = '';
SET @BansheeFactionNamedeDE            = '';
SET @BansheeFactionNamezhCN            = '';
SET @BansheeFactionNamezhTW            = '';
SET @BansheeFactionNameesES            = '';
SET @BansheeFactionNameesMX            = '';
SET @BansheeFactionNameruRU            = '';
SET @BansheeFactionNamejaJP            = '';
SET @BansheeFactionNameptPT            = '';
SET @BansheeFactionNameitIT            = '';
SET @BansheeFactionNameUnk1            = '';
SET @BansheeFactionNameUnk2            = '';
SET @BansheeFactionNameUnk3            = '';
SET @BansheeFactionNameUnk4            = '';

SET @BansheeFactionDescriptionenUS     = 'Banshees freed from the Scourge who serve the Banshee Queen.';
SET @BansheeFactionDescriptionkoKR     = '';
SET @BansheeFactionDescriptionfrFR     = '';
SET @BansheeFactionDescriptiondeDE     = '';
SET @BansheeFactionDescriptionzhCN     = '';
SET @BansheeFactionDescriptionzhTW     = '';
SET @BansheeFactionDescriptionesES     = '';
SET @BansheeFactionDescriptionesMX     = '';
SET @BansheeFactionDescriptionruRU     = '';
SET @BansheeFactionDescriptionjaJP     = '';
SET @BansheeFactionDescriptionptPT     = '';
SET @BansheeFactionDescriptionitIT     = '';
SET @BansheeFactionDescriptionUnk1     = '';
SET @BansheeFactionDescriptionUnk2     = '';
SET @BansheeFactionDescriptionUnk3     = '';
SET @BansheeFactionDescriptionUnk4     = '';

SET @BansheeAchievementenUS            = 'Realm First! Level 80 Banshee';
SET @BansheeAchievementkoKR            = '';
SET @BansheeAchievementfrFR            = '';
SET @BansheeAchievementdeDE            = '';
SET @BansheeAchievementzhCN            = '';
SET @BansheeAchievementzhTW            = '';
SET @BansheeAchievementesES            = '';
SET @BansheeAchievementesMX            = '';
SET @BansheeAchievementruRU            = '';
SET @BansheeAchievementjaJP            = '';
SET @BansheeAchievementptPT            = '';
SET @BansheeAchievementitIT            = '';
SET @BansheeAchievementUnk1            = '';
SET @BansheeAchievementUnk2            = '';
SET @BansheeAchievementUnk3            = '';
SET @BansheeAchievementUnk4            = '';

SET @BansheeAchievementDescriptionenUS = 'First Banshee on the realm to achieve level 80.';
SET @BansheeAchievementDescriptionkoKR = '';
SET @BansheeAchievementDescriptionfrFR = '';
SET @BansheeAchievementDescriptiondeDE = '';
SET @BansheeAchievementDescriptionzhCN = '';
SET @BansheeAchievementDescriptionzhTW = '';
SET @BansheeAchievementDescriptionesES = '';
SET @BansheeAchievementDescriptionesMX = '';
SET @BansheeAchievementDescriptionruRU = '';
SET @BansheeAchievementDescriptionjaJP = '';
SET @BansheeAchievementDescriptionptPT = '';
SET @BansheeAchievementDescriptionitIT = '';
SET @BansheeAchievementDescriptionUnk1 = '';
SET @BansheeAchievementDescriptionUnk2 = '';
SET @BansheeAchievementDescriptionUnk3 = '';
SET @BansheeAchievementDescriptionUnk4 = '';
