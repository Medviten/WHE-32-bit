-- Race ID
SET @Satyr                           := @NextRace := @NextRace +1;
SET @SatyrMask                       = 1 << (@Satyr - 1);
SET @SatyrHelmetMask                 = 1 << @Satyr;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @SatyrMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @SatyrMask;
SET @BowHunters                           = @BowHunters      | @SatyrMask;
SET @SatyrLanguage                      = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @SatyrAlliance                      = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @SatyrKnowThyEnemy                  = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @SatyrHome = @NightElf; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @SatyrKin = @NightElf; -- voice, emotes and names are copied from this race
SET @SatyrFlags = @NightElfFlags;
SET @SatyrExplorationSound = @NightElfExplorationSound;
SET @SatyrCinematicSequence = @NightElfCinematicSequence;
SET @SatyrBlood = 1;
SET @SatyrMaleModelPath = 'Character\\Satyr\\Male\\Satyr.mdx'; -- WallCraft model, converted to the 3.3.5 format
SET @SatyrFemaleModelPath = 'Character\\Satyr\\Female\\CrystalSatyr.mdx';
SET @SatyrFaction = 1233; -- vacant slot
SET @SatyrPlayer = 1234; -- vacant slot

-- Strings
SET @SatyrClientPrefix               = 'Ni'; -- helmet models of this prefix
SET @SatyrClientString               = 'Satyr';
SET @SatyrFacialHairCustomization1   = 'NORMAL';
SET @SatyrFacialHairCustomization2   = 'NORMAL';
SET @SatyrHairCustomization          = 'NORMAL';

-- Localization Strings
SET @SatyrenUS                       = 'Satyr';
SET @SatyrkoKR                       = '';
SET @SatyrfrFR                       = '';
SET @SatyrdeDE                       = '';
SET @SatyrzhCN                       = '';
SET @SatyrzhTW                       = '';
SET @SatyresES                       = '';
SET @SatyresMX                       = '';
SET @SatyrruRU                       = '';
SET @SatyrjaJP                       = '';
SET @SatyrptPT                       = '';
SET @SatyritIT                       = '';
SET @SatyrUnk1                       = '';
SET @SatyrUnk2                       = '';
SET @SatyrUnk3                       = '';
SET @SatyrUnk4                       = '';

SET @SatyrFemaleenUS                 = '';
SET @SatyrFemalekoKR                 = '';
SET @SatyrFemalefrFR                 = '';
SET @SatyrFemaledeDE                 = '';
SET @SatyrFemalezhCN                 = '';
SET @SatyrFemalezhTW                 = '';
SET @SatyrFemaleesES                 = '';
SET @SatyrFemaleesMX                 = '';
SET @SatyrFemaleruRU                 = '';
SET @SatyrFemalejaJP                 = '';
SET @SatyrFemaleptPT                 = '';
SET @SatyrFemaleitIT                 = '';
SET @SatyrFemaleUnk1                 = '';
SET @SatyrFemaleUnk2                 = '';
SET @SatyrFemaleUnk3                 = '';
SET @SatyrFemaleUnk4                 = '';

SET @SatyrMaleenUS                   = '';
SET @SatyrMalekoKR                   = '';
SET @SatyrMalefrFR                   = '';
SET @SatyrMaledeDE                   = '';
SET @SatyrMalezhCN                   = '';
SET @SatyrMalezhTW                   = '';
SET @SatyrMaleesES                   = '';
SET @SatyrMaleesMX                   = '';
SET @SatyrMaleruRU                   = '';
SET @SatyrMalejaJP                   = '';
SET @SatyrMaleptPT                   = '';
SET @SatyrMaleitIT                   = '';
SET @SatyrMaleUnk1                   = '';
SET @SatyrMaleUnk2                   = '';
SET @SatyrMaleUnk3                   = '';
SET @SatyrMaleUnk4                   = '';

SET @SatyrRacialNameenUS             = 'Racial - Satyr';
SET @SatyrRacialNamekoKR             = '';
SET @SatyrRacialNamefrFR             = '';
SET @SatyrRacialNamedeDE             = '';
SET @SatyrRacialNamezhCN             = '';
SET @SatyrRacialNamezhTW             = '';
SET @SatyrRacialNameesES             = '';
SET @SatyrRacialNameesMX             = '';
SET @SatyrRacialNameruRU             = '';
SET @SatyrRacialNamejaJP             = '';
SET @SatyrRacialNameptPT             = '';
SET @SatyrRacialNameitIT             = '';
SET @SatyrRacialNameUnk1             = '';
SET @SatyrRacialNameUnk2             = '';
SET @SatyrRacialNameUnk3             = '';
SET @SatyrRacialNameUnk4             = '';

