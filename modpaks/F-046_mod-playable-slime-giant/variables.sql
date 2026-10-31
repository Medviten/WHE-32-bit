-- Race ID
SET @SlimeGiant                           := @NextRace := @NextRace +1;
SET @SlimeGiantMask                       = 1 << (@SlimeGiant - 1);
SET @SlimeGiantHelmetMask                 = 1 << @SlimeGiant;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @SlimeGiantMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @SlimeGiantMask;
SET @BowHunters                           = @BowHunters        | @SlimeGiantMask;
SET @SlimeGiantLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @SlimeGiantAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @SlimeGiantKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @SlimeGiantHome                       = @Orc;    -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @SlimeGiantKin                        = @Undead; -- voice, emotes and names are copied from this race (the Slime Giant is a skeleton)
SET @SlimeGiantFlags                      = @BarefootFlag | @CanMountFlag | @PlayableFlag; -- 14: no boots model, like Tauren
SET @SlimeGiantExplorationSound           = @OrcExplorationSound;
SET @SlimeGiantCinematicSequence          = @OrcCinematicSequence;
SET @SlimeGiantBlood                      = 1;
SET @SlimeGiantModelPath                  = 'Character\\SlimeGiant\\Male\\SlimeGiantMale.mdx'; -- one body for both genders (male-only race)
SET @SlimeGiantFaction                    = 1207; -- vacant slot
SET @SlimeGiantPlayer                     = 1208; -- vacant slot

-- Strings
SET @SlimeGiantClientPrefix               = 'Kt'; -- Kul Tiran prefix: the model's helmet, shoulder and cloak attachments match Kul Tiran's
SET @SlimeGiantClientString               = 'SlimeGiant';
SET @SlimeGiantFacialHairCustomization1   = 'DRIP'; -- facial hair style 0 = no drip, 1 = drip (geoset 102); FACIAL_HAIR_DRIP in GlueStrings/GlobalStrings
SET @SlimeGiantFacialHairCustomization2   = 'DRIP';
SET @SlimeGiantHairCustomization          = 'NORMAL';

-- Localization Strings
SET @SlimeGiantenUS                       = 'Slime Giant';
SET @SlimeGiantkoKR                       = '';
SET @SlimeGiantfrFR                       = '';
SET @SlimeGiantdeDE                       = '';
SET @SlimeGiantzhCN                       = '';
SET @SlimeGiantzhTW                       = '';
SET @SlimeGiantesES                       = '';
SET @SlimeGiantesMX                       = '';
SET @SlimeGiantruRU                       = '';
SET @SlimeGiantjaJP                       = '';
SET @SlimeGiantptPT                       = '';
SET @SlimeGiantitIT                       = '';
SET @SlimeGiantUnk1                       = '';
SET @SlimeGiantUnk2                       = '';
SET @SlimeGiantUnk3                       = '';
SET @SlimeGiantUnk4                       = '';

SET @SlimeGiantFemaleenUS                 = '';
SET @SlimeGiantFemalekoKR                 = '';
SET @SlimeGiantFemalefrFR                 = '';
SET @SlimeGiantFemaledeDE                 = '';
SET @SlimeGiantFemalezhCN                 = '';
SET @SlimeGiantFemalezhTW                 = '';
SET @SlimeGiantFemaleesES                 = '';
SET @SlimeGiantFemaleesMX                 = '';
SET @SlimeGiantFemaleruRU                 = '';
SET @SlimeGiantFemalejaJP                 = '';
SET @SlimeGiantFemaleptPT                 = '';
SET @SlimeGiantFemaleitIT                 = '';
SET @SlimeGiantFemaleUnk1                 = '';
SET @SlimeGiantFemaleUnk2                 = '';
SET @SlimeGiantFemaleUnk3                 = '';
SET @SlimeGiantFemaleUnk4                 = '';

SET @SlimeGiantMaleenUS                   = '';
SET @SlimeGiantMalekoKR                   = '';
SET @SlimeGiantMalefrFR                   = '';
SET @SlimeGiantMaledeDE                   = '';
SET @SlimeGiantMalezhCN                   = '';
SET @SlimeGiantMalezhTW                   = '';
SET @SlimeGiantMaleesES                   = '';
SET @SlimeGiantMaleesMX                   = '';
SET @SlimeGiantMaleruRU                   = '';
SET @SlimeGiantMalejaJP                   = '';
SET @SlimeGiantMaleptPT                   = '';
SET @SlimeGiantMaleitIT                   = '';
SET @SlimeGiantMaleUnk1                   = '';
SET @SlimeGiantMaleUnk2                   = '';
SET @SlimeGiantMaleUnk3                   = '';
SET @SlimeGiantMaleUnk4                   = '';

SET @SlimeGiantRacialNameenUS             = 'Racial - Slime Giant';
SET @SlimeGiantRacialNamekoKR             = '';
SET @SlimeGiantRacialNamefrFR             = '';
SET @SlimeGiantRacialNamedeDE             = '';
SET @SlimeGiantRacialNamezhCN             = '';
SET @SlimeGiantRacialNamezhTW             = '';
SET @SlimeGiantRacialNameesES             = '';
SET @SlimeGiantRacialNameesMX             = '';
SET @SlimeGiantRacialNameruRU             = '';
SET @SlimeGiantRacialNamejaJP             = '';
SET @SlimeGiantRacialNameptPT             = '';
SET @SlimeGiantRacialNameitIT             = '';
SET @SlimeGiantRacialNameUnk1             = '';
SET @SlimeGiantRacialNameUnk2             = '';
SET @SlimeGiantRacialNameUnk3             = '';
SET @SlimeGiantRacialNameUnk4             = '';

