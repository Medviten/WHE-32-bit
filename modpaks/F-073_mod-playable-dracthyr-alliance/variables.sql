-- Race ID
SET @AllianceDracthyr                           := @NextRace := @NextRace +1;
SET @AllianceDracthyrMask                       = 1 << (@AllianceDracthyr - 1);
SET @AllianceDracthyrHelmetMask                 = 1 << @AllianceDracthyr;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @AllianceDracthyrMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @AllianceDracthyrMask;
SET @BowHunters                           = @BowHunters      | @AllianceDracthyrMask;
SET @AllianceDracthyrLanguage                      = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @AllianceDracthyrAlliance                      = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @AllianceDracthyrKnowThyEnemy                  = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @AllianceDracthyrHome = @Human; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @AllianceDracthyrKin = @Human; -- voice, emotes and names are copied from this race
SET @AllianceDracthyrFlags = @HumanFlags;
SET @AllianceDracthyrExplorationSound = @HumanExplorationSound;
SET @AllianceDracthyrCinematicSequence = @HumanCinematicSequence;
SET @AllianceDracthyrBlood = 1;
SET @AllianceDracthyrFaction = 1261; -- vacant slot
SET @AllianceDracthyrPlayer = 1262; -- vacant slot

-- Strings
SET @AllianceDracthyrClientPrefix               = 'Hu'; -- helmet models of this prefix
SET @AllianceDracthyrClientString               = 'AllianceDracthyr';
SET @AllianceDracthyrFacialHairCustomization1   = 'NORMAL';
SET @AllianceDracthyrFacialHairCustomization2   = 'PIERCINGS';
SET @AllianceDracthyrHairCustomization          = 'NORMAL';

-- Localization Strings
SET @AllianceDracthyrenUS                       = 'Dracthyr';
SET @AllianceDracthyrkoKR                       = '';
SET @AllianceDracthyrfrFR                       = '';
SET @AllianceDracthyrdeDE                       = '';
SET @AllianceDracthyrzhCN                       = '';
SET @AllianceDracthyrzhTW                       = '';
SET @AllianceDracthyresES                       = '';
SET @AllianceDracthyresMX                       = '';
SET @AllianceDracthyrruRU                       = '';
SET @AllianceDracthyrjaJP                       = '';
SET @AllianceDracthyrptPT                       = '';
SET @AllianceDracthyritIT                       = '';
SET @AllianceDracthyrUnk1                       = '';
SET @AllianceDracthyrUnk2                       = '';
SET @AllianceDracthyrUnk3                       = '';
SET @AllianceDracthyrUnk4                       = '';

SET @AllianceDracthyrFemaleenUS                 = '';
SET @AllianceDracthyrFemalekoKR                 = '';
SET @AllianceDracthyrFemalefrFR                 = '';
SET @AllianceDracthyrFemaledeDE                 = '';
SET @AllianceDracthyrFemalezhCN                 = '';
SET @AllianceDracthyrFemalezhTW                 = '';
SET @AllianceDracthyrFemaleesES                 = '';
SET @AllianceDracthyrFemaleesMX                 = '';
SET @AllianceDracthyrFemaleruRU                 = '';
SET @AllianceDracthyrFemalejaJP                 = '';
SET @AllianceDracthyrFemaleptPT                 = '';
SET @AllianceDracthyrFemaleitIT                 = '';
SET @AllianceDracthyrFemaleUnk1                 = '';
SET @AllianceDracthyrFemaleUnk2                 = '';
SET @AllianceDracthyrFemaleUnk3                 = '';
SET @AllianceDracthyrFemaleUnk4                 = '';

SET @AllianceDracthyrMaleenUS                   = '';
SET @AllianceDracthyrMalekoKR                   = '';
SET @AllianceDracthyrMalefrFR                   = '';
SET @AllianceDracthyrMaledeDE                   = '';
SET @AllianceDracthyrMalezhCN                   = '';
SET @AllianceDracthyrMalezhTW                   = '';
SET @AllianceDracthyrMaleesES                   = '';
SET @AllianceDracthyrMaleesMX                   = '';
SET @AllianceDracthyrMaleruRU                   = '';
SET @AllianceDracthyrMalejaJP                   = '';
SET @AllianceDracthyrMaleptPT                   = '';
SET @AllianceDracthyrMaleitIT                   = '';
SET @AllianceDracthyrMaleUnk1                   = '';
SET @AllianceDracthyrMaleUnk2                   = '';
SET @AllianceDracthyrMaleUnk3                   = '';
SET @AllianceDracthyrMaleUnk4                   = '';

SET @AllianceDracthyrRacialNameenUS             = 'Racial - Dracthyr';
SET @AllianceDracthyrRacialNamekoKR             = '';
SET @AllianceDracthyrRacialNamefrFR             = '';
SET @AllianceDracthyrRacialNamedeDE             = '';
SET @AllianceDracthyrRacialNamezhCN             = '';
SET @AllianceDracthyrRacialNamezhTW             = '';
SET @AllianceDracthyrRacialNameesES             = '';
SET @AllianceDracthyrRacialNameesMX             = '';
SET @AllianceDracthyrRacialNameruRU             = '';
SET @AllianceDracthyrRacialNamejaJP             = '';
SET @AllianceDracthyrRacialNameptPT             = '';
SET @AllianceDracthyrRacialNameitIT             = '';
SET @AllianceDracthyrRacialNameUnk1             = '';
SET @AllianceDracthyrRacialNameUnk2             = '';
SET @AllianceDracthyrRacialNameUnk3             = '';
SET @AllianceDracthyrRacialNameUnk4             = '';

