/* Zaz Gearhandle, a neutral merchant in Booty Bay who sells the racial mounts of the race modpaks in the manifest. */
SET @RacialMountMerchant = 62110;

DELETE FROM `creature_template` WHERE `entry` = @RacialMountMerchant;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `CreatureImmunitiesId`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@RacialMountMerchant, 0, 0, 0, 0, 0, 'Zaz Gearhandle', 'Racial Mount Dealer', NULL, 0, 45, 45, 0, 120, 128, 1, 1.14286, 1, 1, 20, 1, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 2, '', 0);

DELETE FROM `creature_template_model` WHERE `CreatureID` = @RacialMountMerchant;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(@RacialMountMerchant, 0, 7110, 1, 1, 0);

/* On the boardwalk between Crazk Sparks and Sly Garrett */
DELETE FROM `creature` WHERE `guid` = 6211000;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(6211000, @RacialMountMerchant, 0, 0, 0, 1, 1, 0, -14433.75, 409.6, 15.24, 1.57, 300, 0, 0, 102, 0, 0, 0, 0, 0, '', 0, 0, NULL);

/* Only the modpaks in the manifest set these variables, and an unset one matches nothing. A new race with mounts needs
   its items added here */
DELETE FROM `npc_vendor` WHERE `entry` = @RacialMountMerchant;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
SELECT @RacialMountMerchant, 0, `entry`, 0, 0, 0, 0 FROM `item_template` WHERE `entry` IN (
    @AlliancePandarenMount1Item, @AlliancePandarenMount2Item, @AlliancePandarenMount3Item,
    @AlliancePandarenMount4Item, @DarkIronDwarfMount1Item, @GoblinMount1Item, @GoblinMount2Item,
    @HighmountainTaurenMount1Item, @HordePandarenMount1Item, @HordePandarenMount2Item,
    @HordePandarenMount3Item, @HordePandarenMount4Item, @KulTiranMount1Item, @LightforgedDraeneiMount1Item,
    @LightforgedDraeneiMount2Item, @LightforgedDraeneiMount3Item, @LightforgedDraeneiMount4Item,
    @MagharOrcMount1Item, @NightborneMount1Item, @VoidElfMount1Item, @VulperaMount1Item, @VulperaMount2Item,
    @WorgenMount1Item, @WorgenMount2Item, @ZandalariTrollMount1Item
);
