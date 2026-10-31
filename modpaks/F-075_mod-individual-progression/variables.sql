-- Weapon skills mod-individual-progression gives per race (data/sql/world/base/player_starting_weapon_skills.sql)
SET @2HSwordSkill                     = 55;
SET @ThrownSkill                      = 176;
SET @IPWeaponSkills                   = CONCAT_WS(',', @2HSwordSkill, @SwordSkill, @DaggerSkill, @StaveSkill, @ThrownSkill,
                                                  @MaceSkill, @2HMaceSkill, @AxeSkill, @2HAxeSkill);
