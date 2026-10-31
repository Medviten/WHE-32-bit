-- Race ID
SET @HordeDracthyr                           := @NextRace := @NextRace +1;
SET @HordeDracthyrMask                       = 1 << (@HordeDracthyr - 1);
SET @HordeDracthyrHelmetMask                 = 1 << @HordeDracthyr;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @HordeDracthyrMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @HordeDracthyrMask;
SET @BowHunters                           = @BowHunters        | @HordeDracthyrMask;
SET @HordeDracthyrLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @HordeDracthyrAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @HordeDracthyrKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @HordeDracthyrHome = @Orc; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @HordeDracthyrKin = @Orc; -- voice, emotes and names are copied from this race
SET @HordeDracthyrFlags = @OrcFlags;
SET @HordeDracthyrExplorationSound = @OrcExplorationSound;
SET @HordeDracthyrCinematicSequence = @OrcCinematicSequence;
SET @HordeDracthyrBlood = 1;
SET @HordeDracthyrFaction = 1263; -- vacant slot
SET @HordeDracthyrPlayer = 1264; -- vacant slot

-- Strings
SET @HordeDracthyrClientPrefix               = 'Or'; -- helmet models of this prefix
SET @HordeDracthyrClientString               = 'HordeDracthyr';
SET @HordeDracthyrFacialHairCustomization1   = 'NORMAL';
SET @HordeDracthyrFacialHairCustomization2   = 'PIERCINGS';
SET @HordeDracthyrHairCustomization          = 'NORMAL';

-- Localization Strings
SET @HordeDracthyrenUS                       = 'Dracthyr';
SET @HordeDracthyrkoKR                       = '';
SET @HordeDracthyrfrFR                       = '';
SET @HordeDracthyrdeDE                       = '';
SET @HordeDracthyrzhCN                       = '';
SET @HordeDracthyrzhTW                       = '';
SET @HordeDracthyresES                       = '';
SET @HordeDracthyresMX                       = '';
SET @HordeDracthyrruRU                       = '';
SET @HordeDracthyrjaJP                       = '';
SET @HordeDracthyrptPT                       = '';
SET @HordeDracthyritIT                       = '';
SET @HordeDracthyrUnk1                       = '';
SET @HordeDracthyrUnk2                       = '';
SET @HordeDracthyrUnk3                       = '';
SET @HordeDracthyrUnk4                       = '';

SET @HordeDracthyrFemaleenUS                 = '';
SET @HordeDracthyrFemalekoKR                 = '';
SET @HordeDracthyrFemalefrFR                 = '';
SET @HordeDracthyrFemaledeDE                 = '';
SET @HordeDracthyrFemalezhCN                 = '';
SET @HordeDracthyrFemalezhTW                 = '';
SET @HordeDracthyrFemaleesES                 = '';
SET @HordeDracthyrFemaleesMX                 = '';
SET @HordeDracthyrFemaleruRU                 = '';
SET @HordeDracthyrFemalejaJP                 = '';
SET @HordeDracthyrFemaleptPT                 = '';
SET @HordeDracthyrFemaleitIT                 = '';
SET @HordeDracthyrFemaleUnk1                 = '';
SET @HordeDracthyrFemaleUnk2                 = '';
SET @HordeDracthyrFemaleUnk3                 = '';
SET @HordeDracthyrFemaleUnk4                 = '';

SET @HordeDracthyrMaleenUS                   = '';
SET @HordeDracthyrMalekoKR                   = '';
SET @HordeDracthyrMalefrFR                   = '';
SET @HordeDracthyrMaledeDE                   = '';
SET @HordeDracthyrMalezhCN                   = '';
SET @HordeDracthyrMalezhTW                   = '';
SET @HordeDracthyrMaleesES                   = '';
SET @HordeDracthyrMaleesMX                   = '';
SET @HordeDracthyrMaleruRU                   = '';
SET @HordeDracthyrMalejaJP                   = '';
SET @HordeDracthyrMaleptPT                   = '';
SET @HordeDracthyrMaleitIT                   = '';
SET @HordeDracthyrMaleUnk1                   = '';
SET @HordeDracthyrMaleUnk2                   = '';
SET @HordeDracthyrMaleUnk3                   = '';
SET @HordeDracthyrMaleUnk4                   = '';

SET @HordeDracthyrRacialNameenUS             = 'Racial - Dracthyr';
SET @HordeDracthyrRacialNamekoKR             = '';
SET @HordeDracthyrRacialNamefrFR             = '';
SET @HordeDracthyrRacialNamedeDE             = '';
SET @HordeDracthyrRacialNamezhCN             = '';
SET @HordeDracthyrRacialNamezhTW             = '';
SET @HordeDracthyrRacialNameesES             = '';
SET @HordeDracthyrRacialNameesMX             = '';
SET @HordeDracthyrRacialNameruRU             = '';
SET @HordeDracthyrRacialNamejaJP             = '';
SET @HordeDracthyrRacialNameptPT             = '';
SET @HordeDracthyrRacialNameitIT             = '';
SET @HordeDracthyrRacialNameUnk1             = '';
SET @HordeDracthyrRacialNameUnk2             = '';
SET @HordeDracthyrRacialNameUnk3             = '';
SET @HordeDracthyrRacialNameUnk4             = '';