SET @SlimeGiantPlayerenUS                 = '"PLAYER", " Slime Giant"';
SET @SlimeGiantPlayerkoKR                 = '';
SET @SlimeGiantPlayerfrFR                 = '';
SET @SlimeGiantPlayerdeDE                 = '';
SET @SlimeGiantPlayerzhCN                 = '';
SET @SlimeGiantPlayerzhTW                 = '';
SET @SlimeGiantPlayeresES                 = '';
SET @SlimeGiantPlayeresMX                 = '';
SET @SlimeGiantPlayerruRU                 = '';
SET @SlimeGiantPlayerjaJP                 = '';
SET @SlimeGiantPlayerptPT                 = '';
SET @SlimeGiantPlayeritIT                 = '';
SET @SlimeGiantPlayerUnk1                 = '';
SET @SlimeGiantPlayerUnk2                 = '';
SET @SlimeGiantPlayerUnk3                 = '';
SET @SlimeGiantPlayerUnk4                 = '';

-- Placeholder name and description (no lore faction)
SET @SlimeGiantFactionNameenUS            = 'Slime Giant';
SET @SlimeGiantFactionNamekoKR            = '';
SET @SlimeGiantFactionNamefrFR            = '';
SET @SlimeGiantFactionNamedeDE            = '';
SET @SlimeGiantFactionNamezhCN            = '';
SET @SlimeGiantFactionNamezhTW            = '';
SET @SlimeGiantFactionNameesES            = '';
SET @SlimeGiantFactionNameesMX            = '';
SET @SlimeGiantFactionNameruRU            = '';
SET @SlimeGiantFactionNamejaJP            = '';
SET @SlimeGiantFactionNameptPT            = '';
SET @SlimeGiantFactionNameitIT            = '';
SET @SlimeGiantFactionNameUnk1            = '';
SET @SlimeGiantFactionNameUnk2            = '';
SET @SlimeGiantFactionNameUnk3            = '';
SET @SlimeGiantFactionNameUnk4            = '';

SET @SlimeGiantFactionDescriptionenUS     = 'Slime-wrapped giants who have joined the Horde.';
SET @SlimeGiantFactionDescriptionkoKR     = '';
SET @SlimeGiantFactionDescriptionfrFR     = '';
SET @SlimeGiantFactionDescriptiondeDE     = '';
SET @SlimeGiantFactionDescriptionzhCN     = '';
SET @SlimeGiantFactionDescriptionzhTW     = '';
SET @SlimeGiantFactionDescriptionesES     = '';
SET @SlimeGiantFactionDescriptionesMX     = '';
SET @SlimeGiantFactionDescriptionruRU     = '';
SET @SlimeGiantFactionDescriptionjaJP     = '';
SET @SlimeGiantFactionDescriptionptPT     = '';
SET @SlimeGiantFactionDescriptionitIT     = '';
SET @SlimeGiantFactionDescriptionUnk1     = '';
SET @SlimeGiantFactionDescriptionUnk2     = '';
SET @SlimeGiantFactionDescriptionUnk3     = '';
SET @SlimeGiantFactionDescriptionUnk4     = '';

SET @SlimeGiantAchievementenUS            = 'Realm First! Level 80 Slime Giant';
SET @SlimeGiantAchievementkoKR            = '';
SET @SlimeGiantAchievementfrFR            = '';
SET @SlimeGiantAchievementdeDE            = '';
SET @SlimeGiantAchievementzhCN            = '';
SET @SlimeGiantAchievementzhTW            = '';
SET @SlimeGiantAchievementesES            = '';
SET @SlimeGiantAchievementesMX            = '';
SET @SlimeGiantAchievementruRU            = '';
SET @SlimeGiantAchievementjaJP            = '';
SET @SlimeGiantAchievementptPT            = '';
SET @SlimeGiantAchievementitIT            = '';
SET @SlimeGiantAchievementUnk1            = '';
SET @SlimeGiantAchievementUnk2            = '';
SET @SlimeGiantAchievementUnk3            = '';
SET @SlimeGiantAchievementUnk4            = '';

SET @SlimeGiantAchievementDescriptionenUS = 'First slime giant on the realm to achieve level 80.';
SET @SlimeGiantAchievementDescriptionkoKR = '';
SET @SlimeGiantAchievementDescriptionfrFR = '';
SET @SlimeGiantAchievementDescriptiondeDE = '';
SET @SlimeGiantAchievementDescriptionzhCN = '';
SET @SlimeGiantAchievementDescriptionzhTW = '';
SET @SlimeGiantAchievementDescriptionesES = '';
SET @SlimeGiantAchievementDescriptionesMX = '';
SET @SlimeGiantAchievementDescriptionruRU = '';
SET @SlimeGiantAchievementDescriptionjaJP = '';
SET @SlimeGiantAchievementDescriptionptPT = '';
SET @SlimeGiantAchievementDescriptionitIT = '';
SET @SlimeGiantAchievementDescriptionUnk1 = '';
SET @SlimeGiantAchievementDescriptionUnk2 = '';
SET @SlimeGiantAchievementDescriptionUnk3 = '';
SET @SlimeGiantAchievementDescriptionUnk4 = '';
