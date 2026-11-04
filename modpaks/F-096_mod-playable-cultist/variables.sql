-- Race ID
SET @Cultist                           := @NextRace := @NextRace +1;
SET @CultistMask                       = 1 << (@Cultist - 1);
SET @CultistHelmetMask                 = 1 << @Cultist;

-- Important variable updates (Alliance vs. Horde)
SET @HordeMask                            = @HordeMask         | @CultistMask;
SET @BarrensBros                          = @HordeMask    & ~@UndercityMask; -- important if Horde
SET @PlayableRaceMask                     = @PlayableRaceMask  | @CultistMask;
SET @BowHunters                           = @BowHunters        | @CultistMask;
SET @CultistLanguage                   = 1; -- 7 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @CultistAlliance                   = 1; -- 0 for Alliance, 1 for Horde (ChrRaces.dbc)
SET @CultistKnowThyEnemy               = @KnowThyEnemyHorde;

-- Miscellaneous
SET @CultistHome = @Undead; -- classes, start outfits, start position, action bars, stats, totems and druid forms are copied from this race
SET @CultistKin = @Human; -- voice, emotes and names are copied from this race
SET @CultistFlags = @UndeadFlags;
SET @CultistExplorationSound = @UndeadExplorationSound;
SET @CultistCinematicSequence = @UndeadCinematicSequence;
SET @CultistBlood = 1;
SET @CultistFaction = 1307; -- vacant slot
SET @CultistPlayer = 1308; -- vacant slot

-- Strings
SET @CultistClientPrefix               = 'Hu'; -- helmet models of this prefix
SET @CultistClientString               = 'Cultist';
SET @CultistFacialHairCustomization1   = 'NORMAL';
SET @CultistFacialHairCustomization2   = 'PIERCINGS';
SET @CultistHairCustomization          = 'NORMAL';

-- Localization Strings
SET @CultistenUS                       = 'Cultist';
SET @CultistkoKR                       = '';
SET @CultistfrFR                       = '';
SET @CultistdeDE                       = '';
SET @CultistzhCN                       = '';
SET @CultistzhTW                       = '';
SET @CultistesES                       = '';
SET @CultistesMX                       = '';
SET @CultistruRU                       = '';
SET @CultistjaJP                       = '';
SET @CultistptPT                       = '';
SET @CultistitIT                       = '';
SET @CultistUnk1                       = '';
SET @CultistUnk2                       = '';
SET @CultistUnk3                       = '';
SET @CultistUnk4                       = '';

SET @CultistFemaleenUS                 = '';
SET @CultistFemalekoKR                 = '';
SET @CultistFemalefrFR                 = '';
SET @CultistFemaledeDE                 = '';
SET @CultistFemalezhCN                 = '';
SET @CultistFemalezhTW                 = '';
SET @CultistFemaleesES                 = '';
SET @CultistFemaleesMX                 = '';
SET @CultistFemaleruRU                 = '';
SET @CultistFemalejaJP                 = '';
SET @CultistFemaleptPT                 = '';
SET @CultistFemaleitIT                 = '';
SET @CultistFemaleUnk1                 = '';
SET @CultistFemaleUnk2                 = '';
SET @CultistFemaleUnk3                 = '';
SET @CultistFemaleUnk4                 = '';

SET @CultistMaleenUS                   = '';
SET @CultistMalekoKR                   = '';
SET @CultistMalefrFR                   = '';
SET @CultistMaledeDE                   = '';
SET @CultistMalezhCN                   = '';
SET @CultistMalezhTW                   = '';
SET @CultistMaleesES                   = '';
SET @CultistMaleesMX                   = '';
SET @CultistMaleruRU                   = '';
SET @CultistMalejaJP                   = '';
SET @CultistMaleptPT                   = '';
SET @CultistMaleitIT                   = '';
SET @CultistMaleUnk1                   = '';
SET @CultistMaleUnk2                   = '';
SET @CultistMaleUnk3                   = '';
SET @CultistMaleUnk4                   = '';

SET @CultistRacialNameenUS             = 'Racial - Cultist';
SET @CultistRacialNamekoKR             = '';
SET @CultistRacialNamefrFR             = '';
SET @CultistRacialNamedeDE             = '';
SET @CultistRacialNamezhCN             = '';
SET @CultistRacialNamezhTW             = '';
SET @CultistRacialNameesES             = '';
SET @CultistRacialNameesMX             = '';
SET @CultistRacialNameruRU             = '';
SET @CultistRacialNamejaJP             = '';
SET @CultistRacialNameptPT             = '';
SET @CultistRacialNameitIT             = '';
SET @CultistRacialNameUnk1             = '';
SET @CultistRacialNameUnk2             = '';
SET @CultistRacialNameUnk3             = '';
SET @CultistRacialNameUnk4             = '';

