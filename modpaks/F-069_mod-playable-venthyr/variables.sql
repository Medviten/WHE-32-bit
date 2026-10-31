-- Race ID
SET @Venthyr                           := @NextRace := @NextRace +1;
SET @VenthyrMask                       = 1 << (@Venthyr - 1);
SET @VenthyrHelmetMask                 = 1 << @Venthyr;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @VenthyrMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @VenthyrMask;
SET @BowHunters                           = @BowHunters        | @VenthyrMask;
SET @VenthyrLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @VenthyrAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @VenthyrKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @VenthyrHome = @Undead; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @VenthyrKin = @Undead; -- voice, emotes and names are copied from this race
SET @VenthyrFlags = @UndeadFlags;
SET @VenthyrExplorationSound = @UndeadExplorationSound;
SET @VenthyrCinematicSequence = @UndeadCinematicSequence;
SET @VenthyrBlood = 1;
SET @VenthyrMaleModelPath = 'custom\\venthyr\\native\\vampire_male.m2'; -- Aetheria model (retail, prepared by coa_race_prep.py)
SET @VenthyrFemaleModelPath = 'custom\\venthyr\\native\\vampire_female.m2';
SET @VenthyrFaction = 1253; -- vacant slot
SET @VenthyrPlayer = 1254; -- vacant slot

-- Strings
SET @VenthyrClientPrefix               = 'Sc'; -- helmet models of this prefix
SET @VenthyrClientString               = 'Venthyr';
SET @VenthyrFacialHairCustomization1   = 'NORMAL';
SET @VenthyrFacialHairCustomization2   = 'NORMAL';
SET @VenthyrHairCustomization          = 'NORMAL';

-- Localization Strings
SET @VenthyrenUS                       = 'Venthyr';
SET @VenthyrkoKR                       = '';
SET @VenthyrfrFR                       = '';
SET @VenthyrdeDE                       = '';
SET @VenthyrzhCN                       = '';
SET @VenthyrzhTW                       = '';
SET @VenthyresES                       = '';
SET @VenthyresMX                       = '';
SET @VenthyrruRU                       = '';
SET @VenthyrjaJP                       = '';
SET @VenthyrptPT                       = '';
SET @VenthyritIT                       = '';
SET @VenthyrUnk1                       = '';
SET @VenthyrUnk2                       = '';
SET @VenthyrUnk3                       = '';
SET @VenthyrUnk4                       = '';

SET @VenthyrFemaleenUS                 = '';
SET @VenthyrFemalekoKR                 = '';
SET @VenthyrFemalefrFR                 = '';
SET @VenthyrFemaledeDE                 = '';
SET @VenthyrFemalezhCN                 = '';
SET @VenthyrFemalezhTW                 = '';
SET @VenthyrFemaleesES                 = '';
SET @VenthyrFemaleesMX                 = '';
SET @VenthyrFemaleruRU                 = '';
SET @VenthyrFemalejaJP                 = '';
SET @VenthyrFemaleptPT                 = '';
SET @VenthyrFemaleitIT                 = '';
SET @VenthyrFemaleUnk1                 = '';
SET @VenthyrFemaleUnk2                 = '';
SET @VenthyrFemaleUnk3                 = '';
SET @VenthyrFemaleUnk4                 = '';

SET @VenthyrMaleenUS                   = '';
SET @VenthyrMalekoKR                   = '';
SET @VenthyrMalefrFR                   = '';
SET @VenthyrMaledeDE                   = '';
SET @VenthyrMalezhCN                   = '';
SET @VenthyrMalezhTW                   = '';
SET @VenthyrMaleesES                   = '';
SET @VenthyrMaleesMX                   = '';
SET @VenthyrMaleruRU                   = '';
SET @VenthyrMalejaJP                   = '';
SET @VenthyrMaleptPT                   = '';
SET @VenthyrMaleitIT                   = '';
SET @VenthyrMaleUnk1                   = '';
SET @VenthyrMaleUnk2                   = '';
SET @VenthyrMaleUnk3                   = '';
SET @VenthyrMaleUnk4                   = '';

SET @VenthyrRacialNameenUS             = 'Racial - Venthyr';
SET @VenthyrRacialNamekoKR             = '';
SET @VenthyrRacialNamefrFR             = '';
SET @VenthyrRacialNamedeDE             = '';
SET @VenthyrRacialNamezhCN             = '';
SET @VenthyrRacialNamezhTW             = '';
SET @VenthyrRacialNameesES             = '';
SET @VenthyrRacialNameesMX             = '';
SET @VenthyrRacialNameruRU             = '';
SET @VenthyrRacialNamejaJP             = '';
SET @VenthyrRacialNameptPT             = '';
SET @VenthyrRacialNameitIT             = '';
SET @VenthyrRacialNameUnk1             = '';
SET @VenthyrRacialNameUnk2             = '';
SET @VenthyrRacialNameUnk3             = '';
SET @VenthyrRacialNameUnk4             = '';

