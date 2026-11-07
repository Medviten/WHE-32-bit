-- Race ID
SET @HordeSkyborne                           := @NextRace := @NextRace +1;
SET @HordeSkyborneMask                       = 1 << (@HordeSkyborne - 1);
SET @HordeSkyborneHelmetMask                 = 1 << @HordeSkyborne;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @HordeSkyborneMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @HordeSkyborneMask;
SET @BowHunters                           = @BowHunters        | @HordeSkyborneMask;
SET @HordeSkyborneLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @HordeSkyborneAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @HordeSkyborneKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @HordeSkyborneHome = @BloodElf; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @HordeSkyborneKin = @BloodElf; -- voice, emotes and names are copied from this race
SET @HordeSkyborneFlags = @BloodElfFlags;
SET @HordeSkyborneExplorationSound = @BloodElfExplorationSound;
SET @HordeSkyborneCinematicSequence = @BloodElfCinematicSequence;
SET @HordeSkyborneBlood = 1;
SET @HordeSkyborneMaleModelPath = 'custom\\skyborne\\native\\male\\skybornemale.mdx';
SET @HordeSkyborneFemaleModelPath = 'custom\\skyborne\\native\\female\\skybornefemale.mdx';
SET @HordeSkyborneFaction = 1323; -- vacant slot
SET @HordeSkybornePlayer = 1324; -- vacant slot

-- Strings
SET @HordeSkyborneClientPrefix               = 'Be'; -- helmet models of this prefix
SET @HordeSkyborneClientString               = 'HordeSkyborne';
SET @HordeSkyborneFacialHairCustomization1   = 'NORMAL';
SET @HordeSkyborneFacialHairCustomization2   = 'EYEBROWS';
SET @HordeSkyborneHairCustomization          = 'NORMAL';

-- Localization Strings
SET @HordeSkyborneenUS                       = 'Skyborne';
SET @HordeSkybornekoKR                       = '';
SET @HordeSkybornefrFR                       = '';
SET @HordeSkybornedeDE                       = '';
SET @HordeSkybornezhCN                       = '';
SET @HordeSkybornezhTW                       = '';
SET @HordeSkyborneesES                       = '';
SET @HordeSkyborneesMX                       = '';
SET @HordeSkyborneruRU                       = '';
SET @HordeSkybornejaJP                       = '';
SET @HordeSkyborneptPT                       = '';
SET @HordeSkyborneitIT                       = '';
SET @HordeSkyborneUnk1                       = '';
SET @HordeSkyborneUnk2                       = '';
SET @HordeSkyborneUnk3                       = '';
SET @HordeSkyborneUnk4                       = '';

SET @HordeSkyborneFemaleenUS                 = '';
SET @HordeSkyborneFemalekoKR                 = '';
SET @HordeSkyborneFemalefrFR                 = '';
SET @HordeSkyborneFemaledeDE                 = '';
SET @HordeSkyborneFemalezhCN                 = '';
SET @HordeSkyborneFemalezhTW                 = '';
SET @HordeSkyborneFemaleesES                 = '';
SET @HordeSkyborneFemaleesMX                 = '';
SET @HordeSkyborneFemaleruRU                 = '';
SET @HordeSkyborneFemalejaJP                 = '';
SET @HordeSkyborneFemaleptPT                 = '';
SET @HordeSkyborneFemaleitIT                 = '';
SET @HordeSkyborneFemaleUnk1                 = '';
SET @HordeSkyborneFemaleUnk2                 = '';
SET @HordeSkyborneFemaleUnk3                 = '';
SET @HordeSkyborneFemaleUnk4                 = '';

SET @HordeSkyborneMaleenUS                   = '';
SET @HordeSkyborneMalekoKR                   = '';
SET @HordeSkyborneMalefrFR                   = '';
SET @HordeSkyborneMaledeDE                   = '';
SET @HordeSkyborneMalezhCN                   = '';
SET @HordeSkyborneMalezhTW                   = '';
SET @HordeSkyborneMaleesES                   = '';
SET @HordeSkyborneMaleesMX                   = '';
SET @HordeSkyborneMaleruRU                   = '';
SET @HordeSkyborneMalejaJP                   = '';
SET @HordeSkyborneMaleptPT                   = '';
SET @HordeSkyborneMaleitIT                   = '';
SET @HordeSkyborneMaleUnk1                   = '';
SET @HordeSkyborneMaleUnk2                   = '';
SET @HordeSkyborneMaleUnk3                   = '';
SET @HordeSkyborneMaleUnk4                   = '';

SET @HordeSkyborneRacialNameenUS             = 'Racial - Skyborne';
SET @HordeSkyborneRacialNamekoKR             = '';
SET @HordeSkyborneRacialNamefrFR             = '';
SET @HordeSkyborneRacialNamedeDE             = '';
SET @HordeSkyborneRacialNamezhCN             = '';
SET @HordeSkyborneRacialNamezhTW             = '';
SET @HordeSkyborneRacialNameesES             = '';
SET @HordeSkyborneRacialNameesMX             = '';
SET @HordeSkyborneRacialNameruRU             = '';
SET @HordeSkyborneRacialNamejaJP             = '';
SET @HordeSkyborneRacialNameptPT             = '';
SET @HordeSkyborneRacialNameitIT             = '';
SET @HordeSkyborneRacialNameUnk1             = '';
SET @HordeSkyborneRacialNameUnk2             = '';
SET @HordeSkyborneRacialNameUnk3             = '';
SET @HordeSkyborneRacialNameUnk4             = '';