SET @HordeDracthyrPlayerenUS                 = '"PLAYER", Dracthyr';
SET @HordeDracthyrPlayerkoKR                 = '';
SET @HordeDracthyrPlayerfrFR                 = '';
SET @HordeDracthyrPlayerdeDE                 = '';
SET @HordeDracthyrPlayerzhCN                 = '';
SET @HordeDracthyrPlayerzhTW                 = '';
SET @HordeDracthyrPlayeresES                 = '';
SET @HordeDracthyrPlayeresMX                 = '';
SET @HordeDracthyrPlayerruRU                 = '';
SET @HordeDracthyrPlayerjaJP                 = '';
SET @HordeDracthyrPlayerptPT                 = '';
SET @HordeDracthyrPlayeritIT                 = '';
SET @HordeDracthyrPlayerUnk1                 = '';
SET @HordeDracthyrPlayerUnk2                 = '';
SET @HordeDracthyrPlayerUnk3                 = '';
SET @HordeDracthyrPlayerUnk4                 = '';

-- Placeholder name and description
SET @HordeDracthyrFactionNameenUS            = 'Dark Talons';
SET @HordeDracthyrFactionNamekoKR            = '';
SET @HordeDracthyrFactionNamefrFR            = '';
SET @HordeDracthyrFactionNamedeDE            = '';
SET @HordeDracthyrFactionNamezhCN            = '';
SET @HordeDracthyrFactionNamezhTW            = '';
SET @HordeDracthyrFactionNameesES            = '';
SET @HordeDracthyrFactionNameesMX            = '';
SET @HordeDracthyrFactionNameruRU            = '';
SET @HordeDracthyrFactionNamejaJP            = '';
SET @HordeDracthyrFactionNameptPT            = '';
SET @HordeDracthyrFactionNameitIT            = '';
SET @HordeDracthyrFactionNameUnk1            = '';
SET @HordeDracthyrFactionNameUnk2            = '';
SET @HordeDracthyrFactionNameUnk3            = '';
SET @HordeDracthyrFactionNameUnk4            = '';

SET @HordeDracthyrFactionDescriptionenUS     = 'Dracthyr who joined the Horde after waking on the Forbidden Reach.';
SET @HordeDracthyrFactionDescriptionkoKR     = '';
SET @HordeDracthyrFactionDescriptionfrFR     = '';
SET @HordeDracthyrFactionDescriptiondeDE     = '';
SET @HordeDracthyrFactionDescriptionzhCN     = '';
SET @HordeDracthyrFactionDescriptionzhTW     = '';
SET @HordeDracthyrFactionDescriptionesES     = '';
SET @HordeDracthyrFactionDescriptionesMX     = '';
SET @HordeDracthyrFactionDescriptionruRU     = '';
SET @HordeDracthyrFactionDescriptionjaJP     = '';
SET @HordeDracthyrFactionDescriptionptPT     = '';
SET @HordeDracthyrFactionDescriptionitIT     = '';
SET @HordeDracthyrFactionDescriptionUnk1     = '';
SET @HordeDracthyrFactionDescriptionUnk2     = '';
SET @HordeDracthyrFactionDescriptionUnk3     = '';
SET @HordeDracthyrFactionDescriptionUnk4     = '';

SET @HordeDracthyrAchievementenUS            = 'Realm First! Level 80 Dracthyr';
SET @HordeDracthyrAchievementkoKR            = '';
SET @HordeDracthyrAchievementfrFR            = '';
SET @HordeDracthyrAchievementdeDE            = '';
SET @HordeDracthyrAchievementzhCN            = '';
SET @HordeDracthyrAchievementzhTW            = '';
SET @HordeDracthyrAchievementesES            = '';
SET @HordeDracthyrAchievementesMX            = '';
SET @HordeDracthyrAchievementruRU            = '';
SET @HordeDracthyrAchievementjaJP            = '';
SET @HordeDracthyrAchievementptPT            = '';
SET @HordeDracthyrAchievementitIT            = '';
SET @HordeDracthyrAchievementUnk1            = '';
SET @HordeDracthyrAchievementUnk2            = '';
SET @HordeDracthyrAchievementUnk3            = '';
SET @HordeDracthyrAchievementUnk4            = '';

SET @HordeDracthyrAchievementDescriptionenUS = 'First Dracthyr on the realm to achieve level 80.';
SET @HordeDracthyrAchievementDescriptionkoKR = '';
SET @HordeDracthyrAchievementDescriptionfrFR = '';
SET @HordeDracthyrAchievementDescriptiondeDE = '';
SET @HordeDracthyrAchievementDescriptionzhCN = '';
SET @HordeDracthyrAchievementDescriptionzhTW = '';
SET @HordeDracthyrAchievementDescriptionesES = '';
SET @HordeDracthyrAchievementDescriptionesMX = '';
SET @HordeDracthyrAchievementDescriptionruRU = '';
SET @HordeDracthyrAchievementDescriptionjaJP = '';
SET @HordeDracthyrAchievementDescriptionptPT = '';
SET @HordeDracthyrAchievementDescriptionitIT = '';
SET @HordeDracthyrAchievementDescriptionUnk1 = '';
SET @HordeDracthyrAchievementDescriptionUnk2 = '';
SET @HordeDracthyrAchievementDescriptionUnk3 = '';
SET @HordeDracthyrAchievementDescriptionUnk4 = '';
