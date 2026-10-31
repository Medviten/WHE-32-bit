-- Race ID
SET @Gnoll                           := @NextRace := @NextRace +1;
SET @GnollMask                       = 1 << (@Gnoll - 1);
SET @GnollHelmetMask                 = 1 << @Gnoll;

-- Important variable updates (Alliance vs. Horde)
SET @AllianceMask                         = @AllianceMask    | @GnollMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask | @GnollMask;
SET @BowHunters                           = @BowHunters      | @GnollMask;
SET @GnollLanguage                      = 7; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @GnollAlliance                      = 0; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @GnollKnowThyEnemy                  = @KnowThyEnemyAlliance;

-- Miscellaneous
SET @GnollHome = @Human; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @GnollKin = @Human; -- voice, emotes and names are copied from this race
SET @GnollFlags = @HumanFlags;
SET @GnollExplorationSound = @HumanExplorationSound;
SET @GnollCinematicSequence = @HumanCinematicSequence;
SET @GnollBlood = 1;
SET @GnollMaleModelPath = 'Character\\Gnoll\\Male\\gnoll.mdx'; -- WallCraft model, converted to the 3.3.5 format
SET @GnollFemaleModelPath = 'Character\\Gnoll\\Male\\gnoll.mdx';
SET @GnollFaction = 1235; -- vacant slot
SET @GnollPlayer = 1236; -- vacant slot

-- Strings
SET @GnollClientPrefix               = 'Hu'; -- helmet models of this prefix
SET @GnollClientString               = 'Gnoll';
SET @GnollFacialHairCustomization1   = 'NORMAL';
SET @GnollFacialHairCustomization2   = 'NORMAL';
SET @GnollHairCustomization          = 'NORMAL';

-- Localization Strings
SET @GnollenUS                       = 'Gnoll';
SET @GnollkoKR                       = '';
SET @GnollfrFR                       = '';
SET @GnolldeDE                       = '';
SET @GnollzhCN                       = '';
SET @GnollzhTW                       = '';
SET @GnollesES                       = '';
SET @GnollesMX                       = '';
SET @GnollruRU                       = '';
SET @GnolljaJP                       = '';
SET @GnollptPT                       = '';
SET @GnollitIT                       = '';
SET @GnollUnk1                       = '';
SET @GnollUnk2                       = '';
SET @GnollUnk3                       = '';
SET @GnollUnk4                       = '';

SET @GnollFemaleenUS                 = '';
SET @GnollFemalekoKR                 = '';
SET @GnollFemalefrFR                 = '';
SET @GnollFemaledeDE                 = '';
SET @GnollFemalezhCN                 = '';
SET @GnollFemalezhTW                 = '';
SET @GnollFemaleesES                 = '';
SET @GnollFemaleesMX                 = '';
SET @GnollFemaleruRU                 = '';
SET @GnollFemalejaJP                 = '';
SET @GnollFemaleptPT                 = '';
SET @GnollFemaleitIT                 = '';
SET @GnollFemaleUnk1                 = '';
SET @GnollFemaleUnk2                 = '';
SET @GnollFemaleUnk3                 = '';
SET @GnollFemaleUnk4                 = '';

SET @GnollMaleenUS                   = '';
SET @GnollMalekoKR                   = '';
SET @GnollMalefrFR                   = '';
SET @GnollMaledeDE                   = '';
SET @GnollMalezhCN                   = '';
SET @GnollMalezhTW                   = '';
SET @GnollMaleesES                   = '';
SET @GnollMaleesMX                   = '';
SET @GnollMaleruRU                   = '';
SET @GnollMalejaJP                   = '';
SET @GnollMaleptPT                   = '';
SET @GnollMaleitIT                   = '';
SET @GnollMaleUnk1                   = '';
SET @GnollMaleUnk2                   = '';
SET @GnollMaleUnk3                   = '';
SET @GnollMaleUnk4                   = '';

SET @GnollRacialNameenUS             = 'Racial - Gnoll';
SET @GnollRacialNamekoKR             = '';
SET @GnollRacialNamefrFR             = '';
SET @GnollRacialNamedeDE             = '';
SET @GnollRacialNamezhCN             = '';
SET @GnollRacialNamezhTW             = '';
SET @GnollRacialNameesES             = '';
SET @GnollRacialNameesMX             = '';
SET @GnollRacialNameruRU             = '';
SET @GnollRacialNamejaJP             = '';
SET @GnollRacialNameptPT             = '';
SET @GnollRacialNameitIT             = '';
SET @GnollRacialNameUnk1             = '';
SET @GnollRacialNameUnk2             = '';
SET @GnollRacialNameUnk3             = '';
SET @GnollRacialNameUnk4             = '';

