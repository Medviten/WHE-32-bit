-- Race ID
SET @Quillboar                           := @NextRace := @NextRace +1;
SET @QuillboarMask                       = 1 << (@Quillboar - 1);
SET @QuillboarHelmetMask                 = 1 << @Quillboar;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @QuillboarMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @QuillboarMask;
SET @BowHunters                           = @BowHunters        | @QuillboarMask;
SET @QuillboarLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @QuillboarAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @QuillboarKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @QuillboarHome = @Tauren; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @QuillboarKin = @Tauren; -- voice, emotes and names are copied from this race
SET @QuillboarFlags = @TaurenFlags;
SET @QuillboarExplorationSound = @TaurenExplorationSound;
SET @QuillboarCinematicSequence = @TaurenCinematicSequence;
SET @QuillboarBlood = 1;
SET @QuillboarMaleModelPath = 'Character\\Quillboar\\Male\\QuillBoar.mdx'; -- WallCraft model, converted to the 3.3.5 format
SET @QuillboarFemaleModelPath = 'Character\\Quillboar\\Female\\QuillBoarCaster.mdx';
SET @QuillboarFaction = 1227; -- vacant slot
SET @QuillboarPlayer = 1228; -- vacant slot

-- Strings
SET @QuillboarClientPrefix               = 'Ta'; -- helmet models of this prefix
SET @QuillboarClientString               = 'Quillboar';
SET @QuillboarFacialHairCustomization1   = 'NORMAL';
SET @QuillboarFacialHairCustomization2   = 'NORMAL';
SET @QuillboarHairCustomization          = 'NORMAL';

-- Localization Strings
SET @QuillboarenUS                       = 'Quillboar';
SET @QuillboarkoKR                       = '';
SET @QuillboarfrFR                       = '';
SET @QuillboardeDE                       = '';
SET @QuillboarzhCN                       = '';
SET @QuillboarzhTW                       = '';
SET @QuillboaresES                       = '';
SET @QuillboaresMX                       = '';
SET @QuillboarruRU                       = '';
SET @QuillboarjaJP                       = '';
SET @QuillboarptPT                       = '';
SET @QuillboaritIT                       = '';
SET @QuillboarUnk1                       = '';
SET @QuillboarUnk2                       = '';
SET @QuillboarUnk3                       = '';
SET @QuillboarUnk4                       = '';

SET @QuillboarFemaleenUS                 = '';
SET @QuillboarFemalekoKR                 = '';
SET @QuillboarFemalefrFR                 = '';
SET @QuillboarFemaledeDE                 = '';
SET @QuillboarFemalezhCN                 = '';
SET @QuillboarFemalezhTW                 = '';
SET @QuillboarFemaleesES                 = '';
SET @QuillboarFemaleesMX                 = '';
SET @QuillboarFemaleruRU                 = '';
SET @QuillboarFemalejaJP                 = '';
SET @QuillboarFemaleptPT                 = '';
SET @QuillboarFemaleitIT                 = '';
SET @QuillboarFemaleUnk1                 = '';
SET @QuillboarFemaleUnk2                 = '';
SET @QuillboarFemaleUnk3                 = '';
SET @QuillboarFemaleUnk4                 = '';

SET @QuillboarMaleenUS                   = '';
SET @QuillboarMalekoKR                   = '';
SET @QuillboarMalefrFR                   = '';
SET @QuillboarMaledeDE                   = '';
SET @QuillboarMalezhCN                   = '';
SET @QuillboarMalezhTW                   = '';
SET @QuillboarMaleesES                   = '';
SET @QuillboarMaleesMX                   = '';
SET @QuillboarMaleruRU                   = '';
SET @QuillboarMalejaJP                   = '';
SET @QuillboarMaleptPT                   = '';
SET @QuillboarMaleitIT                   = '';
SET @QuillboarMaleUnk1                   = '';
SET @QuillboarMaleUnk2                   = '';
SET @QuillboarMaleUnk3                   = '';
SET @QuillboarMaleUnk4                   = '';

SET @QuillboarRacialNameenUS             = 'Racial - Quillboar';
SET @QuillboarRacialNamekoKR             = '';
SET @QuillboarRacialNamefrFR             = '';
SET @QuillboarRacialNamedeDE             = '';
SET @QuillboarRacialNamezhCN             = '';
SET @QuillboarRacialNamezhTW             = '';
SET @QuillboarRacialNameesES             = '';
SET @QuillboarRacialNameesMX             = '';
SET @QuillboarRacialNameruRU             = '';
SET @QuillboarRacialNamejaJP             = '';
SET @QuillboarRacialNameptPT             = '';
SET @QuillboarRacialNameitIT             = '';
SET @QuillboarRacialNameUnk1             = '';
SET @QuillboarRacialNameUnk2             = '';
SET @QuillboarRacialNameUnk3             = '';
SET @QuillboarRacialNameUnk4             = '';

