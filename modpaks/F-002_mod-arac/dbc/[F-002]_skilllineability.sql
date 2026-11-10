-- [F-002] mod-arac: skilllineability: 8 inserts, 57 updates, 0 deletes

-- New entries (Blood Elf and Draenei ARAC racials)
DELETE FROM `skilllineability` WHERE `id` IN (
    @ArcaneTorrentFeralSkillLineAbility,    @ArcaneTorrentDruidManaSkillLineAbility, @ArcaneTorrentRageSkillLineAbility,
    @GiftoftheNaaruDruidSkillLineAbility,   @GiftoftheNaaruRogueSkillLineAbility,    @GiftoftheNaaruWarlockSkillLineAbility,
    @ShadowResistanceDruidSkillLineAbility, @ShadowResistanceRogueSkillLineAbility,  @ShadowResistanceWarlockSkillLineAbility
);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
--    (@ArcaneTorrentFeralSkillLineAbility,      @BloodElfRacials, @BloodElfRacial1, @BloodElfMask, @DruidMask,   0, 0, 1, 0, 2, 0, 0, 0, 0), -- Arcane Torrent (Druid Feral, now a triggered spell only)
    (@ArcaneTorrentDruidManaSkillLineAbility,  @BloodElfRacials, @BloodElfRacial2, @BloodElfMask, @DruidMask,   0, 0, 1, 0, 2, 0, 0, 0, 0), -- Arcane Torrent (Druid Mana)
    (@ArcaneTorrentRageSkillLineAbility,       @BloodElfRacials, @BloodElfRacial3, @BloodElfMask, @WarriorMask, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Arcane Torrent (Rage)
    (@GiftoftheNaaruDruidSkillLineAbility,     @DraeneiRacials,  @DraeneiRacial1,  @DraeneiMask,  @DruidMask,   0, 0, 1, 0, 2, 0, 0, 0, 0), -- Gift of the Naaru (Druid)
    (@GiftoftheNaaruRogueSkillLineAbility,     @DraeneiRacials,  @DraeneiRacial2,  @DraeneiMask,  @RogueMask,   0, 0, 1, 0, 2, 0, 0, 0, 0), -- Gift of the Naaru (Rogue)
    (@GiftoftheNaaruWarlockSkillLineAbility,   @DraeneiRacials,  @DraeneiRacial3,  @DraeneiMask,  @WarlockMask, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Gift of the Naaru (Warlock)
    (@ShadowResistanceDruidSkillLineAbility,   @DraeneiRacials,  @DraeneiRacial4,  @DraeneiMask,  @DruidMask,   0, 0, 1, 0, 2, 0, 0, 0, 0), -- Shadow Resistance (Druid)
    (@ShadowResistanceRogueSkillLineAbility,   @DraeneiRacials,  @DraeneiRacial5,  @DraeneiMask,  @RogueMask,   0, 0, 1, 0, 2, 0, 0, 0, 0), -- Shadow Resistance (Rogue)
    (@ShadowResistanceWarlockSkillLineAbility, @DraeneiRacials,  @DraeneiRacial6,  @DraeneiMask,  @WarlockMask, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Shadow Resistance (Warlock)

-- Changed values
UPDATE `skilllineability` SET `required_races`   = `required_races`   | @AllianceMask                  WHERE `id` IN (
    @CommonSkillLineAbilityAlliance, -- Spell: 668 (Language: Common)
    @TeleportDarnassusSkillLineAbility, -- Spell: 3565 (Teleport: Darnassus)
    @TeleportIronforgeSkillLineAbility, -- Spell: 3562 (Teleport: Ironforge)
    @TeleportStormwindSkillLineAbility, -- Spell: 3561 (Teleport: Stormwind)
    @PortalDarnassusSkillLineAbility, -- Spell: 11419 (Portal: Darnassus)
    @PortalIronforgeSkillLineAbility, -- Spell: 11416 (Portal: Ironforge)
    @PortalStormwindSkillLineAbility, -- Spell: 10059 (Portal: Stormwind)
    @WarhorseSkillLineAbility1, -- Spell: 13819 (Warhorse)
    @WarhorseSkillLineAbility2, -- Spell: 13819 (Warhorse)
    @ChargerSkillLineAbility1, -- Spell: 23214 (Charger)
    @SealofVengeanceSkillLineAbility, -- Spell: 31801 (Seal of Vengeance)
    @JudgementofVengeanceSkillLineAbility, -- Spell: 31804 (Judgement of Vengeance)
    @HeroismSkillLineAbility, -- Spell: 32182 (Heroism)
    @TeleportExodarSkillLineAbility, -- Spell: 32271 (Teleport: Exodar)
    @PortalExodarSkillLineAbility, -- Spell: 32266 (Portal: Exodar)
    @TeleportShattrathSkillLineAbilityAlliance, -- Spell: 33690 (Teleport: Shattrath)
    @PortalShattrathSkillLineAbilityAlliance, -- Spell: 33691 (Portal: Shattrath)
    @TeleportTheramoreSkillLineAbility, -- Spell: 49359 (Teleport: Theramore)
    @PortalTheramoreSkillLineAbility, -- Spell: 49360 (Portal: Theramore)
    @JudgementoftheMartyrSkillLineAbility, -- Spell: 53726 (Judgement of the Martyr)
    @ChargerSkillLineAbility2, -- Spell: 23214 (Charger)
    @WarhorseSkillLineAbility2, -- Spell: 13819 (Warhorse)
    @MekgineersChopperSkillLineAbility1, -- Spell: 60424 (Mekgineer's Chopper)
    @MekgineersChopperSkillLineAbility2 -- Spell: 60867 (Mekgineer's Chopper)
);

UPDATE `skilllineability` SET `required_races`   = `required_races`   | @HordeMask                     WHERE `id` IN (
    @OrcishSkillLineAbilityHorde, -- Spell: 669 (Language: Orcish)
    @BloodlustSkillLineAbility, -- Spell: 2825 (Bloodlust)
    @JudgementofBloodSkillLineAbility, -- Spell: 31898 (Judgement of Blood)
    @SummonChargerSkillLineAbility1, -- Spell: 34767 (Summon Charger)
    @SummonWarhorseSkillLineAbility1, -- Spell: 34769 (Summon Warhorse)
    @SummonWarhorseSkillLineAbility2, -- Spell: 34769 (Summon Warhorse)
    @JudgementofCorruptionSkillLineAbility, -- Spell: 53733 (Judgement of Corruption)
    @SealofCorruptionSkillLineAbility, -- Spell: 53736 (Seal of Corruption)
    @BloodCorruptionSkillLineAbility, -- Spell: 53742 (Blood Corruption)
    @SummonChargerSkillLineAbility2, -- Spell: 34767 (Summon Charger)
    @SummonWarhorseSkillLineAbility2, -- Spell: 34769 (Summon Warhorse)
    @TeleportOrgrimmarSkillLineAbility,
    @TeleportUndercitySkillLineAbility,
    @TeleportThunderBluffSkillLineAbility,
    @TeleportSilvermoonSkillLineAbility,
    @TeleportShattrathSkillLineAbilityHorde,
    @TeleportStonardSkillLineAbility,
    @PortalOrgrimmarSkillLineAbility,
    @PortalUndercitySkillLineAbility,
    @PortalThunderBluffSkillLineAbility,
    @PortalSilvermoonSkillLineAbility,
    @PortalShattrathSkillLineAbilityHorde,
    @PortalStonardSkillLineAbility
);

UPDATE `skilllineability` SET `required_races`   = `required_races`   | @PlayableRaceMask              WHERE `id` IN (
--    21723, -- Spell: 75460 (N/A?)
    @HolyVengeanceSkillLineAbility, -- Spell: 31803 (Holy Vengeance – proc of Seal of Vengeance)
    @ActivatePrimarySpec, -- Spell: 63645 (Activate Primary Spec)
    @ActivateSecondarySpec, -- Spell: 63644 (Activate Secondary Spec)
    @FlameShockPassiveSkillLineAbility -- Spell: 75461 (Flame Shock Passive)
);

UPDATE `skilllineability` SET `required_classes` =  0                                                  WHERE `id` = @ElusivenessSkillLineAbility; -- Spell: 21009 (Elusiveness)
UPDATE `skilllineability` SET `required_classes` = `required_classes` | (@ManaClassMask & ~@DruidMask) WHERE `id` = @ArcaneTorrentManaSkillLineAbility; -- Spell: 28730 (Arcane Torrent [mana])
UPDATE `skilllineability` SET `required_classes` = `required_classes` | @RogueMask                     WHERE `id` = @HeroicPresenceMailClassesSkillLineAbility; -- Spell: 6562 (Heroic Presence [Warrior, Paladin, Hunter, Death Knight])
UPDATE `skilllineability` SET `required_classes` = `required_classes` | @WarlockMask | @DruidMask      WHERE `id` = @HeroicPresenceCasterClassesSkillLineAbility; -- Spell: 28878 (Heroic Presence [Priest, Shaman, Mage])
UPDATE `skilllineability` SET `required_classes` = `required_classes` | @PriestMask | @MageMask                WHERE `id` = @BloodFuryWarlockSkillLineAbility; -- Spell: 33702 (Blood Fury [Warlock])
UPDATE `skilllineability` SET `required_classes` = `required_classes` | @PaladinMask | @DruidMask              WHERE `id` = @BloodFuryShamanSkillLineAbility; -- Spell: 33697 (Blood Fury [Shaman])
