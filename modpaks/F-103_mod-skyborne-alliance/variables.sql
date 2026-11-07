-- Race ID
SET @AllianceSkyborne                           := @NextRace := @NextRace +1;
SET @AllianceSkyborneMask                       = 1 << (@AllianceSkyborne - 1);
SET @AllianceSkyborneHelmetMask                 = 1 << @AllianceSkyborne;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @AllianceSkyborneMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @AllianceSkyborneMask;
SET @BowHunters                           = @BowHunters      | @AllianceSkyborneMask;
SET @AllianceSkyborneLanguage                      = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @AllianceSkyborneAlliance                      = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @AllianceSkyborneKnowThyEnemy                  = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @AllianceSkyborneHome = @Human; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @AllianceSkyborneKin = @BloodElf; -- voice, emotes and names are copied from this race
SET @AllianceSkyborneFlags = @HumanFlags;
SET @AllianceSkyborneExplorationSound = @HumanExplorationSound;
SET @AllianceSkyborneCinematicSequence = @HumanCinematicSequence;
SET @AllianceSkyborneBlood = 1;
SET @AllianceSkyborneMaleModelPath = 'custom\\skyborne\\native\\male\\skybornemale.mdx';
SET @AllianceSkyborneFemaleModelPath = 'custom\\skyborne\\native\\female\\skybornefemale.mdx';
SET @AllianceSkyborneFaction = 1321; -- vacant slot
SET @AllianceSkybornePlayer = 1322; -- vacant slot

-- Strings
SET @AllianceSkyborneClientPrefix               = 'Be'; -- helmet models of this prefix
SET @AllianceSkyborneClientString               = 'AllianceSkyborne';
SET @AllianceSkyborneFacialHairCustomization1   = 'NORMAL';
SET @AllianceSkyborneFacialHairCustomization2   = 'EYEBROWS';
SET @AllianceSkyborneHairCustomization          = 'NORMAL';

-- Localization Strings
SET @AllianceSkyborneenUS                       = 'Skyborne';
SET @AllianceSkybornekoKR                       = '';
SET @AllianceSkybornefrFR                       = '';
SET @AllianceSkybornedeDE                       = '';
SET @AllianceSkybornezhCN                       = '';
SET @AllianceSkybornezhTW                       = '';
SET @AllianceSkyborneesES                       = '';
SET @AllianceSkyborneesMX                       = '';
SET @AllianceSkyborneruRU                       = '';
SET @AllianceSkybornejaJP                       = '';
SET @AllianceSkyborneptPT                       = '';
SET @AllianceSkyborneitIT                       = '';
SET @AllianceSkyborneUnk1                       = '';
SET @AllianceSkyborneUnk2                       = '';
SET @AllianceSkyborneUnk3                       = '';
SET @AllianceSkyborneUnk4                       = '';

SET @AllianceSkyborneFemaleenUS                 = '';
SET @AllianceSkyborneFemalekoKR                 = '';
SET @AllianceSkyborneFemalefrFR                 = '';
SET @AllianceSkyborneFemaledeDE                 = '';
SET @AllianceSkyborneFemalezhCN                 = '';
SET @AllianceSkyborneFemalezhTW                 = '';
SET @AllianceSkyborneFemaleesES                 = '';
SET @AllianceSkyborneFemaleesMX                 = '';
SET @AllianceSkyborneFemaleruRU                 = '';
SET @AllianceSkyborneFemalejaJP                 = '';
SET @AllianceSkyborneFemaleptPT                 = '';
SET @AllianceSkyborneFemaleitIT                 = '';
SET @AllianceSkyborneFemaleUnk1                 = '';
SET @AllianceSkyborneFemaleUnk2                 = '';
SET @AllianceSkyborneFemaleUnk3                 = '';
SET @AllianceSkyborneFemaleUnk4                 = '';

SET @AllianceSkyborneMaleenUS                   = '';
SET @AllianceSkyborneMalekoKR                   = '';
SET @AllianceSkyborneMalefrFR                   = '';
SET @AllianceSkyborneMaledeDE                   = '';
SET @AllianceSkyborneMalezhCN                   = '';
SET @AllianceSkyborneMalezhTW                   = '';
SET @AllianceSkyborneMaleesES                   = '';
SET @AllianceSkyborneMaleesMX                   = '';
SET @AllianceSkyborneMaleruRU                   = '';
SET @AllianceSkyborneMalejaJP                   = '';
SET @AllianceSkyborneMaleptPT                   = '';
SET @AllianceSkyborneMaleitIT                   = '';
SET @AllianceSkyborneMaleUnk1                   = '';
SET @AllianceSkyborneMaleUnk2                   = '';
SET @AllianceSkyborneMaleUnk3                   = '';
SET @AllianceSkyborneMaleUnk4                   = '';

SET @AllianceSkyborneRacialNameenUS             = 'Racial - Skyborne';
SET @AllianceSkyborneRacialNamekoKR             = '';
SET @AllianceSkyborneRacialNamefrFR             = '';
SET @AllianceSkyborneRacialNamedeDE             = '';
SET @AllianceSkyborneRacialNamezhCN             = '';
SET @AllianceSkyborneRacialNamezhTW             = '';
SET @AllianceSkyborneRacialNameesES             = '';
SET @AllianceSkyborneRacialNameesMX             = '';
SET @AllianceSkyborneRacialNameruRU             = '';
SET @AllianceSkyborneRacialNamejaJP             = '';
SET @AllianceSkyborneRacialNameptPT             = '';
SET @AllianceSkyborneRacialNameitIT             = '';
SET @AllianceSkyborneRacialNameUnk1             = '';
SET @AllianceSkyborneRacialNameUnk2             = '';
SET @AllianceSkyborneRacialNameUnk3             = '';
SET @AllianceSkyborneRacialNameUnk4             = '';