SET @QuillboarPlayerenUS                 = '"PLAYER", Quillboar';
SET @QuillboarPlayerkoKR                 = '';
SET @QuillboarPlayerfrFR                 = '';
SET @QuillboarPlayerdeDE                 = '';
SET @QuillboarPlayerzhCN                 = '';
SET @QuillboarPlayerzhTW                 = '';
SET @QuillboarPlayeresES                 = '';
SET @QuillboarPlayeresMX                 = '';
SET @QuillboarPlayerruRU                 = '';
SET @QuillboarPlayerjaJP                 = '';
SET @QuillboarPlayerptPT                 = '';
SET @QuillboarPlayeritIT                 = '';
SET @QuillboarPlayerUnk1                 = '';
SET @QuillboarPlayerUnk2                 = '';
SET @QuillboarPlayerUnk3                 = '';
SET @QuillboarPlayerUnk4                 = '';

-- Placeholder name and description
SET @QuillboarFactionNameenUS            = 'Bristleback Outcasts';
SET @QuillboarFactionNamekoKR            = '';
SET @QuillboarFactionNamefrFR            = '';
SET @QuillboarFactionNamedeDE            = '';
SET @QuillboarFactionNamezhCN            = '';
SET @QuillboarFactionNamezhTW            = '';
SET @QuillboarFactionNameesES            = '';
SET @QuillboarFactionNameesMX            = '';
SET @QuillboarFactionNameruRU            = '';
SET @QuillboarFactionNamejaJP            = '';
SET @QuillboarFactionNameptPT            = '';
SET @QuillboarFactionNameitIT            = '';
SET @QuillboarFactionNameUnk1            = '';
SET @QuillboarFactionNameUnk2            = '';
SET @QuillboarFactionNameUnk3            = '';
SET @QuillboarFactionNameUnk4            = '';

SET @QuillboarFactionDescriptionenUS     = 'Quillboar of the Barrens who broke with Agamaggan\'s war against the Horde.';
SET @QuillboarFactionDescriptionkoKR     = '';
SET @QuillboarFactionDescriptionfrFR     = '';
SET @QuillboarFactionDescriptiondeDE     = '';
SET @QuillboarFactionDescriptionzhCN     = '';
SET @QuillboarFactionDescriptionzhTW     = '';
SET @QuillboarFactionDescriptionesES     = '';
SET @QuillboarFactionDescriptionesMX     = '';
SET @QuillboarFactionDescriptionruRU     = '';
SET @QuillboarFactionDescriptionjaJP     = '';
SET @QuillboarFactionDescriptionptPT     = '';
SET @QuillboarFactionDescriptionitIT     = '';
SET @QuillboarFactionDescriptionUnk1     = '';
SET @QuillboarFactionDescriptionUnk2     = '';
SET @QuillboarFactionDescriptionUnk3     = '';
SET @QuillboarFactionDescriptionUnk4     = '';

SET @QuillboarAchievementenUS            = 'Realm First! Level 80 Quillboar';
SET @QuillboarAchievementkoKR            = '';
SET @QuillboarAchievementfrFR            = '';
SET @QuillboarAchievementdeDE            = '';
SET @QuillboarAchievementzhCN            = '';
SET @QuillboarAchievementzhTW            = '';
SET @QuillboarAchievementesES            = '';
SET @QuillboarAchievementesMX            = '';
SET @QuillboarAchievementruRU            = '';
SET @QuillboarAchievementjaJP            = '';
SET @QuillboarAchievementptPT            = '';
SET @QuillboarAchievementitIT            = '';
SET @QuillboarAchievementUnk1            = '';
SET @QuillboarAchievementUnk2            = '';
SET @QuillboarAchievementUnk3            = '';
SET @QuillboarAchievementUnk4            = '';

SET @QuillboarAchievementDescriptionenUS = 'First Quillboar on the realm to achieve level 80.';
SET @QuillboarAchievementDescriptionkoKR = '';
SET @QuillboarAchievementDescriptionfrFR = '';
SET @QuillboarAchievementDescriptiondeDE = '';
SET @QuillboarAchievementDescriptionzhCN = '';
SET @QuillboarAchievementDescriptionzhTW = '';
SET @QuillboarAchievementDescriptionesES = '';
SET @QuillboarAchievementDescriptionesMX = '';
SET @QuillboarAchievementDescriptionruRU = '';
SET @QuillboarAchievementDescriptionjaJP = '';
SET @QuillboarAchievementDescriptionptPT = '';
SET @QuillboarAchievementDescriptionitIT = '';
SET @QuillboarAchievementDescriptionUnk1 = '';
SET @QuillboarAchievementDescriptionUnk2 = '';
SET @QuillboarAchievementDescriptionUnk3 = '';
SET @QuillboarAchievementDescriptionUnk4 = '';