SET @GnollPlayerenUS                 = '"PLAYER", Gnoll';
SET @GnollPlayerkoKR                 = '';
SET @GnollPlayerfrFR                 = '';
SET @GnollPlayerdeDE                 = '';
SET @GnollPlayerzhCN                 = '';
SET @GnollPlayerzhTW                 = '';
SET @GnollPlayeresES                 = '';
SET @GnollPlayeresMX                 = '';
SET @GnollPlayerruRU                 = '';
SET @GnollPlayerjaJP                 = '';
SET @GnollPlayerptPT                 = '';
SET @GnollPlayeritIT                 = '';
SET @GnollPlayerUnk1                 = '';
SET @GnollPlayerUnk2                 = '';
SET @GnollPlayerUnk3                 = '';
SET @GnollPlayerUnk4                 = '';

-- Placeholder name and description
SET @GnollFactionNameenUS            = 'Riverpaw Mercenaries';
SET @GnollFactionNamekoKR            = '';
SET @GnollFactionNamefrFR            = '';
SET @GnollFactionNamedeDE            = '';
SET @GnollFactionNamezhCN            = '';
SET @GnollFactionNamezhTW            = '';
SET @GnollFactionNameesES            = '';
SET @GnollFactionNameesMX            = '';
SET @GnollFactionNameruRU            = '';
SET @GnollFactionNamejaJP            = '';
SET @GnollFactionNameptPT            = '';
SET @GnollFactionNameitIT            = '';
SET @GnollFactionNameUnk1            = '';
SET @GnollFactionNameUnk2            = '';
SET @GnollFactionNameUnk3            = '';
SET @GnollFactionNameUnk4            = '';

SET @GnollFactionDescriptionenUS     = 'Gnolls who sell their spears to Stormwind instead of raiding its farms.';
SET @GnollFactionDescriptionkoKR     = '';
SET @GnollFactionDescriptionfrFR     = '';
SET @GnollFactionDescriptiondeDE     = '';
SET @GnollFactionDescriptionzhCN     = '';
SET @GnollFactionDescriptionzhTW     = '';
SET @GnollFactionDescriptionesES     = '';
SET @GnollFactionDescriptionesMX     = '';
SET @GnollFactionDescriptionruRU     = '';
SET @GnollFactionDescriptionjaJP     = '';
SET @GnollFactionDescriptionptPT     = '';
SET @GnollFactionDescriptionitIT     = '';
SET @GnollFactionDescriptionUnk1     = '';
SET @GnollFactionDescriptionUnk2     = '';
SET @GnollFactionDescriptionUnk3     = '';
SET @GnollFactionDescriptionUnk4     = '';

SET @GnollAchievementenUS            = 'Realm First! Level 80 Gnoll';
SET @GnollAchievementkoKR            = '';
SET @GnollAchievementfrFR            = '';
SET @GnollAchievementdeDE            = '';
SET @GnollAchievementzhCN            = '';
SET @GnollAchievementzhTW            = '';
SET @GnollAchievementesES            = '';
SET @GnollAchievementesMX            = '';
SET @GnollAchievementruRU            = '';
SET @GnollAchievementjaJP            = '';
SET @GnollAchievementptPT            = '';
SET @GnollAchievementitIT            = '';
SET @GnollAchievementUnk1            = '';
SET @GnollAchievementUnk2            = '';
SET @GnollAchievementUnk3            = '';
SET @GnollAchievementUnk4            = '';

SET @GnollAchievementDescriptionenUS = 'First Gnoll on the realm to achieve level 80.';
SET @GnollAchievementDescriptionkoKR = '';
SET @GnollAchievementDescriptionfrFR = '';
SET @GnollAchievementDescriptiondeDE = '';
SET @GnollAchievementDescriptionzhCN = '';
SET @GnollAchievementDescriptionzhTW = '';
SET @GnollAchievementDescriptionesES = '';
SET @GnollAchievementDescriptionesMX = '';
SET @GnollAchievementDescriptionruRU = '';
SET @GnollAchievementDescriptionjaJP = '';
SET @GnollAchievementDescriptionptPT = '';
SET @GnollAchievementDescriptionitIT = '';
SET @GnollAchievementDescriptionUnk1 = '';
SET @GnollAchievementDescriptionUnk2 = '';
SET @GnollAchievementDescriptionUnk3 = '';
SET @GnollAchievementDescriptionUnk4 = '';
