-- Weapon skills mod-individual-progression gives per race (data/sql/world/base/player_starting_weapon_skills.sql)
SET @2HSwordSkill                     = 55;
SET @ThrownSkill                      = 176;
SET @IPWeaponSkills                   = CONCAT_WS(',', @2HSwordSkill, @SwordSkill, @DaggerSkill, @StaveSkill, @ThrownSkill,
                                                  @MaceSkill, @2HMaceSkill, @AxeSkill, @2HAxeSkill);

-- Quest of sql/db-world/base/[F-075]_worgen_imp_quest.sql. Stock quests end at 26034, Individual
-- Progression's are at 108743 and up
SET @TheFirstPactQuest                  = 62103;