SET @AllianceSkybornePlayerenUS                 = '"PLAYER", Skyborne';
SET @AllianceSkybornePlayerkoKR                 = '';
SET @AllianceSkybornePlayerfrFR                 = '';
SET @AllianceSkybornePlayerdeDE                 = '';
SET @AllianceSkybornePlayerzhCN                 = '';
SET @AllianceSkybornePlayerzhTW                 = '';
SET @AllianceSkybornePlayeresES                 = '';
SET @AllianceSkybornePlayeresMX                 = '';
SET @AllianceSkybornePlayerruRU                 = '';
SET @AllianceSkybornePlayerjaJP                 = '';
SET @AllianceSkybornePlayerptPT                 = '';
SET @AllianceSkybornePlayeritIT                 = '';
SET @AllianceSkybornePlayerUnk1                 = '';
SET @AllianceSkybornePlayerUnk2                 = '';
SET @AllianceSkybornePlayerUnk3                 = '';
SET @AllianceSkybornePlayerUnk4                 = '';

-- Placeholder name and description
SET @AllianceSkyborneFactionNameenUS            = 'High Order of Zephras';
SET @AllianceSkyborneFactionNamekoKR            = '';
SET @AllianceSkyborneFactionNamefrFR            = '';
SET @AllianceSkyborneFactionNamedeDE            = '';
SET @AllianceSkyborneFactionNamezhCN            = '';
SET @AllianceSkyborneFactionNamezhTW            = '';
SET @AllianceSkyborneFactionNameesES            = '';
SET @AllianceSkyborneFactionNameesMX            = '';
SET @AllianceSkyborneFactionNameruRU            = '';
SET @AllianceSkyborneFactionNamejaJP            = '';
SET @AllianceSkyborneFactionNameptPT            = '';
SET @AllianceSkyborneFactionNameitIT            = '';
SET @AllianceSkyborneFactionNameUnk1            = '';
SET @AllianceSkyborneFactionNameUnk2            = '';
SET @AllianceSkyborneFactionNameUnk3            = '';
SET @AllianceSkyborneFactionNameUnk4            = '';

SET @AllianceSkyborneFactionDescriptionenUS     = 'Skyborne high elves of Zephras Isle, raised to Skywall by their pact with the wind spirits, who fight beside the Alliance.';
SET @AllianceSkyborneFactionDescriptionkoKR     = '';
SET @AllianceSkyborneFactionDescriptionfrFR     = '';
SET @AllianceSkyborneFactionDescriptiondeDE     = '';
SET @AllianceSkyborneFactionDescriptionzhCN     = '';
SET @AllianceSkyborneFactionDescriptionzhTW     = '';
SET @AllianceSkyborneFactionDescriptionesES     = '';
SET @AllianceSkyborneFactionDescriptionesMX     = '';
SET @AllianceSkyborneFactionDescriptionruRU     = '';
SET @AllianceSkyborneFactionDescriptionjaJP     = '';
SET @AllianceSkyborneFactionDescriptionptPT     = '';
SET @AllianceSkyborneFactionDescriptionitIT     = '';
SET @AllianceSkyborneFactionDescriptionUnk1     = '';
SET @AllianceSkyborneFactionDescriptionUnk2     = '';
SET @AllianceSkyborneFactionDescriptionUnk3     = '';
SET @AllianceSkyborneFactionDescriptionUnk4     = '';

SET @AllianceSkyborneAchievementenUS            = 'Realm First! Level 80 Skyborne';
SET @AllianceSkyborneAchievementkoKR            = '';
SET @AllianceSkyborneAchievementfrFR            = '';
SET @AllianceSkyborneAchievementdeDE            = '';
SET @AllianceSkyborneAchievementzhCN            = '';
SET @AllianceSkyborneAchievementzhTW            = '';
SET @AllianceSkyborneAchievementesES            = '';
SET @AllianceSkyborneAchievementesMX            = '';
SET @AllianceSkyborneAchievementruRU            = '';
SET @AllianceSkyborneAchievementjaJP            = '';
SET @AllianceSkyborneAchievementptPT            = '';
SET @AllianceSkyborneAchievementitIT            = '';
SET @AllianceSkyborneAchievementUnk1            = '';
SET @AllianceSkyborneAchievementUnk2            = '';
SET @AllianceSkyborneAchievementUnk3            = '';
SET @AllianceSkyborneAchievementUnk4            = '';

SET @AllianceSkyborneAchievementDescriptionenUS = 'First Skyborne on the realm to achieve level 80.';
SET @AllianceSkyborneAchievementDescriptionkoKR = '';
SET @AllianceSkyborneAchievementDescriptionfrFR = '';
SET @AllianceSkyborneAchievementDescriptiondeDE = '';
SET @AllianceSkyborneAchievementDescriptionzhCN = '';
SET @AllianceSkyborneAchievementDescriptionzhTW = '';
SET @AllianceSkyborneAchievementDescriptionesES = '';
SET @AllianceSkyborneAchievementDescriptionesMX = '';
SET @AllianceSkyborneAchievementDescriptionruRU = '';
SET @AllianceSkyborneAchievementDescriptionjaJP = '';
SET @AllianceSkyborneAchievementDescriptionptPT = '';
SET @AllianceSkyborneAchievementDescriptionitIT = '';
SET @AllianceSkyborneAchievementDescriptionUnk1 = '';
SET @AllianceSkyborneAchievementDescriptionUnk2 = '';
SET @AllianceSkyborneAchievementDescriptionUnk3 = '';
SET @AllianceSkyborneAchievementDescriptionUnk4 = '';
