-- Race ID
SET @Mechagnome                           := @NextRace := @NextRace +1;
SET @MechagnomeMask                       = 1 << (@Mechagnome - 1);
SET @MechagnomeHelmetMask                 = 1 << @Mechagnome;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @MechagnomeMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @MechagnomeMask;
SET @GunHunters                           = @GunHunters      | @MechagnomeMask;
SET @MechagnomeLanguage                   = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @MechagnomeAlliance                   = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @MechagnomeKnowThyEnemy               = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @MechagnomeHome                       = @Gnome; -- classes, start outfits, start position, action bars and stats are copied from this race
SET @MechagnomeExplorationSound           = @GnomeExplorationSound;
SET @MechagnomeCinematicSequence          = @GnomeCinematicSequence;
SET @MechagnomeBlood                      = 1;
SET @MechagnomeMaleModelPath              = 'custom\\mechagnome\\native\\male\\mechagnomemale.mdx';
SET @MechagnomeFemaleModelPath            = 'custom\\mechagnome\\native\\female\\mechagnomefemale.mdx';
SET @MechagnomeMaleFootprint              = @FootprintShoe;
SET @MechagnomeFemaleFootprint            = @FootprintShoe;
SET @MechagnomeRacials                    = @MechagnomeRacials;
SET @MechagnomeFaction                    = 1195; -- vacant slot
SET @MechagnomePlayer                     = 1196; -- vacant slot

-- Strings
SET @MechagnomeClientPrefix               = 'Gn'; -- Gnome prefix, so Gnome helmet models are used
SET @MechagnomeClientString               = 'Mechagnome';
SET @MechagnomeFacialHairCustomization1   = 'NORMAL';
SET @MechagnomeFacialHairCustomization2   = 'NORMAL';
SET @MechagnomeHairCustomization          = 'NORMAL';

-- Localization Strings
SET @MechagnomeenUS                       = 'Mechagnome';
SET @MechagnomekoKR                       = '';
SET @MechagnomefrFR                       = '';
SET @MechagnomedeDE                       = '';
SET @MechagnomezhCN                       = '';
SET @MechagnomezhTW                       = '';
SET @MechagnomeesES                       = '';
SET @MechagnomeesMX                       = '';
SET @MechagnomeruRU                       = '';
SET @MechagnomejaJP                       = '';
SET @MechagnomeptPT                       = '';
SET @MechagnomeitIT                       = '';
SET @MechagnomeUnk1                       = '';
SET @MechagnomeUnk2                       = '';
SET @MechagnomeUnk3                       = '';
SET @MechagnomeUnk4                       = '';

SET @MechagnomeFemaleenUS                 = '';
SET @MechagnomeFemalekoKR                 = '';
SET @MechagnomeFemalefrFR                 = '';
SET @MechagnomeFemaledeDE                 = '';
SET @MechagnomeFemalezhCN                 = '';
SET @MechagnomeFemalezhTW                 = '';
SET @MechagnomeFemaleesES                 = '';
SET @MechagnomeFemaleesMX                 = '';
SET @MechagnomeFemaleruRU                 = '';
SET @MechagnomeFemalejaJP                 = '';
SET @MechagnomeFemaleptPT                 = '';
SET @MechagnomeFemaleitIT                 = '';
SET @MechagnomeFemaleUnk1                 = '';
SET @MechagnomeFemaleUnk2                 = '';
SET @MechagnomeFemaleUnk3                 = '';
SET @MechagnomeFemaleUnk4                 = '';

SET @MechagnomeMaleenUS                   = '';
SET @MechagnomeMalekoKR                   = '';
SET @MechagnomeMalefrFR                   = '';
SET @MechagnomeMaledeDE                   = '';
SET @MechagnomeMalezhCN                   = '';
SET @MechagnomeMalezhTW                   = '';
SET @MechagnomeMaleesES                   = '';
SET @MechagnomeMaleesMX                   = '';
SET @MechagnomeMaleruRU                   = '';
SET @MechagnomeMalejaJP                   = '';
SET @MechagnomeMaleptPT                   = '';
SET @MechagnomeMaleitIT                   = '';
SET @MechagnomeMaleUnk1                   = '';
SET @MechagnomeMaleUnk2                   = '';
SET @MechagnomeMaleUnk3                   = '';
SET @MechagnomeMaleUnk4                   = '';

SET @MechagnomeRacialNameenUS             = 'Racial - Mechagnome';
SET @MechagnomeRacialNamekoKR             = '';
SET @MechagnomeRacialNamefrFR             = '';
SET @MechagnomeRacialNamedeDE             = '';
SET @MechagnomeRacialNamezhCN             = '';
SET @MechagnomeRacialNamezhTW             = '';
SET @MechagnomeRacialNameesES             = '';
SET @MechagnomeRacialNameesMX             = '';
SET @MechagnomeRacialNameruRU             = '';
SET @MechagnomeRacialNamejaJP             = '';
SET @MechagnomeRacialNameptPT             = '';
SET @MechagnomeRacialNameitIT             = '';
SET @MechagnomeRacialNameUnk1             = '';
SET @MechagnomeRacialNameUnk2             = '';
SET @MechagnomeRacialNameUnk3             = '';
SET @MechagnomeRacialNameUnk4             = '';

