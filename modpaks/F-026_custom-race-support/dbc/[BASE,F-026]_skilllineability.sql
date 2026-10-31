-- skilllineability: 0 inserts, 42 updates, 0 deletes

-- Changed values
UPDATE `skilllineability` SET `required_races` = `required_races` | @PlayableRaceMask WHERE `required_races` & @BaseAllianceMask;
UPDATE `skilllineability` SET `required_races` = `required_races` | @PlayableRaceMask WHERE `required_races` & @BaseHordeMask;

-- Alliance
UPDATE `skilllineability` SET `required_races` = `required_races` | @AllianceMask WHERE `id` IN (
    @CommonSkillLineAbilityAlliance, -- Spell: 668 (Language: Common)
    @TeleportDarnassusSkillLineAbility, -- Spell: 3565 (Teleport: Darnassus) [Mage]
    @TeleportIronforgeSkillLineAbility, -- Spell: 3562 (Teleport: Ironforge) [Mage]
    @TeleportStormwindSkillLineAbility, -- Spell: 3561 (Teleport: Stormwind) [Mage]
    @PortalDarnassusSkillLineAbility, -- Spell: 11419 (Portal: Darnassus) [Mage]
    @PortalIronforgeSkillLineAbility, -- Spell: 11416 (Portal: Ironforge) [Mage]
    @PortalStormwindSkillLineAbility, -- Spell: 10059 (Portal: Stormwind) [Mage]
    @TeleportExodarSkillLineAbility, -- Spell: 32271 (Teleport: Exodar) [Mage]
    @PortalExodarSkillLineAbility, -- Spell: 32266 (Portal: Exodar) [Mage]
    @TeleportShattrathSkillLineAbilityAlliance, -- Spell: 33690 (Teleport: Shattrath) [Mage]
    @PortalShattrathSkillLineAbilityAlliance, -- Spell: 33691 (Portal: Shattrath) [Mage]
    @TeleportTheramoreSkillLineAbility, -- Spell: 49359 (Teleport: Theramore) [Mage]
    @PortalTheramoreSkillLineAbility, -- Spell: 49360 (Portal: Theramore) [Mage]
    @MekgineersChopperSkillLineAbility1, -- Spell: 60424 (Mekgineer's Chopper) [Engineer]
    @MekgineersChopperSkillLineAbility2, -- Spell: 60867 (Mekgineer's Chopper) [Engineer]
    @HolyVengeanceSkillLineAbility, -- Spell: 31803 (Holy Vengeance) [Paladin]
    @WarhorseSkillLineAbility1, -- Spell: 13819 (Warhorse) [Paladin]
    @WarhorseSkillLineAbility2, -- Spell: 13819 (Warhorse) [Paladin]
    @ChargerSkillLineAbility1, -- Spell: 23214 (Charger) [Paladin]
    @ChargerSkillLineAbility2, -- Spell: 23214 (Charger) [Paladin]
    @JudgementoftheMartyrSkillLineAbility, -- Spell: 53726 (Judgement of the Martyr) [Paladin]
    @JudgementofVengeanceSkillLineAbility, -- Spell: 31804 (Judgement of Vengeance) [Paladin]
    @SealofVengeanceSkillLineAbility, -- Spell: 31801 (Seal of Vengeance) [Paladin]
    @HeroismSkillLineAbility -- Spell: 32182 (Heroism) [Shaman]
);

-- Horde
UPDATE `skilllineability` SET `required_races` = `required_races` | @HordeMask WHERE `id` IN (
    @OrcishSkillLineAbilityHorde, -- Spell: 669 (Language: Orcish)
    @TeleportOrgrimmarSkillLineAbility, -- Spell: 3567 (Teleport: Orgrimmar) [Mage]
    @TeleportThunderBluffSkillLineAbility, -- Spell: 3566 (Teleport: Thunder Bluff) [Mage]
    @TeleportUndercitySkillLineAbility, -- Spell: 3563 (Teleport: Undercity) [Mage]
    @PortalOrgrimmarSkillLineAbility, -- Spell: 11417 (Portal: Orgrimmar) [Mage]
    @PortalThunderBluffSkillLineAbility, -- Spell: 11420 (Portal: Thunder Bluff) [Mage]
    @PortalUndercitySkillLineAbility, -- Spell: 11418 (Portal: Undercity) [Mage]
    @TeleportSilvermoonSkillLineAbility, -- Spell: 32272 (Teleport: Silvermoon) [Mage]
    @PortalSilvermoonSkillLineAbility, -- Spell: 32267 (Portal: Silvermoon) [Mage]
    @TeleportShattrathSkillLineAbilityHorde, -- Spell: 35715 (Teleport: Shattrath) [Mage]
    @PortalShattrathSkillLineAbilityHorde, -- Spell: 35717 (Portal: Shattrath) [Mage]
    @TeleportStonardSkillLineAbility, -- Spell: 49358 (Teleport: Stonard) [Mage]
    @PortalStonardSkillLineAbility, -- Spell: 49361 (Portal: Stonard) [Mage]
    @MechanoHogSkillLineAbility1, -- Spell: 55531 (Mechano-hog) [Engineer]
    @MechanoHogSkillLineAbility2, -- Spell: 60866 (Mechano-hog) [Engineer]
    @JudgementofBloodSkillLineAbility, -- Spell: 31898 (Judgement of Blood) [Paladin]
    @JudgementofCorruptionSkillLineAbility, -- Spell: 53733 (Judgement of Corruption) [Paladin]
    @SealofCorruptionSkillLineAbility, -- Spell: 53736 (Seal of Corruption) [Paladin]
    @BloodCorruptionSkillLineAbility, -- Spell: 53742 (Blood Corruption) [Paladin]
    @SummonChargerSkillLineAbility1, -- Spell: 34767 (Summon Charger) [Paladin]
    @SummonChargerSkillLineAbility2, -- Spell: 34767 (Summon Charger) [Paladin]
    @SummonWarhorseSkillLineAbility1, -- Spell: 34769 (Summon Warhorse) [Paladin]
    @SummonWarhorseSkillLineAbility2, -- Spell: 34769 (Summon Warhorse) [Paladin]
    @BloodlustSkillLineAbility -- Spell: 2825 (Bloodlust) [Shaman]
);

-- Everyone
UPDATE `skilllineability` SET `required_races` = `required_races` | @PlayableRaceMask WHERE `id` IN (
--    21723; -- Spell: 75460 (N/A?)
    @FlameShockPassiveSkillLineAbility, -- Spell: 75461 (Flame Shock Passive) [Shaman]
    @ActivatePrimarySpec, -- Spell: 63645 (Activate Primary Spec)
    @ActivateSecondarySpec -- Spell: 63644 (Activate Secondary Spec)    
);
