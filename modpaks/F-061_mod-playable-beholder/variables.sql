-- Race ID
SET @Beholder                           := @NextRace := @NextRace +1;
SET @BeholderMask                       = 1 << (@Beholder - 1);
SET @BeholderHelmetMask                 = 1 << @Beholder;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @BeholderMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @BeholderMask;
SET @BowHunters                           = @BowHunters      | @BeholderMask;
SET @BeholderLanguage                      = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @BeholderAlliance                      = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @BeholderKnowThyEnemy                  = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @BeholderHome = @Gnome; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @BeholderKin = @Gnome; -- voice, emotes and names are copied from this race
SET @BeholderFlags = @GnomeFlags;
SET @BeholderExplorationSound = @GnomeExplorationSound;
SET @BeholderCinematicSequence = @GnomeCinematicSequence;
SET @BeholderBlood = 1;
SET @BeholderMaleModelPath = 'Character\\Beholder\\Beholder.mdx'; -- WallCraft model, converted to the 3.3.5 format
SET @BeholderFaction = 1237; -- vacant slot
SET @BeholderPlayer = 1238; -- vacant slot

-- Strings
SET @BeholderClientPrefix               = 'Gn'; -- helmet models of this prefix
SET @BeholderClientString               = 'Beholder';
SET @BeholderFacialHairCustomization1   = 'NORMAL';
SET @BeholderFacialHairCustomization2   = 'NORMAL';
SET @BeholderHairCustomization          = 'NORMAL';

-- Localization Strings
SET @BeholderenUS                       = 'Beholder';
SET @BeholderkoKR                       = '';
SET @BeholderfrFR                       = '';
SET @BeholderdeDE                       = '';
SET @BeholderzhCN                       = '';
SET @BeholderzhTW                       = '';
SET @BeholderesES                       = '';
SET @BeholderesMX                       = '';
SET @BeholderruRU                       = '';
SET @BeholderjaJP                       = '';
SET @BeholderptPT                       = '';
SET @BeholderitIT                       = '';
SET @BeholderUnk1                       = '';
SET @BeholderUnk2                       = '';
SET @BeholderUnk3                       = '';
SET @BeholderUnk4                       = '';

SET @BeholderFemaleenUS                 = '';
SET @BeholderFemalekoKR                 = '';
SET @BeholderFemalefrFR                 = '';
SET @BeholderFemaledeDE                 = '';
SET @BeholderFemalezhCN                 = '';
SET @BeholderFemalezhTW                 = '';
SET @BeholderFemaleesES                 = '';
SET @BeholderFemaleesMX                 = '';
SET @BeholderFemaleruRU                 = '';
SET @BeholderFemalejaJP                 = '';
SET @BeholderFemaleptPT                 = '';
SET @BeholderFemaleitIT                 = '';
SET @BeholderFemaleUnk1                 = '';
SET @BeholderFemaleUnk2                 = '';
SET @BeholderFemaleUnk3                 = '';
SET @BeholderFemaleUnk4                 = '';

SET @BeholderMaleenUS                   = '';
SET @BeholderMalekoKR                   = '';
SET @BeholderMalefrFR                   = '';
SET @BeholderMaledeDE                   = '';
SET @BeholderMalezhCN                   = '';
SET @BeholderMalezhTW                   = '';
SET @BeholderMaleesES                   = '';
SET @BeholderMaleesMX                   = '';
SET @BeholderMaleruRU                   = '';
SET @BeholderMalejaJP                   = '';
SET @BeholderMaleptPT                   = '';
SET @BeholderMaleitIT                   = '';
SET @BeholderMaleUnk1                   = '';
SET @BeholderMaleUnk2                   = '';
SET @BeholderMaleUnk3                   = '';
SET @BeholderMaleUnk4                   = '';

SET @BeholderRacialNameenUS             = 'Racial - Beholder';
SET @BeholderRacialNamekoKR             = '';
SET @BeholderRacialNamefrFR             = '';
SET @BeholderRacialNamedeDE             = '';
SET @BeholderRacialNamezhCN             = '';
SET @BeholderRacialNamezhTW             = '';
SET @BeholderRacialNameesES             = '';
SET @BeholderRacialNameesMX             = '';
SET @BeholderRacialNameruRU             = '';
SET @BeholderRacialNamejaJP             = '';
SET @BeholderRacialNameptPT             = '';
SET @BeholderRacialNameitIT             = '';
SET @BeholderRacialNameUnk1             = '';
SET @BeholderRacialNameUnk2             = '';
SET @BeholderRacialNameUnk3             = '';
SET @BeholderRacialNameUnk4             = '';

