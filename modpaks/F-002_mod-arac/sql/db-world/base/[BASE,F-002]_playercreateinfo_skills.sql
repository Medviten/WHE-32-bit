UPDATE `playercreateinfo_skills` SET `raceMask`  = @BowHunters                  WHERE `skill` = @BowSkill      AND `classMask`                  != 0;
UPDATE `playercreateinfo_skills` SET `raceMask`  = @GunHunters                  WHERE `skill` = @GunSkill      AND `classMask`                  != 0;
UPDATE `playercreateinfo_skills` SET `raceMask`  = @CrossbowHunters             WHERE `skill` = @CrossbowSkill AND `classMask`                  != 0;
UPDATE `playercreateinfo_skills` SET `classMask` = `classMask` & ~@RogueMask    WHERE `skill` = @DaggerSkill   AND (`classMask` & @RogueMask)   != 0 AND `classMask` != @RogueMask; -- a rogue-only row (F-026's) would become 0 = every class
UPDATE `playercreateinfo_skills` SET `classMask` = `classMask` & ~@PaladinMask  WHERE `skill` = @2HMaceSkill   AND (`classMask` & @PaladinMask) != 0 AND `classMask` != @PaladinMask;

INSERT IGNORE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(0,             @RogueMask,   @DaggerSkill, 0, 'Daggers (Rogues)'),
(@AllianceMask, @PaladinMask, @2HMaceSkill, 0, '2H-Maces (Alliance Paladins)');

-- Classic ARAC approach equalizes skills across races instead:
-- UPDATE `playercreateinfo_skills` SET `raceMask` = 0 WHERE `skill` IN (@BowSkill, @GunSkill, @CrossbowSkill, @2HMaceSkill, @DaggerSkill) AND `classMask` != 0;
