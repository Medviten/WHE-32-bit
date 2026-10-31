-- Race ID
SET @Eredar                           := @NextRace := @NextRace +1;
SET @EredarMask                       = 1 << (@Eredar - 1);
SET @EredarHelmetMask                 = 1 << @Eredar;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @EredarMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @EredarMask;
SET @BowHunters                           = @BowHunters      | @EredarMask;
SET @EredarLanguage                      = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @EredarAlliance                      = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @EredarKnowThyEnemy                  = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @EredarHome = @Draenei; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @EredarKin = @Draenei; -- voice, emotes and names are copied from this race
SET @EredarFlags = @DraeneiFlags;
SET @EredarExplorationSound = @DraeneiExplorationSound;
SET @EredarCinematicSequence = @DraeneiCinematicSequence;
SET @EredarBlood = 1;
SET @EredarMaleModelPath = 'Character\\Eredar\\Male\\Eredar.mdx'; -- WallCraft model, converted to the 3.3.5 format
SET @EredarFemaleModelPath = 'Character\\Eredar\\Female\\EredarFemale.mdx';
SET @EredarFaction = 1221; -- vacant slot
SET @EredarPlayer = 1222; -- vacant slot

-- Strings
SET @EredarClientPrefix               = 'Dr'; -- helmet models of this prefix
SET @EredarClientString               = 'Eredar';
SET @EredarFacialHairCustomization1   = 'NORMAL';
SET @EredarFacialHairCustomization2   = 'NORMAL';
SET @EredarHairCustomization          = 'NORMAL';

-- Localization Strings
SET @EredarenUS                       = 'Eredar';
SET @EredarkoKR                       = '';
SET @EredarfrFR                       = '';
SET @EredardeDE                       = '';
SET @EredarzhCN                       = '';
SET @EredarzhTW                       = '';
SET @EredaresES                       = '';
SET @EredaresMX                       = '';
SET @EredarruRU                       = '';
SET @EredarjaJP                       = '';
SET @EredarptPT                       = '';
SET @EredaritIT                       = '';
SET @EredarUnk1                       = '';
SET @EredarUnk2                       = '';
SET @EredarUnk3                       = '';
SET @EredarUnk4                       = '';

SET @EredarFemaleenUS                 = '';
SET @EredarFemalekoKR                 = '';
SET @EredarFemalefrFR                 = '';
SET @EredarFemaledeDE                 = '';
SET @EredarFemalezhCN                 = '';
SET @EredarFemalezhTW                 = '';
SET @EredarFemaleesES                 = '';
SET @EredarFemaleesMX                 = '';
SET @EredarFemaleruRU                 = '';
SET @EredarFemalejaJP                 = '';
SET @EredarFemaleptPT                 = '';
SET @EredarFemaleitIT                 = '';
SET @EredarFemaleUnk1                 = '';
SET @EredarFemaleUnk2                 = '';
SET @EredarFemaleUnk3                 = '';
SET @EredarFemaleUnk4                 = '';

SET @EredarMaleenUS                   = '';
SET @EredarMalekoKR                   = '';
SET @EredarMalefrFR                   = '';
SET @EredarMaledeDE                   = '';
SET @EredarMalezhCN                   = '';
SET @EredarMalezhTW                   = '';
SET @EredarMaleesES                   = '';
SET @EredarMaleesMX                   = '';
SET @EredarMaleruRU                   = '';
SET @EredarMalejaJP                   = '';
SET @EredarMaleptPT                   = '';
SET @EredarMaleitIT                   = '';
SET @EredarMaleUnk1                   = '';
SET @EredarMaleUnk2                   = '';
SET @EredarMaleUnk3                   = '';
SET @EredarMaleUnk4                   = '';

SET @EredarRacialNameenUS             = 'Racial - Eredar';
SET @EredarRacialNamekoKR             = '';
SET @EredarRacialNamefrFR             = '';
SET @EredarRacialNamedeDE             = '';
SET @EredarRacialNamezhCN             = '';
SET @EredarRacialNamezhTW             = '';
SET @EredarRacialNameesES             = '';
SET @EredarRacialNameesMX             = '';
SET @EredarRacialNameruRU             = '';
SET @EredarRacialNamejaJP             = '';
SET @EredarRacialNameptPT             = '';
SET @EredarRacialNameitIT             = '';
SET @EredarRacialNameUnk1             = '';
SET @EredarRacialNameUnk2             = '';
SET @EredarRacialNameUnk3             = '';
SET @EredarRacialNameUnk4             = '';