SET @VenthyrPlayerenUS                 = '"PLAYER", Venthyr';
SET @VenthyrPlayerkoKR                 = '';
SET @VenthyrPlayerfrFR                 = '';
SET @VenthyrPlayerdeDE                 = '';
SET @VenthyrPlayerzhCN                 = '';
SET @VenthyrPlayerzhTW                 = '';
SET @VenthyrPlayeresES                 = '';
SET @VenthyrPlayeresMX                 = '';
SET @VenthyrPlayerruRU                 = '';
SET @VenthyrPlayerjaJP                 = '';
SET @VenthyrPlayerptPT                 = '';
SET @VenthyrPlayeritIT                 = '';
SET @VenthyrPlayerUnk1                 = '';
SET @VenthyrPlayerUnk2                 = '';
SET @VenthyrPlayerUnk3                 = '';
SET @VenthyrPlayerUnk4                 = '';

-- Placeholder name and description
SET @VenthyrFactionNameenUS            = 'Court of Harvesters';
SET @VenthyrFactionNamekoKR            = '';
SET @VenthyrFactionNamefrFR            = '';
SET @VenthyrFactionNamedeDE            = '';
SET @VenthyrFactionNamezhCN            = '';
SET @VenthyrFactionNamezhTW            = '';
SET @VenthyrFactionNameesES            = '';
SET @VenthyrFactionNameesMX            = '';
SET @VenthyrFactionNameruRU            = '';
SET @VenthyrFactionNamejaJP            = '';
SET @VenthyrFactionNameptPT            = '';
SET @VenthyrFactionNameitIT            = '';
SET @VenthyrFactionNameUnk1            = '';
SET @VenthyrFactionNameUnk2            = '';
SET @VenthyrFactionNameUnk3            = '';
SET @VenthyrFactionNameUnk4            = '';

SET @VenthyrFactionDescriptionenUS     = 'Venthyr nobles of Revendreth who found kindred spirits among the Forsaken.';
SET @VenthyrFactionDescriptionkoKR     = '';
SET @VenthyrFactionDescriptionfrFR     = '';
SET @VenthyrFactionDescriptiondeDE     = '';
SET @VenthyrFactionDescriptionzhCN     = '';
SET @VenthyrFactionDescriptionzhTW     = '';
SET @VenthyrFactionDescriptionesES     = '';
SET @VenthyrFactionDescriptionesMX     = '';
SET @VenthyrFactionDescriptionruRU     = '';
SET @VenthyrFactionDescriptionjaJP     = '';
SET @VenthyrFactionDescriptionptPT     = '';
SET @VenthyrFactionDescriptionitIT     = '';
SET @VenthyrFactionDescriptionUnk1     = '';
SET @VenthyrFactionDescriptionUnk2     = '';
SET @VenthyrFactionDescriptionUnk3     = '';
SET @VenthyrFactionDescriptionUnk4     = '';

SET @VenthyrAchievementenUS            = 'Realm First! Level 80 Venthyr';
SET @VenthyrAchievementkoKR            = '';
SET @VenthyrAchievementfrFR            = '';
SET @VenthyrAchievementdeDE            = '';
SET @VenthyrAchievementzhCN            = '';
SET @VenthyrAchievementzhTW            = '';
SET @VenthyrAchievementesES            = '';
SET @VenthyrAchievementesMX            = '';
SET @VenthyrAchievementruRU            = '';
SET @VenthyrAchievementjaJP            = '';
SET @VenthyrAchievementptPT            = '';
SET @VenthyrAchievementitIT            = '';
SET @VenthyrAchievementUnk1            = '';
SET @VenthyrAchievementUnk2            = '';
SET @VenthyrAchievementUnk3            = '';
SET @VenthyrAchievementUnk4            = '';

SET @VenthyrAchievementDescriptionenUS = 'First Venthyr on the realm to achieve level 80.';
SET @VenthyrAchievementDescriptionkoKR = '';
SET @VenthyrAchievementDescriptionfrFR = '';
SET @VenthyrAchievementDescriptiondeDE = '';
SET @VenthyrAchievementDescriptionzhCN = '';
SET @VenthyrAchievementDescriptionzhTW = '';
SET @VenthyrAchievementDescriptionesES = '';
SET @VenthyrAchievementDescriptionesMX = '';
SET @VenthyrAchievementDescriptionruRU = '';
SET @VenthyrAchievementDescriptionjaJP = '';
SET @VenthyrAchievementDescriptionptPT = '';
SET @VenthyrAchievementDescriptionitIT = '';
SET @VenthyrAchievementDescriptionUnk1 = '';
SET @VenthyrAchievementDescriptionUnk2 = '';
SET @VenthyrAchievementDescriptionUnk3 = '';
SET @VenthyrAchievementDescriptionUnk4 = '';
