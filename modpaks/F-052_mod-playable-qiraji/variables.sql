-- Race ID
SET @Qiraji                           := @NextRace := @NextRace +1;
SET @QirajiMask                       = 1 << (@Qiraji - 1);
SET @QirajiHelmetMask                 = 1 << @Qiraji;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @QirajiMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @QirajiMask;
SET @BowHunters                           = @BowHunters        | @QirajiMask;
SET @QirajiLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @QirajiAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @QirajiKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @QirajiHome = @Orc; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @QirajiKin = @Orc; -- voice, emotes and names are copied from this race
SET @QirajiFlags = @OrcFlags;
SET @QirajiExplorationSound = @OrcExplorationSound;
SET @QirajiCinematicSequence = @OrcCinematicSequence;
SET @QirajiBlood = 1;
SET @QirajiMaleModelPath = 'Character\\Qiraji\\Male\\QirajiMale.mdx'; -- WallCraft model, converted to the 3.3.5 format
SET @QirajiFemaleModelPath = 'Character\\Qiraji\\Female\\QirajiFemale.mdx';
SET @QirajiFaction = 1219; -- vacant slot
SET @QirajiPlayer = 1220; -- vacant slot

-- Strings
SET @QirajiClientPrefix               = 'Ni'; -- helmet models of this prefix
SET @QirajiClientString               = 'Qiraji';
SET @QirajiFacialHairCustomization1   = 'NORMAL';
SET @QirajiFacialHairCustomization2   = 'NORMAL';
SET @QirajiHairCustomization          = 'NORMAL';

-- Localization Strings
SET @QirajienUS                       = 'Qiraji';
SET @QirajikoKR                       = '';
SET @QirajifrFR                       = '';
SET @QirajideDE                       = '';
SET @QirajizhCN                       = '';
SET @QirajizhTW                       = '';
SET @QirajiesES                       = '';
SET @QirajiesMX                       = '';
SET @QirajiruRU                       = '';
SET @QirajijaJP                       = '';
SET @QirajiptPT                       = '';
SET @QirajiitIT                       = '';
SET @QirajiUnk1                       = '';
SET @QirajiUnk2                       = '';
SET @QirajiUnk3                       = '';
SET @QirajiUnk4                       = '';

SET @QirajiFemaleenUS                 = '';
SET @QirajiFemalekoKR                 = '';
SET @QirajiFemalefrFR                 = '';
SET @QirajiFemaledeDE                 = '';
SET @QirajiFemalezhCN                 = '';
SET @QirajiFemalezhTW                 = '';
SET @QirajiFemaleesES                 = '';
SET @QirajiFemaleesMX                 = '';
SET @QirajiFemaleruRU                 = '';
SET @QirajiFemalejaJP                 = '';
SET @QirajiFemaleptPT                 = '';
SET @QirajiFemaleitIT                 = '';
SET @QirajiFemaleUnk1                 = '';
SET @QirajiFemaleUnk2                 = '';
SET @QirajiFemaleUnk3                 = '';
SET @QirajiFemaleUnk4                 = '';

SET @QirajiMaleenUS                   = '';
SET @QirajiMalekoKR                   = '';
SET @QirajiMalefrFR                   = '';
SET @QirajiMaledeDE                   = '';
SET @QirajiMalezhCN                   = '';
SET @QirajiMalezhTW                   = '';
SET @QirajiMaleesES                   = '';
SET @QirajiMaleesMX                   = '';
SET @QirajiMaleruRU                   = '';
SET @QirajiMalejaJP                   = '';
SET @QirajiMaleptPT                   = '';
SET @QirajiMaleitIT                   = '';
SET @QirajiMaleUnk1                   = '';
SET @QirajiMaleUnk2                   = '';
SET @QirajiMaleUnk3                   = '';
SET @QirajiMaleUnk4                   = '';

SET @QirajiRacialNameenUS             = 'Racial - Qiraji';
SET @QirajiRacialNamekoKR             = '';
SET @QirajiRacialNamefrFR             = '';
SET @QirajiRacialNamedeDE             = '';
SET @QirajiRacialNamezhCN             = '';
SET @QirajiRacialNamezhTW             = '';
SET @QirajiRacialNameesES             = '';
SET @QirajiRacialNameesMX             = '';
SET @QirajiRacialNameruRU             = '';
SET @QirajiRacialNamejaJP             = '';
SET @QirajiRacialNameptPT             = '';
SET @QirajiRacialNameitIT             = '';
SET @QirajiRacialNameUnk1             = '';
SET @QirajiRacialNameUnk2             = '';
SET @QirajiRacialNameUnk3             = '';
SET @QirajiRacialNameUnk4             = '';