SET @EredarPlayerenUS                 = '"PLAYER", Eredar';
SET @EredarPlayerkoKR                 = '';
SET @EredarPlayerfrFR                 = '';
SET @EredarPlayerdeDE                 = '';
SET @EredarPlayerzhCN                 = '';
SET @EredarPlayerzhTW                 = '';
SET @EredarPlayeresES                 = '';
SET @EredarPlayeresMX                 = '';
SET @EredarPlayerruRU                 = '';
SET @EredarPlayerjaJP                 = '';
SET @EredarPlayerptPT                 = '';
SET @EredarPlayeritIT                 = '';
SET @EredarPlayerUnk1                 = '';
SET @EredarPlayerUnk2                 = '';
SET @EredarPlayerUnk3                 = '';
SET @EredarPlayerUnk4                 = '';

-- Placeholder name and description
SET @EredarFactionNameenUS            = 'Eredar Penitents';
SET @EredarFactionNamekoKR            = '';
SET @EredarFactionNamefrFR            = '';
SET @EredarFactionNamedeDE            = '';
SET @EredarFactionNamezhCN            = '';
SET @EredarFactionNamezhTW            = '';
SET @EredarFactionNameesES            = '';
SET @EredarFactionNameesMX            = '';
SET @EredarFactionNameruRU            = '';
SET @EredarFactionNamejaJP            = '';
SET @EredarFactionNameptPT            = '';
SET @EredarFactionNameitIT            = '';
SET @EredarFactionNameUnk1            = '';
SET @EredarFactionNameUnk2            = '';
SET @EredarFactionNameUnk3            = '';
SET @EredarFactionNameUnk4            = '';

SET @EredarFactionDescriptionenUS     = 'Eredar who renounced the Legion and seek redemption among the draenei.';
SET @EredarFactionDescriptionkoKR     = '';
SET @EredarFactionDescriptionfrFR     = '';
SET @EredarFactionDescriptiondeDE     = '';
SET @EredarFactionDescriptionzhCN     = '';
SET @EredarFactionDescriptionzhTW     = '';
SET @EredarFactionDescriptionesES     = '';
SET @EredarFactionDescriptionesMX     = '';
SET @EredarFactionDescriptionruRU     = '';
SET @EredarFactionDescriptionjaJP     = '';
SET @EredarFactionDescriptionptPT     = '';
SET @EredarFactionDescriptionitIT     = '';
SET @EredarFactionDescriptionUnk1     = '';
SET @EredarFactionDescriptionUnk2     = '';
SET @EredarFactionDescriptionUnk3     = '';
SET @EredarFactionDescriptionUnk4     = '';

SET @EredarAchievementenUS            = 'Realm First! Level 80 Eredar';
SET @EredarAchievementkoKR            = '';
SET @EredarAchievementfrFR            = '';
SET @EredarAchievementdeDE            = '';
SET @EredarAchievementzhCN            = '';
SET @EredarAchievementzhTW            = '';
SET @EredarAchievementesES            = '';
SET @EredarAchievementesMX            = '';
SET @EredarAchievementruRU            = '';
SET @EredarAchievementjaJP            = '';
SET @EredarAchievementptPT            = '';
SET @EredarAchievementitIT            = '';
SET @EredarAchievementUnk1            = '';
SET @EredarAchievementUnk2            = '';
SET @EredarAchievementUnk3            = '';
SET @EredarAchievementUnk4            = '';

SET @EredarAchievementDescriptionenUS = 'First Eredar on the realm to achieve level 80.';
SET @EredarAchievementDescriptionkoKR = '';
SET @EredarAchievementDescriptionfrFR = '';
SET @EredarAchievementDescriptiondeDE = '';
SET @EredarAchievementDescriptionzhCN = '';
SET @EredarAchievementDescriptionzhTW = '';
SET @EredarAchievementDescriptionesES = '';
SET @EredarAchievementDescriptionesMX = '';
SET @EredarAchievementDescriptionruRU = '';
SET @EredarAchievementDescriptionjaJP = '';
SET @EredarAchievementDescriptionptPT = '';
SET @EredarAchievementDescriptionitIT = '';
SET @EredarAchievementDescriptionUnk1 = '';
SET @EredarAchievementDescriptionUnk2 = '';
SET @EredarAchievementDescriptionUnk3 = '';
SET @EredarAchievementDescriptionUnk4 = '';
