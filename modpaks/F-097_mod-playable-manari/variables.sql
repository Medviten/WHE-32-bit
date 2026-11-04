-- Race ID
SET @Manari                           := @NextRace := @NextRace +1;
SET @ManariMask                       = 1 << (@Manari - 1);
SET @ManariHelmetMask                 = 1 << @Manari;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @ManariMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @ManariMask;
SET @BowHunters                           = @BowHunters        | @ManariMask;
SET @ManariLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @ManariAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @ManariKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @ManariHome = @BloodElf; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @ManariKin = @Draenei; -- voice, emotes and names are copied from this race
SET @ManariFlags = @BloodElfFlags;
SET @ManariExplorationSound = @BloodElfExplorationSound;
SET @ManariCinematicSequence = @BloodElfCinematicSequence;
SET @ManariBlood = 1;
SET @ManariFaction = 1309; -- vacant slot
SET @ManariPlayer = 1310; -- vacant slot

-- Strings
SET @ManariClientPrefix               = 'Dr'; -- helmet models of this prefix
SET @ManariClientString               = 'Manari';
SET @ManariFacialHairCustomization1   = 'NORMAL';
SET @ManariFacialHairCustomization2   = 'HORNS';
SET @ManariHairCustomization          = 'NORMAL';

-- Localization Strings
SET @ManarienUS                       = 'Man\'ari';
SET @ManarikoKR                       = '';
SET @ManarifrFR                       = '';
SET @ManarideDE                       = '';
SET @ManarizhCN                       = '';
SET @ManarizhTW                       = '';
SET @ManariesES                       = '';
SET @ManariesMX                       = '';
SET @ManariruRU                       = '';
SET @ManarijaJP                       = '';
SET @ManariptPT                       = '';
SET @ManariitIT                       = '';
SET @ManariUnk1                       = '';
SET @ManariUnk2                       = '';
SET @ManariUnk3                       = '';
SET @ManariUnk4                       = '';

SET @ManariFemaleenUS                 = '';
SET @ManariFemalekoKR                 = '';
SET @ManariFemalefrFR                 = '';
SET @ManariFemaledeDE                 = '';
SET @ManariFemalezhCN                 = '';
SET @ManariFemalezhTW                 = '';
SET @ManariFemaleesES                 = '';
SET @ManariFemaleesMX                 = '';
SET @ManariFemaleruRU                 = '';
SET @ManariFemalejaJP                 = '';
SET @ManariFemaleptPT                 = '';
SET @ManariFemaleitIT                 = '';
SET @ManariFemaleUnk1                 = '';
SET @ManariFemaleUnk2                 = '';
SET @ManariFemaleUnk3                 = '';
SET @ManariFemaleUnk4                 = '';

SET @ManariMaleenUS                   = '';
SET @ManariMalekoKR                   = '';
SET @ManariMalefrFR                   = '';
SET @ManariMaledeDE                   = '';
SET @ManariMalezhCN                   = '';
SET @ManariMalezhTW                   = '';
SET @ManariMaleesES                   = '';
SET @ManariMaleesMX                   = '';
SET @ManariMaleruRU                   = '';
SET @ManariMalejaJP                   = '';
SET @ManariMaleptPT                   = '';
SET @ManariMaleitIT                   = '';
SET @ManariMaleUnk1                   = '';
SET @ManariMaleUnk2                   = '';
SET @ManariMaleUnk3                   = '';
SET @ManariMaleUnk4                   = '';

SET @ManariRacialNameenUS             = 'Racial - Man\'ari';
SET @ManariRacialNamekoKR             = '';
SET @ManariRacialNamefrFR             = '';
SET @ManariRacialNamedeDE             = '';
SET @ManariRacialNamezhCN             = '';
SET @ManariRacialNamezhTW             = '';
SET @ManariRacialNameesES             = '';
SET @ManariRacialNameesMX             = '';
SET @ManariRacialNameruRU             = '';
SET @ManariRacialNamejaJP             = '';
SET @ManariRacialNameptPT             = '';
SET @ManariRacialNameitIT             = '';
SET @ManariRacialNameUnk1             = '';
SET @ManariRacialNameUnk2             = '';
SET @ManariRacialNameUnk3             = '';
SET @ManariRacialNameUnk4             = '';