SET @AllianceDracthyrPlayerenUS                 = '"PLAYER", Dracthyr';
SET @AllianceDracthyrPlayerkoKR                 = '';
SET @AllianceDracthyrPlayerfrFR                 = '';
SET @AllianceDracthyrPlayerdeDE                 = '';
SET @AllianceDracthyrPlayerzhCN                 = '';
SET @AllianceDracthyrPlayerzhTW                 = '';
SET @AllianceDracthyrPlayeresES                 = '';
SET @AllianceDracthyrPlayeresMX                 = '';
SET @AllianceDracthyrPlayerruRU                 = '';
SET @AllianceDracthyrPlayerjaJP                 = '';
SET @AllianceDracthyrPlayerptPT                 = '';
SET @AllianceDracthyrPlayeritIT                 = '';
SET @AllianceDracthyrPlayerUnk1                 = '';
SET @AllianceDracthyrPlayerUnk2                 = '';
SET @AllianceDracthyrPlayerUnk3                 = '';
SET @AllianceDracthyrPlayerUnk4                 = '';

-- Placeholder name and description
SET @AllianceDracthyrFactionNameenUS            = 'Obsidian Warders';
SET @AllianceDracthyrFactionNamekoKR            = '';
SET @AllianceDracthyrFactionNamefrFR            = '';
SET @AllianceDracthyrFactionNamedeDE            = '';
SET @AllianceDracthyrFactionNamezhCN            = '';
SET @AllianceDracthyrFactionNamezhTW            = '';
SET @AllianceDracthyrFactionNameesES            = '';
SET @AllianceDracthyrFactionNameesMX            = '';
SET @AllianceDracthyrFactionNameruRU            = '';
SET @AllianceDracthyrFactionNamejaJP            = '';
SET @AllianceDracthyrFactionNameptPT            = '';
SET @AllianceDracthyrFactionNameitIT            = '';
SET @AllianceDracthyrFactionNameUnk1            = '';
SET @AllianceDracthyrFactionNameUnk2            = '';
SET @AllianceDracthyrFactionNameUnk3            = '';
SET @AllianceDracthyrFactionNameUnk4            = '';

SET @AllianceDracthyrFactionDescriptionenUS     = 'Dracthyr who joined the Alliance after waking on the Forbidden Reach.';
SET @AllianceDracthyrFactionDescriptionkoKR     = '';
SET @AllianceDracthyrFactionDescriptionfrFR     = '';
SET @AllianceDracthyrFactionDescriptiondeDE     = '';
SET @AllianceDracthyrFactionDescriptionzhCN     = '';
SET @AllianceDracthyrFactionDescriptionzhTW     = '';
SET @AllianceDracthyrFactionDescriptionesES     = '';
SET @AllianceDracthyrFactionDescriptionesMX     = '';
SET @AllianceDracthyrFactionDescriptionruRU     = '';
SET @AllianceDracthyrFactionDescriptionjaJP     = '';
SET @AllianceDracthyrFactionDescriptionptPT     = '';
SET @AllianceDracthyrFactionDescriptionitIT     = '';
SET @AllianceDracthyrFactionDescriptionUnk1     = '';
SET @AllianceDracthyrFactionDescriptionUnk2     = '';
SET @AllianceDracthyrFactionDescriptionUnk3     = '';
SET @AllianceDracthyrFactionDescriptionUnk4     = '';

SET @AllianceDracthyrAchievementenUS            = 'Realm First! Level 80 Dracthyr';
SET @AllianceDracthyrAchievementkoKR            = '';
SET @AllianceDracthyrAchievementfrFR            = '';
SET @AllianceDracthyrAchievementdeDE            = '';
SET @AllianceDracthyrAchievementzhCN            = '';
SET @AllianceDracthyrAchievementzhTW            = '';
SET @AllianceDracthyrAchievementesES            = '';
SET @AllianceDracthyrAchievementesMX            = '';
SET @AllianceDracthyrAchievementruRU            = '';
SET @AllianceDracthyrAchievementjaJP            = '';
SET @AllianceDracthyrAchievementptPT            = '';
SET @AllianceDracthyrAchievementitIT            = '';
SET @AllianceDracthyrAchievementUnk1            = '';
SET @AllianceDracthyrAchievementUnk2            = '';
SET @AllianceDracthyrAchievementUnk3            = '';
SET @AllianceDracthyrAchievementUnk4            = '';

SET @AllianceDracthyrAchievementDescriptionenUS = 'First Dracthyr on the realm to achieve level 80.';
SET @AllianceDracthyrAchievementDescriptionkoKR = '';
SET @AllianceDracthyrAchievementDescriptionfrFR = '';
SET @AllianceDracthyrAchievementDescriptiondeDE = '';
SET @AllianceDracthyrAchievementDescriptionzhCN = '';
SET @AllianceDracthyrAchievementDescriptionzhTW = '';
SET @AllianceDracthyrAchievementDescriptionesES = '';
SET @AllianceDracthyrAchievementDescriptionesMX = '';
SET @AllianceDracthyrAchievementDescriptionruRU = '';
SET @AllianceDracthyrAchievementDescriptionjaJP = '';
SET @AllianceDracthyrAchievementDescriptionptPT = '';
SET @AllianceDracthyrAchievementDescriptionitIT = '';
SET @AllianceDracthyrAchievementDescriptionUnk1 = '';
SET @AllianceDracthyrAchievementDescriptionUnk2 = '';
SET @AllianceDracthyrAchievementDescriptionUnk3 = '';
SET @AllianceDracthyrAchievementDescriptionUnk4 = '';