SET @HordeSkybornePlayerenUS                 = '"PLAYER", Skyborne';
SET @HordeSkybornePlayerkoKR                 = '';
SET @HordeSkybornePlayerfrFR                 = '';
SET @HordeSkybornePlayerdeDE                 = '';
SET @HordeSkybornePlayerzhCN                 = '';
SET @HordeSkybornePlayerzhTW                 = '';
SET @HordeSkybornePlayeresES                 = '';
SET @HordeSkybornePlayeresMX                 = '';
SET @HordeSkybornePlayerruRU                 = '';
SET @HordeSkybornePlayerjaJP                 = '';
SET @HordeSkybornePlayerptPT                 = '';
SET @HordeSkybornePlayeritIT                 = '';
SET @HordeSkybornePlayerUnk1                 = '';
SET @HordeSkybornePlayerUnk2                 = '';
SET @HordeSkybornePlayerUnk3                 = '';
SET @HordeSkybornePlayerUnk4                 = '';

-- Placeholder name and description
SET @HordeSkyborneFactionNameenUS            = 'Windshapers of Zephras';
SET @HordeSkyborneFactionNamekoKR            = '';
SET @HordeSkyborneFactionNamefrFR            = '';
SET @HordeSkyborneFactionNamedeDE            = '';
SET @HordeSkyborneFactionNamezhCN            = '';
SET @HordeSkyborneFactionNamezhTW            = '';
SET @HordeSkyborneFactionNameesES            = '';
SET @HordeSkyborneFactionNameesMX            = '';
SET @HordeSkyborneFactionNameruRU            = '';
SET @HordeSkyborneFactionNamejaJP            = '';
SET @HordeSkyborneFactionNameptPT            = '';
SET @HordeSkyborneFactionNameitIT            = '';
SET @HordeSkyborneFactionNameUnk1            = '';
SET @HordeSkyborneFactionNameUnk2            = '';
SET @HordeSkyborneFactionNameUnk3            = '';
SET @HordeSkyborneFactionNameUnk4            = '';

SET @HordeSkyborneFactionDescriptionenUS     = 'Skyborne high elves of Zephras Isle, raised to Skywall by their pact with the wind spirits, who fight beside the Horde.';
SET @HordeSkyborneFactionDescriptionkoKR     = '';
SET @HordeSkyborneFactionDescriptionfrFR     = '';
SET @HordeSkyborneFactionDescriptiondeDE     = '';
SET @HordeSkyborneFactionDescriptionzhCN     = '';
SET @HordeSkyborneFactionDescriptionzhTW     = '';
SET @HordeSkyborneFactionDescriptionesES     = '';
SET @HordeSkyborneFactionDescriptionesMX     = '';
SET @HordeSkyborneFactionDescriptionruRU     = '';
SET @HordeSkyborneFactionDescriptionjaJP     = '';
SET @HordeSkyborneFactionDescriptionptPT     = '';
SET @HordeSkyborneFactionDescriptionitIT     = '';
SET @HordeSkyborneFactionDescriptionUnk1     = '';
SET @HordeSkyborneFactionDescriptionUnk2     = '';
SET @HordeSkyborneFactionDescriptionUnk3     = '';
SET @HordeSkyborneFactionDescriptionUnk4     = '';

SET @HordeSkyborneAchievementenUS            = 'Realm First! Level 80 Skyborne';
SET @HordeSkyborneAchievementkoKR            = '';
SET @HordeSkyborneAchievementfrFR            = '';
SET @HordeSkyborneAchievementdeDE            = '';
SET @HordeSkyborneAchievementzhCN            = '';
SET @HordeSkyborneAchievementzhTW            = '';
SET @HordeSkyborneAchievementesES            = '';
SET @HordeSkyborneAchievementesMX            = '';
SET @HordeSkyborneAchievementruRU            = '';
SET @HordeSkyborneAchievementjaJP            = '';
SET @HordeSkyborneAchievementptPT            = '';
SET @HordeSkyborneAchievementitIT            = '';
SET @HordeSkyborneAchievementUnk1            = '';
SET @HordeSkyborneAchievementUnk2            = '';
SET @HordeSkyborneAchievementUnk3            = '';
SET @HordeSkyborneAchievementUnk4            = '';

SET @HordeSkyborneAchievementDescriptionenUS = 'First Skyborne on the realm to achieve level 80.';
SET @HordeSkyborneAchievementDescriptionkoKR = '';
SET @HordeSkyborneAchievementDescriptionfrFR = '';
SET @HordeSkyborneAchievementDescriptiondeDE = '';
SET @HordeSkyborneAchievementDescriptionzhCN = '';
SET @HordeSkyborneAchievementDescriptionzhTW = '';
SET @HordeSkyborneAchievementDescriptionesES = '';
SET @HordeSkyborneAchievementDescriptionesMX = '';
SET @HordeSkyborneAchievementDescriptionruRU = '';
SET @HordeSkyborneAchievementDescriptionjaJP = '';
SET @HordeSkyborneAchievementDescriptionptPT = '';
SET @HordeSkyborneAchievementDescriptionitIT = '';
SET @HordeSkyborneAchievementDescriptionUnk1 = '';
SET @HordeSkyborneAchievementDescriptionUnk2 = '';
SET @HordeSkyborneAchievementDescriptionUnk3 = '';
SET @HordeSkyborneAchievementDescriptionUnk4 = '';