SET @ManariPlayerenUS                 = '"PLAYER", Man\'ari';
SET @ManariPlayerkoKR                 = '';
SET @ManariPlayerfrFR                 = '';
SET @ManariPlayerdeDE                 = '';
SET @ManariPlayerzhCN                 = '';
SET @ManariPlayerzhTW                 = '';
SET @ManariPlayeresES                 = '';
SET @ManariPlayeresMX                 = '';
SET @ManariPlayerruRU                 = '';
SET @ManariPlayerjaJP                 = '';
SET @ManariPlayerptPT                 = '';
SET @ManariPlayeritIT                 = '';
SET @ManariPlayerUnk1                 = '';
SET @ManariPlayerUnk2                 = '';
SET @ManariPlayerUnk3                 = '';
SET @ManariPlayerUnk4                 = '';

-- Placeholder name and description
SET @ManariFactionNameenUS            = 'Fel Covenant';
SET @ManariFactionNamekoKR            = '';
SET @ManariFactionNamefrFR            = '';
SET @ManariFactionNamedeDE            = '';
SET @ManariFactionNamezhCN            = '';
SET @ManariFactionNamezhTW            = '';
SET @ManariFactionNameesES            = '';
SET @ManariFactionNameesMX            = '';
SET @ManariFactionNameruRU            = '';
SET @ManariFactionNamejaJP            = '';
SET @ManariFactionNameptPT            = '';
SET @ManariFactionNameitIT            = '';
SET @ManariFactionNameUnk1            = '';
SET @ManariFactionNameUnk2            = '';
SET @ManariFactionNameUnk3            = '';
SET @ManariFactionNameUnk4            = '';

SET @ManariFactionDescriptionenUS     = 'Demonic eredar who deserted the Burning Legion and found common cause with the blood elves.';
SET @ManariFactionDescriptionkoKR     = '';
SET @ManariFactionDescriptionfrFR     = '';
SET @ManariFactionDescriptiondeDE     = '';
SET @ManariFactionDescriptionzhCN     = '';
SET @ManariFactionDescriptionzhTW     = '';
SET @ManariFactionDescriptionesES     = '';
SET @ManariFactionDescriptionesMX     = '';
SET @ManariFactionDescriptionruRU     = '';
SET @ManariFactionDescriptionjaJP     = '';
SET @ManariFactionDescriptionptPT     = '';
SET @ManariFactionDescriptionitIT     = '';
SET @ManariFactionDescriptionUnk1     = '';
SET @ManariFactionDescriptionUnk2     = '';
SET @ManariFactionDescriptionUnk3     = '';
SET @ManariFactionDescriptionUnk4     = '';

SET @ManariAchievementenUS            = 'Realm First! Level 80 Man\'ari';
SET @ManariAchievementkoKR            = '';
SET @ManariAchievementfrFR            = '';
SET @ManariAchievementdeDE            = '';
SET @ManariAchievementzhCN            = '';
SET @ManariAchievementzhTW            = '';
SET @ManariAchievementesES            = '';
SET @ManariAchievementesMX            = '';
SET @ManariAchievementruRU            = '';
SET @ManariAchievementjaJP            = '';
SET @ManariAchievementptPT            = '';
SET @ManariAchievementitIT            = '';
SET @ManariAchievementUnk1            = '';
SET @ManariAchievementUnk2            = '';
SET @ManariAchievementUnk3            = '';
SET @ManariAchievementUnk4            = '';

SET @ManariAchievementDescriptionenUS = 'First Man\'ari on the realm to achieve level 80.';
SET @ManariAchievementDescriptionkoKR = '';
SET @ManariAchievementDescriptionfrFR = '';
SET @ManariAchievementDescriptiondeDE = '';
SET @ManariAchievementDescriptionzhCN = '';
SET @ManariAchievementDescriptionzhTW = '';
SET @ManariAchievementDescriptionesES = '';
SET @ManariAchievementDescriptionesMX = '';
SET @ManariAchievementDescriptionruRU = '';
SET @ManariAchievementDescriptionjaJP = '';
SET @ManariAchievementDescriptionptPT = '';
SET @ManariAchievementDescriptionitIT = '';
SET @ManariAchievementDescriptionUnk1 = '';
SET @ManariAchievementDescriptionUnk2 = '';
SET @ManariAchievementDescriptionUnk3 = '';
SET @ManariAchievementDescriptionUnk4 = '';