SET @SatyrPlayerenUS                 = '"PLAYER", Satyr';
SET @SatyrPlayerkoKR                 = '';
SET @SatyrPlayerfrFR                 = '';
SET @SatyrPlayerdeDE                 = '';
SET @SatyrPlayerzhCN                 = '';
SET @SatyrPlayerzhTW                 = '';
SET @SatyrPlayeresES                 = '';
SET @SatyrPlayeresMX                 = '';
SET @SatyrPlayerruRU                 = '';
SET @SatyrPlayerjaJP                 = '';
SET @SatyrPlayerptPT                 = '';
SET @SatyrPlayeritIT                 = '';
SET @SatyrPlayerUnk1                 = '';
SET @SatyrPlayerUnk2                 = '';
SET @SatyrPlayerUnk3                 = '';
SET @SatyrPlayerUnk4                 = '';

-- Placeholder name and description
SET @SatyrFactionNameenUS            = 'Redeemed Satyrs';
SET @SatyrFactionNamekoKR            = '';
SET @SatyrFactionNamefrFR            = '';
SET @SatyrFactionNamedeDE            = '';
SET @SatyrFactionNamezhCN            = '';
SET @SatyrFactionNamezhTW            = '';
SET @SatyrFactionNameesES            = '';
SET @SatyrFactionNameesMX            = '';
SET @SatyrFactionNameruRU            = '';
SET @SatyrFactionNamejaJP            = '';
SET @SatyrFactionNameptPT            = '';
SET @SatyrFactionNameitIT            = '';
SET @SatyrFactionNameUnk1            = '';
SET @SatyrFactionNameUnk2            = '';
SET @SatyrFactionNameUnk3            = '';
SET @SatyrFactionNameUnk4            = '';

SET @SatyrFactionDescriptionenUS     = 'Satyrs who seek to undo their corruption under the eyes of the Cenarion Circle.';
SET @SatyrFactionDescriptionkoKR     = '';
SET @SatyrFactionDescriptionfrFR     = '';
SET @SatyrFactionDescriptiondeDE     = '';
SET @SatyrFactionDescriptionzhCN     = '';
SET @SatyrFactionDescriptionzhTW     = '';
SET @SatyrFactionDescriptionesES     = '';
SET @SatyrFactionDescriptionesMX     = '';
SET @SatyrFactionDescriptionruRU     = '';
SET @SatyrFactionDescriptionjaJP     = '';
SET @SatyrFactionDescriptionptPT     = '';
SET @SatyrFactionDescriptionitIT     = '';
SET @SatyrFactionDescriptionUnk1     = '';
SET @SatyrFactionDescriptionUnk2     = '';
SET @SatyrFactionDescriptionUnk3     = '';
SET @SatyrFactionDescriptionUnk4     = '';

SET @SatyrAchievementenUS            = 'Realm First! Level 80 Satyr';
SET @SatyrAchievementkoKR            = '';
SET @SatyrAchievementfrFR            = '';
SET @SatyrAchievementdeDE            = '';
SET @SatyrAchievementzhCN            = '';
SET @SatyrAchievementzhTW            = '';
SET @SatyrAchievementesES            = '';
SET @SatyrAchievementesMX            = '';
SET @SatyrAchievementruRU            = '';
SET @SatyrAchievementjaJP            = '';
SET @SatyrAchievementptPT            = '';
SET @SatyrAchievementitIT            = '';
SET @SatyrAchievementUnk1            = '';
SET @SatyrAchievementUnk2            = '';
SET @SatyrAchievementUnk3            = '';
SET @SatyrAchievementUnk4            = '';

SET @SatyrAchievementDescriptionenUS = 'First Satyr on the realm to achieve level 80.';
SET @SatyrAchievementDescriptionkoKR = '';
SET @SatyrAchievementDescriptionfrFR = '';
SET @SatyrAchievementDescriptiondeDE = '';
SET @SatyrAchievementDescriptionzhCN = '';
SET @SatyrAchievementDescriptionzhTW = '';
SET @SatyrAchievementDescriptionesES = '';
SET @SatyrAchievementDescriptionesMX = '';
SET @SatyrAchievementDescriptionruRU = '';
SET @SatyrAchievementDescriptionjaJP = '';
SET @SatyrAchievementDescriptionptPT = '';
SET @SatyrAchievementDescriptionitIT = '';
SET @SatyrAchievementDescriptionUnk1 = '';
SET @SatyrAchievementDescriptionUnk2 = '';
SET @SatyrAchievementDescriptionUnk3 = '';
SET @SatyrAchievementDescriptionUnk4 = '';
