/* mod-individual-progression gives the stock races their pre-3.3 starting weapon skills, with a race mask per row,
   so the custom races start without them. Each custom race gets those of its Home race, whose start outfit it has. */

/* F-002 (ARAC) takes the Rogue out of the dagger rows and the Paladin out of the 2H mace rows. Individual
   Progression's rows are for one class each, so that leaves rows for every class: drop them (F-002 adds its own) */
DELETE FROM `playercreateinfo_skills` WHERE `classMask` = 0 AND FIND_IN_SET(`skill`, @IPWeaponSkills);

/* Races of modpaks that are not applied have no mask: COALESCE leaves their rows alone */
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@HighElfMask, 0) WHERE `raceMask` & @HumanMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@MagharOrcMask, 0) WHERE `raceMask` & @OrcMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@OgreMask, 0) WHERE `raceMask` & @OrcMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@DarkIronDwarfMask, 0) WHERE `raceMask` & @DwarfMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@ZandalariTrollMask, 0) WHERE `raceMask` & @TrollMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@VulperaMask, 0) WHERE `raceMask` & @TaurenMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@AlliancePandarenMask, 0) WHERE `raceMask` & @HumanMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@HordePandarenMask, 0) WHERE `raceMask` & @TaurenMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@BrokenMask, 0) WHERE `raceMask` & @DraeneiMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@GoblinMask, 0) WHERE `raceMask` & @OrcMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@WorgenMask, 0) WHERE `raceMask` & @NightElfMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@KulTiranMask, 0) WHERE `raceMask` & @HumanMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@GilneanMask, 0) WHERE `raceMask` & @NightElfMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@HighmountainTaurenMask, 0) WHERE `raceMask` & @TaurenMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@NagaMask, 0) WHERE `raceMask` & @BloodElfMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@TaunkaMask, 0) WHERE `raceMask` & @TaurenMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@LightforgedDraeneiMask, 0) WHERE `raceMask` & @DraeneiMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@NightborneMask, 0) WHERE `raceMask` & @BloodElfMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@VoidElfMask, 0) WHERE `raceMask` & @HumanMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@VrykulMask, 0) WHERE `raceMask` & @HumanMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@DarkfallenMask, 0) WHERE `raceMask` & @UndeadMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@MurlocMask, 0) WHERE `raceMask` & @TrollMask AND FIND_IN_SET(`skill`, @IPWeaponSkills);

/* Races whose modpak names its Home race */
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@AllianceEarthenMask, 0) WHERE `raceMask` & (1 << (@AllianceEarthenHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@HordeEarthenMask, 0) WHERE `raceMask` & (1 << (@HordeEarthenHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@MechagnomeMask, 0) WHERE `raceMask` & (1 << (@MechagnomeHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@ThinHumanMask, 0) WHERE `raceMask` & (1 << (@ThinHumanHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@TuskarrMask, 0) WHERE `raceMask` & (1 << (@TuskarrHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@FurbolgMask, 0) WHERE `raceMask` & (1 << (@FurbolgHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@SlimeGiantMask, 0) WHERE `raceMask` & (1 << (@SlimeGiantHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@FelOrcMask, 0) WHERE `raceMask` & (1 << (@FelOrcHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@SkeletonMask, 0) WHERE `raceMask` & (1 << (@SkeletonHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@ForestTrollMask, 0) WHERE `raceMask` & (1 << (@ForestTrollHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@NorthrendSkeletonMask, 0) WHERE `raceMask` & (1 << (@NorthrendSkeletonHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@IceTrollMask, 0) WHERE `raceMask` & (1 << (@IceTrollHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@QirajiMask, 0) WHERE `raceMask` & (1 << (@QirajiHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@EredarMask, 0) WHERE `raceMask` & (1 << (@EredarHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@ArakkoaMask, 0) WHERE `raceMask` & (1 << (@ArakkoaHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@FelElfMask, 0) WHERE `raceMask` & (1 << (@FelElfHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@QuillboarMask, 0) WHERE `raceMask` & (1 << (@QuillboarHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@CentaurMask, 0) WHERE `raceMask` & (1 << (@CentaurHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@DemonMask, 0) WHERE `raceMask` & (1 << (@DemonHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@SatyrMask, 0) WHERE `raceMask` & (1 << (@SatyrHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@GnollMask, 0) WHERE `raceMask` & (1 << (@GnollHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@BeholderMask, 0) WHERE `raceMask` & (1 << (@BeholderHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@ShivanMask, 0) WHERE `raceMask` & (1 << (@ShivanHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@HozenMask, 0) WHERE `raceMask` & (1 << (@HozenHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@SylvariMask, 0) WHERE `raceMask` & (1 << (@SylvariHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@MantidMask, 0) WHERE `raceMask` & (1 << (@MantidHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@EtherealMask, 0) WHERE `raceMask` & (1 << (@EtherealHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@KyrianMask, 0) WHERE `raceMask` & (1 << (@KyrianHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@VenthyrMask, 0) WHERE `raceMask` & (1 << (@VenthyrHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@BansheeMask, 0) WHERE `raceMask` & (1 << (@BansheeHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@FacelessOneMask, 0) WHERE `raceMask` & (1 << (@FacelessOneHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@AllianceDracthyrMask, 0) WHERE `raceMask` & (1 << (@AllianceDracthyrHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
UPDATE `playercreateinfo_skills` SET `raceMask` = `raceMask` | COALESCE(@HordeDracthyrMask, 0) WHERE `raceMask` & (1 << (@HordeDracthyrHome - 1)) AND FIND_IN_SET(`skill`, @IPWeaponSkills);