SET @BeholderPlayerenUS                 = '"PLAYER", Beholder';
SET @BeholderPlayerkoKR                 = '';
SET @BeholderPlayerfrFR                 = '';
SET @BeholderPlayerdeDE                 = '';
SET @BeholderPlayerzhCN                 = '';
SET @BeholderPlayerzhTW                 = '';
SET @BeholderPlayeresES                 = '';
SET @BeholderPlayeresMX                 = '';
SET @BeholderPlayerruRU                 = '';
SET @BeholderPlayerjaJP                 = '';
SET @BeholderPlayerptPT                 = '';
SET @BeholderPlayeritIT                 = '';
SET @BeholderPlayerUnk1                 = '';
SET @BeholderPlayerUnk2                 = '';
SET @BeholderPlayerUnk3                 = '';
SET @BeholderPlayerUnk4                 = '';

-- Placeholder name and description
SET @BeholderFactionNameenUS            = 'The All-Seeing';
SET @BeholderFactionNamekoKR            = '';
SET @BeholderFactionNamefrFR            = '';
SET @BeholderFactionNamedeDE            = '';
SET @BeholderFactionNamezhCN            = '';
SET @BeholderFactionNamezhTW            = '';
SET @BeholderFactionNameesES            = '';
SET @BeholderFactionNameesMX            = '';
SET @BeholderFactionNameruRU            = '';
SET @BeholderFactionNamejaJP            = '';
SET @BeholderFactionNameptPT            = '';
SET @BeholderFactionNameitIT            = '';
SET @BeholderFactionNameUnk1            = '';
SET @BeholderFactionNameUnk2            = '';
SET @BeholderFactionNameUnk3            = '';
SET @BeholderFactionNameUnk4            = '';

SET @BeholderFactionDescriptionenUS     = 'Beholders bound to the gnomes of Gnomeregan by an ancient pact.';
SET @BeholderFactionDescriptionkoKR     = '';
SET @BeholderFactionDescriptionfrFR     = '';
SET @BeholderFactionDescriptiondeDE     = '';
SET @BeholderFactionDescriptionzhCN     = '';
SET @BeholderFactionDescriptionzhTW     = '';
SET @BeholderFactionDescriptionesES     = '';
SET @BeholderFactionDescriptionesMX     = '';
SET @BeholderFactionDescriptionruRU     = '';
SET @BeholderFactionDescriptionjaJP     = '';
SET @BeholderFactionDescriptionptPT     = '';
SET @BeholderFactionDescriptionitIT     = '';
SET @BeholderFactionDescriptionUnk1     = '';
SET @BeholderFactionDescriptionUnk2     = '';
SET @BeholderFactionDescriptionUnk3     = '';
SET @BeholderFactionDescriptionUnk4     = '';

SET @BeholderAchievementenUS            = 'Realm First! Level 80 Beholder';
SET @BeholderAchievementkoKR            = '';
SET @BeholderAchievementfrFR            = '';
SET @BeholderAchievementdeDE            = '';
SET @BeholderAchievementzhCN            = '';
SET @BeholderAchievementzhTW            = '';
SET @BeholderAchievementesES            = '';
SET @BeholderAchievementesMX            = '';
SET @BeholderAchievementruRU            = '';
SET @BeholderAchievementjaJP            = '';
SET @BeholderAchievementptPT            = '';
SET @BeholderAchievementitIT            = '';
SET @BeholderAchievementUnk1            = '';
SET @BeholderAchievementUnk2            = '';
SET @BeholderAchievementUnk3            = '';
SET @BeholderAchievementUnk4            = '';

SET @BeholderAchievementDescriptionenUS = 'First Beholder on the realm to achieve level 80.';
SET @BeholderAchievementDescriptionkoKR = '';
SET @BeholderAchievementDescriptionfrFR = '';
SET @BeholderAchievementDescriptiondeDE = '';
SET @BeholderAchievementDescriptionzhCN = '';
SET @BeholderAchievementDescriptionzhTW = '';
SET @BeholderAchievementDescriptionesES = '';
SET @BeholderAchievementDescriptionesMX = '';
SET @BeholderAchievementDescriptionruRU = '';
SET @BeholderAchievementDescriptionjaJP = '';
SET @BeholderAchievementDescriptionptPT = '';
SET @BeholderAchievementDescriptionitIT = '';
SET @BeholderAchievementDescriptionUnk1 = '';
SET @BeholderAchievementDescriptionUnk2 = '';
SET @BeholderAchievementDescriptionUnk3 = '';
SET @BeholderAchievementDescriptionUnk4 = '';
