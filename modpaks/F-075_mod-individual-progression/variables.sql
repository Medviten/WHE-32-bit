-- Weapon skills mod-individual-progression gives per race (data/sql/world/base/player_starting_weapon_skills.sql)
SET @2HSwordSkill                     = 55;
SET @ThrownSkill                      = 176;
SET @IPWeaponSkills                   = CONCAT_WS(',', @2HSwordSkill, @SwordSkill, @DaggerSkill, @StaveSkill, @ThrownSkill,
                                                  @MaceSkill, @2HMaceSkill, @AxeSkill, @2HAxeSkill);

-- Quest of sql/db-world/base/[F-075]_worgen_imp_quest.sql. Stock quests end at 26034, Individual
-- Progression's are at 108743 and up
SET @TheFirstPactQuest                  = 62103;

-- Phase masks of Individual Progression's "Phase Shift: IPP" spells (89509-89519, dbc/[F-075]_spells.sql), the same
-- values as its SQL (zone_undercity.sql, adjustment_auras.sql, ...). Without them the spells are built with phase
-- mask 0: the aura lands but phases nobody, so e.g. Undercity shows neither Varimathras nor Bragor Bloodfist.
SET @IPPPHASE                         = 65536;
SET @IPPPHASE_II                      = 131072;
SET @IPPPHASE_III                     = 262144;
SET @IPPPHASE_IV                      = 524288;
SET @IPPPHASE_V                       = 1048576;
SET @IPPPHASE_VI                      = 2097152;