SET @CultistPlayerenUS                 = '"PLAYER", Cultist';
SET @CultistPlayerkoKR                 = '';
SET @CultistPlayerfrFR                 = '';
SET @CultistPlayerdeDE                 = '';
SET @CultistPlayerzhCN                 = '';
SET @CultistPlayerzhTW                 = '';
SET @CultistPlayeresES                 = '';
SET @CultistPlayeresMX                 = '';
SET @CultistPlayerruRU                 = '';
SET @CultistPlayerjaJP                 = '';
SET @CultistPlayerptPT                 = '';
SET @CultistPlayeritIT                 = '';
SET @CultistPlayerUnk1                 = '';
SET @CultistPlayerUnk2                 = '';
SET @CultistPlayerUnk3                 = '';
SET @CultistPlayerUnk4                 = '';

-- Placeholder name and description
SET @CultistFactionNameenUS            = 'Cult of the Forsaken';
SET @CultistFactionNamekoKR            = '';
SET @CultistFactionNamefrFR            = '';
SET @CultistFactionNamedeDE            = '';
SET @CultistFactionNamezhCN            = '';
SET @CultistFactionNamezhTW            = '';
SET @CultistFactionNameesES            = '';
SET @CultistFactionNameesMX            = '';
SET @CultistFactionNameruRU            = '';
SET @CultistFactionNamejaJP            = '';
SET @CultistFactionNameptPT            = '';
SET @CultistFactionNameitIT            = '';
SET @CultistFactionNameUnk1            = '';
SET @CultistFactionNameUnk2            = '';
SET @CultistFactionNameUnk3            = '';
SET @CultistFactionNameUnk4            = '';

SET @CultistFactionDescriptionenUS     = 'Living cultists who broke with the Lich King and now serve the Banshee Queen.';
SET @CultistFactionDescriptionkoKR     = '';
SET @CultistFactionDescriptionfrFR     = '';
SET @CultistFactionDescriptiondeDE     = '';
SET @CultistFactionDescriptionzhCN     = '';
SET @CultistFactionDescriptionzhTW     = '';
SET @CultistFactionDescriptionesES     = '';
SET @CultistFactionDescriptionesMX     = '';
SET @CultistFactionDescriptionruRU     = '';
SET @CultistFactionDescriptionjaJP     = '';
SET @CultistFactionDescriptionptPT     = '';
SET @CultistFactionDescriptionitIT     = '';
SET @CultistFactionDescriptionUnk1     = '';
SET @CultistFactionDescriptionUnk2     = '';
SET @CultistFactionDescriptionUnk3     = '';
SET @CultistFactionDescriptionUnk4     = '';

SET @CultistAchievementenUS            = 'Realm First! Level 80 Cultist';
SET @CultistAchievementkoKR            = '';
SET @CultistAchievementfrFR            = '';
SET @CultistAchievementdeDE            = '';
SET @CultistAchievementzhCN            = '';
SET @CultistAchievementzhTW            = '';
SET @CultistAchievementesES            = '';
SET @CultistAchievementesMX            = '';
SET @CultistAchievementruRU            = '';
SET @CultistAchievementjaJP            = '';
SET @CultistAchievementptPT            = '';
SET @CultistAchievementitIT            = '';
SET @CultistAchievementUnk1            = '';
SET @CultistAchievementUnk2            = '';
SET @CultistAchievementUnk3            = '';
SET @CultistAchievementUnk4            = '';

SET @CultistAchievementDescriptionenUS = 'First Cultist on the realm to achieve level 80.';
SET @CultistAchievementDescriptionkoKR = '';
SET @CultistAchievementDescriptionfrFR = '';
SET @CultistAchievementDescriptiondeDE = '';
SET @CultistAchievementDescriptionzhCN = '';
SET @CultistAchievementDescriptionzhTW = '';
SET @CultistAchievementDescriptionesES = '';
SET @CultistAchievementDescriptionesMX = '';
SET @CultistAchievementDescriptionruRU = '';
SET @CultistAchievementDescriptionjaJP = '';
SET @CultistAchievementDescriptionptPT = '';
SET @CultistAchievementDescriptionitIT = '';
SET @CultistAchievementDescriptionUnk1 = '';
SET @CultistAchievementDescriptionUnk2 = '';
SET @CultistAchievementDescriptionUnk3 = '';
SET @CultistAchievementDescriptionUnk4 = '';