SET @MechagnomePlayerenUS                 = '"PLAYER", " Mechagnome"';
SET @MechagnomePlayerkoKR                 = '';
SET @MechagnomePlayerfrFR                 = '';
SET @MechagnomePlayerdeDE                 = '';
SET @MechagnomePlayerzhCN                 = '';
SET @MechagnomePlayerzhTW                 = '';
SET @MechagnomePlayeresES                 = '';
SET @MechagnomePlayeresMX                 = '';
SET @MechagnomePlayerruRU                 = '';
SET @MechagnomePlayerjaJP                 = '';
SET @MechagnomePlayerptPT                 = '';
SET @MechagnomePlayeritIT                 = '';
SET @MechagnomePlayerUnk1                 = '';
SET @MechagnomePlayerUnk2                 = '';
SET @MechagnomePlayerUnk3                 = '';
SET @MechagnomePlayerUnk4                 = '';

SET @MechagnomeFactionNameenUS            = 'Mechagon';
SET @MechagnomeFactionNamekoKR            = '';
SET @MechagnomeFactionNamefrFR            = '';
SET @MechagnomeFactionNamedeDE            = '';
SET @MechagnomeFactionNamezhCN            = '';
SET @MechagnomeFactionNamezhTW            = '';
SET @MechagnomeFactionNameesES            = '';
SET @MechagnomeFactionNameesMX            = '';
SET @MechagnomeFactionNameruRU            = '';
SET @MechagnomeFactionNamejaJP            = '';
SET @MechagnomeFactionNameptPT            = '';
SET @MechagnomeFactionNameitIT            = '';
SET @MechagnomeFactionNameUnk1            = '';
SET @MechagnomeFactionNameUnk2            = '';
SET @MechagnomeFactionNameUnk3            = '';
SET @MechagnomeFactionNameUnk4            = '';

SET @MechagnomeFactionDescriptionenUS     = 'The island of the mechagnomes.';
SET @MechagnomeFactionDescriptionkoKR     = '';
SET @MechagnomeFactionDescriptionfrFR     = '';
SET @MechagnomeFactionDescriptiondeDE     = '';
SET @MechagnomeFactionDescriptionzhCN     = '';
SET @MechagnomeFactionDescriptionzhTW     = '';
SET @MechagnomeFactionDescriptionesES     = '';
SET @MechagnomeFactionDescriptionesMX     = '';
SET @MechagnomeFactionDescriptionruRU     = '';
SET @MechagnomeFactionDescriptionjaJP     = '';
SET @MechagnomeFactionDescriptionptPT     = '';
SET @MechagnomeFactionDescriptionitIT     = '';
SET @MechagnomeFactionDescriptionUnk1     = '';
SET @MechagnomeFactionDescriptionUnk2     = '';
SET @MechagnomeFactionDescriptionUnk3     = '';
SET @MechagnomeFactionDescriptionUnk4     = '';

SET @MechagnomeAchievementenUS            = 'Realm First! Level 80 Mechagnome';
SET @MechagnomeAchievementkoKR            = '';
SET @MechagnomeAchievementfrFR            = '';
SET @MechagnomeAchievementdeDE            = '';
SET @MechagnomeAchievementzhCN            = '';
SET @MechagnomeAchievementzhTW            = '';
SET @MechagnomeAchievementesES            = '';
SET @MechagnomeAchievementesMX            = '';
SET @MechagnomeAchievementruRU            = '';
SET @MechagnomeAchievementjaJP            = '';
SET @MechagnomeAchievementptPT            = '';
SET @MechagnomeAchievementitIT            = '';
SET @MechagnomeAchievementUnk1            = '';
SET @MechagnomeAchievementUnk2            = '';
SET @MechagnomeAchievementUnk3            = '';
SET @MechagnomeAchievementUnk4            = '';

SET @MechagnomeAchievementDescriptionenUS = 'First mechagnome on the realm to achieve level 80.';
SET @MechagnomeAchievementDescriptionkoKR = '';
SET @MechagnomeAchievementDescriptionfrFR = '';
SET @MechagnomeAchievementDescriptiondeDE = '';
SET @MechagnomeAchievementDescriptionzhCN = '';
SET @MechagnomeAchievementDescriptionzhTW = '';
SET @MechagnomeAchievementDescriptionesES = '';
SET @MechagnomeAchievementDescriptionesMX = '';
SET @MechagnomeAchievementDescriptionruRU = '';
SET @MechagnomeAchievementDescriptionjaJP = '';
SET @MechagnomeAchievementDescriptionptPT = '';
SET @MechagnomeAchievementDescriptionitIT = '';
SET @MechagnomeAchievementDescriptionUnk1 = '';
SET @MechagnomeAchievementDescriptionUnk2 = '';
SET @MechagnomeAchievementDescriptionUnk3 = '';
SET @MechagnomeAchievementDescriptionUnk4 = '';