SET @QirajiPlayerenUS                 = '"PLAYER", Qiraji';
SET @QirajiPlayerkoKR                 = '';
SET @QirajiPlayerfrFR                 = '';
SET @QirajiPlayerdeDE                 = '';
SET @QirajiPlayerzhCN                 = '';
SET @QirajiPlayerzhTW                 = '';
SET @QirajiPlayeresES                 = '';
SET @QirajiPlayeresMX                 = '';
SET @QirajiPlayerruRU                 = '';
SET @QirajiPlayerjaJP                 = '';
SET @QirajiPlayerptPT                 = '';
SET @QirajiPlayeritIT                 = '';
SET @QirajiPlayerUnk1                 = '';
SET @QirajiPlayerUnk2                 = '';
SET @QirajiPlayerUnk3                 = '';
SET @QirajiPlayerUnk4                 = '';

-- Placeholder name and description
SET @QirajiFactionNameenUS            = 'Swarm of the Sands';
SET @QirajiFactionNamekoKR            = '';
SET @QirajiFactionNamefrFR            = '';
SET @QirajiFactionNamedeDE            = '';
SET @QirajiFactionNamezhCN            = '';
SET @QirajiFactionNamezhTW            = '';
SET @QirajiFactionNameesES            = '';
SET @QirajiFactionNameesMX            = '';
SET @QirajiFactionNameruRU            = '';
SET @QirajiFactionNamejaJP            = '';
SET @QirajiFactionNameptPT            = '';
SET @QirajiFactionNameitIT            = '';
SET @QirajiFactionNameUnk1            = '';
SET @QirajiFactionNameUnk2            = '';
SET @QirajiFactionNameUnk3            = '';
SET @QirajiFactionNameUnk4            = '';

SET @QirajiFactionDescriptionenUS     = 'Qiraji who broke from C\'Thun\'s hive mind and fled Ahn\'Qiraj.';
SET @QirajiFactionDescriptionkoKR     = '';
SET @QirajiFactionDescriptionfrFR     = '';
SET @QirajiFactionDescriptiondeDE     = '';
SET @QirajiFactionDescriptionzhCN     = '';
SET @QirajiFactionDescriptionzhTW     = '';
SET @QirajiFactionDescriptionesES     = '';
SET @QirajiFactionDescriptionesMX     = '';
SET @QirajiFactionDescriptionruRU     = '';
SET @QirajiFactionDescriptionjaJP     = '';
SET @QirajiFactionDescriptionptPT     = '';
SET @QirajiFactionDescriptionitIT     = '';
SET @QirajiFactionDescriptionUnk1     = '';
SET @QirajiFactionDescriptionUnk2     = '';
SET @QirajiFactionDescriptionUnk3     = '';
SET @QirajiFactionDescriptionUnk4     = '';

SET @QirajiAchievementenUS            = 'Realm First! Level 80 Qiraji';
SET @QirajiAchievementkoKR            = '';
SET @QirajiAchievementfrFR            = '';
SET @QirajiAchievementdeDE            = '';
SET @QirajiAchievementzhCN            = '';
SET @QirajiAchievementzhTW            = '';
SET @QirajiAchievementesES            = '';
SET @QirajiAchievementesMX            = '';
SET @QirajiAchievementruRU            = '';
SET @QirajiAchievementjaJP            = '';
SET @QirajiAchievementptPT            = '';
SET @QirajiAchievementitIT            = '';
SET @QirajiAchievementUnk1            = '';
SET @QirajiAchievementUnk2            = '';
SET @QirajiAchievementUnk3            = '';
SET @QirajiAchievementUnk4            = '';

SET @QirajiAchievementDescriptionenUS = 'First Qiraji on the realm to achieve level 80.';
SET @QirajiAchievementDescriptionkoKR = '';
SET @QirajiAchievementDescriptionfrFR = '';
SET @QirajiAchievementDescriptiondeDE = '';
SET @QirajiAchievementDescriptionzhCN = '';
SET @QirajiAchievementDescriptionzhTW = '';
SET @QirajiAchievementDescriptionesES = '';
SET @QirajiAchievementDescriptionesMX = '';
SET @QirajiAchievementDescriptionruRU = '';
SET @QirajiAchievementDescriptionjaJP = '';
SET @QirajiAchievementDescriptionptPT = '';
SET @QirajiAchievementDescriptionitIT = '';
SET @QirajiAchievementDescriptionUnk1 = '';
SET @QirajiAchievementDescriptionUnk2 = '';
SET @QirajiAchievementDescriptionUnk3 = '';
SET @QirajiAchievementDescriptionUnk4 = '';
