-- [F-007] mod-maghar: spell: 4 inserts, 8 updates, 0 deletes

-- New entries
DELETE FROM `spell` WHERE `id` IN (@SpellAncestralCall, @SpellSavageBlood, @SpellSympatheticVigor, @SpellOpenSkies);
INSERT INTO `spell` (`id`, `category`, `dispel`, `mechanic`, `attributes`, `attributes_ex_1`, `attributes_ex_2`, `attributes_ex_3`, `attributes_ex_4`, `attributes_ex_5`, `attributes_ex_6`, `attributes_ex_7`, `stances`, `unk_1`, `excluded_stances`, `unk_2`, `targets`, `target_creature_type`, `spell_focus_object`, `facing_caster_flags`, `caster_aura_state`, `target_aura_state`, `excluded_caster_aura_state`, `excluded_target_aura_state`, `caster_aura_spell`, `target_aura_spell`, `excluded_caster_aura_spell`, `excluded_target_aura_spell`, `cast_time_index`, `recovery_time`, `category_recovery_time`, `interrupt_flags`, `aura_interrupt_flags`, `channel_interrupt_flags`, `proc_flags`, `proc_chance`, `proc_charges`, `max_level`, `base_level`, `spell_level`, `duration_index`, `power_type`, `power_cost`, `power_cost_per_level`, `power_per_second`, `power_per_second_per_level`, `range_index`, `speed`, `modal_next_spell`, `stack_amount`, `totem_1`, `totem_2`, `reagent_1`, `reagent_2`, `reagent_3`, `reagent_4`, `reagent_5`, `reagent_6`, `reagent_7`, `reagent_8`, `reagent_count_1`, `reagent_count_2`, `reagent_count_3`, `reagent_count_4`, `reagent_count_5`, `reagent_count_6`, `reagent_count_7`, `reagent_count_8`, `equipped_item_class`, `equipped_item_subclass_mask`, `equipped_item_inventorytype_mask`, `effect_1`, `effect_2`, `effect_3`, `effect_die_sides_1`, `effect_die_sides_2`, `effect_die_sides_3`, `effect_real_points_per_level_1`, `effect_real_points_per_level_2`, `effect_real_points_per_level_3`, `effect_base_points_1`, `effect_base_points_2`, `effect_base_points_3`, `effect_mechanic_1`, `effect_mechanic_2`, `effect_mechanic_3`, `effect_implicit_target_a_1`, `effect_implicit_target_a_2`, `effect_implicit_target_a_3`, `effect_implicit_target_b_1`, `effect_implicit_target_b_2`, `effect_implicit_target_b_3`, `effect_radius_index_1`, `effect_radius_index_2`, `effect_radius_index_3`, `effect_apply_aura_name_1`, `effect_apply_aura_name_2`, `effect_apply_aura_name_3`, `effect_amplitude_1`, `effect_amplitude_2`, `effect_amplitude_3`, `effect_multiple_value_1`, `effect_multiple_value_2`, `effect_multiple_value_3`, `effect_chain_target_1`, `effect_chain_target_2`, `effect_chain_target_3`, `effect_item_type_1`, `effect_item_type_2`, `effect_item_type_3`, `effect_misc_value_a_1`, `effect_misc_value_a_2`, `effect_misc_value_a_3`, `effect_misc_value_b_1`, `effect_misc_value_b_2`, `effect_misc_value_b_3`, `effect_trigger_spell_1`, `effect_trigger_spell_2`, `effect_trigger_spell_3`, `effect_points_per_combo_point_1`, `effect_points_per_combo_point_2`, `effect_points_per_combo_point_3`, `effect_spell_class_mask_a_1`, `effect_spell_class_mask_a_2`, `effect_spell_class_mask_a_3`, `effect_spell_class_mask_b_1`, `effect_spell_class_mask_b_2`, `effect_spell_class_mask_b_3`, `effect_spell_class_mask_c_1`, `effect_spell_class_mask_c_2`, `effect_spell_class_mask_c_3`, `spell_visual_1`, `spell_visual_2`, `spell_icon_id`, `active_icon_id`, `spell_priority`, `spell_name_enus`, `spell_name_kokr`, `spell_name_frfr`, `spell_name_dede`, `spell_name_zhcn`, `spell_name_zhtw`, `spell_name_eses`, `spell_name_esmx`, `spell_name_ruru`, `spell_name_jajp`, `spell_name_ptpt`, `spell_name_itit`, `spell_name_unused_1`, `spell_name_unused_2`, `spell_name_unused_3`, `spell_name_unused_4`, `spell_name_flags`, `spell_subtext_enus`, `spell_subtext_kokr`, `spell_subtext_frfr`, `spell_subtext_dede`, `spell_subtext_zhcn`, `spell_subtext_zhtw`, `spell_subtext_eses`, `spell_subtext_esmx`, `spell_subtext_ruru`, `spell_subtext_jajp`, `spell_subtext_ptpt`, `spell_subtext_itit`, `spell_subtext_unused_1`, `spell_subtext_unused_2`, `spell_subtext_unused_3`, `spell_subtext_unused_4`, `spell_subtext_flags`, `spell_desc_enus`, `spell_desc_kokr`, `spell_desc_frfr`, `spell_desc_dede`, `spell_desc_zhcn`, `spell_desc_zhtw`, `spell_desc_eses`, `spell_desc_esmx`, `spell_desc_ruru`, `spell_desc_jajp`, `spell_desc_ptpt`, `spell_desc_itit`, `spell_desc_unused_1`, `spell_desc_unused_2`, `spell_desc_unused_3`, `spell_desc_unused_4`, `spell_desc_flags`, `spell_tooltip_enus`, `spell_tooltip_kokr`, `spell_tooltip_frfr`, `spell_tooltip_dede`, `spell_tooltip_zhcn`, `spell_tooltip_zhtw`, `spell_tooltip_eses`, `spell_tooltip_esmx`, `spell_tooltip_ruru`, `spell_tooltip_jajp`, `spell_tooltip_ptpt`, `spell_tooltip_itit`, `spell_tooltip_unused_1`, `spell_tooltip_unused_2`, `spell_tooltip_unused_3`, `spell_tooltip_unused_4`, `spell_tooltip_flags`, `power_cost_percentage`, `start_recovery_category`, `start_recovery_time`, `maximum_target_level`, `spell_class_set`, `spell_class_mask_1`, `spell_class_mask_2`, `spell_class_mask_3`, `max_affected_targets`, `damage_class`, `prevention_type`, `stance_bar_order`, `effect_damage_multiplier_1`, `effect_damage_multiplier_2`, `effect_damage_multiplier_3`, `min_faction_id`, `min_reputation`, `req_aura_vision`, `totem_category_1`, `totem_category_2`, `area_group_id`, `school_mask`, `rune_cost_id`, `spell_missile_id`, `power_display_id`, `effect_bonus_multiplier_1`, `effect_bonus_multiplier_2`, `effect_bonus_multiplier_3`, `spell_desc_variable_id`, `spell_difficulty_id`) VALUES
(@SpellAncestralCall, 0, 0, 0, 65552, 32, 147456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 120000, 0, 0, 0, 0, 0, 101, 0, 0, 1, 1, 8, 0, 0, 0, 0, 0, 1, '0E-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 6, 0, 1, 1, 0, '4.0000000000000000', '2.0000000000000000', '0E-16', 5, 4, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 99, 13, 0, 0, 0, 0, '0E-16', '0E-16', '0E-16', 0, 0, 0, 0, 0, 0, 0, 126, 0, 0, 0, 0, 0, 0, 0, '0E-16', '0E-16', '0E-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 0, 1465, 0, 0,
    'Ancestral Call', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190,
    'Racial', '종족 특성', 'Raciale', 'Volk', '种族特长', '種族特長', 'Racial', 'Racial', 'Расовая', '', '', '', '', '', '', '', 16712190,
    'Calls upon the strength of your uncorrupted ancestors, increasing your attack power by $s1 and your spell damage by $s2. Lasts $d.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190,
    'Attack power and spell damage increased.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '0E-16', '0E-16', '0E-16', 0, 0),
(@SpellSavageBlood, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '0E-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 6, 6, 1, 1, 1, '0E-16', '0E-16', '0E-16', 14, 14, 14, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 178, 178, 178, 0, 0, 0, '0E-16', '0E-16', '0E-16', 0, 0, 0, 0, 0, 0, 2, 3, 4, 0, 0, 0, 0, 0, 0, '0E-16', '0E-16', '0E-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2283, 0, 0,
    'Savage Blood', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190,
    'Racial Passive', '종족 지속효과', 'Raciale passive', 'Volk Passiv', '被动种族特长', '種族特長', 'Pasivo racial', 'Pasivo racial', 'Расовая, пассивная', '', '', '', '', '', '', '', 16712190,
    'Your untainted blood grants a $s1% chance to resist Curse, Disease and Poison effects.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190,
    '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', 0, 0),
(@SpellSympatheticVigor, 0, 0, 0, 208, 1024, 4194308, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 6, '0E-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 119, 0, 0, 1, 0, 0, '0E-16', '0E-16', '0E-16', 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 12, 12, 0, 133, 0, 0, 0, 0, 0, '0E-16', '0E-16', '0E-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0E-16', '0E-16', '0E-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511, 0, 0,
    'Sympathetic Vigor', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190,
    'Racial Passive', '종족 지속효과', 'Raciale passive', 'Volk Passiv', '被动种族特长', '種族特長', 'Pasivo racial', 'Pasivo racial', 'Расовая, пассивная', '', '', '', '', '', '', '', 16712190,
    'Your bond with the wilds of Draenor increases your pet’s maximum health by $s1%.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190,
    '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, '0E-16', '0E-16', '1.0000000000000000', 0, 0),
(@SpellOpenSkies, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '0E-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 0, 0, 1, 0, 0, '0E-16', '0E-16', '0E-16', -16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 232, 0, 0, 0, 0, 0, '0E-16', '0E-16', '0E-16', 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, '0E-16', '0E-16', '0E-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3722, 0, 0,
    'Unwavering Will', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190,
    'Racial Passive', '종족 지속효과', 'Raciale passive', 'Volk Passiv', '被动种族特长', '種族特長', 'Pasivo racial', 'Pasivo racial', 'Расовая, пассивная', '', '', '', '', '', '', '', 16712190,
    'Your unbroken spirit reduces the duration of Stun effects by an additional $s1%.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190,
    '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '1.0000000000000000', '1.0000000000000000', '1.0000000000000000', 0, 0);

UPDATE `spell` SET `spell_icon_id` = @IconAncestralCall    WHERE `id` = @SpellAncestralCall;
UPDATE `spell` SET `spell_icon_id` = @IconSavageBlood      WHERE `id` = @SpellSavageBlood;
UPDATE `spell` SET `spell_icon_id` = @IconSympatheticVigor WHERE `id` = @SpellSympatheticVigor;
UPDATE `spell` SET `attributes`    = 80                    WHERE `id` = @SpellSympatheticVigor; -- PASSIVE + ABILITY (drops HIDDEN_CLIENTSIDE)
UPDATE `spell` SET
    `effect_1` = 6,                         -- SPELL_EFFECT_APPLY_AURA
    `effect_apply_aura_name_1` = 80,        -- SPELL_AURA_MOD_PERCENT_STAT
    `effect_misc_value_a_1` = 2,            -- Stamina
    `effect_base_points_1` = 9,             -- +10%
    `effect_implicit_target_a_1` = 1,       -- TARGET_UNIT_CASTER (handler redirects appropriately)
    `effect_radius_index_1` = 0
WHERE `id` = @SpellSympatheticVigor;
UPDATE `spell` SET
    `effect_implicit_target_a_1` = 5   -- TARGET_UNIT_PET
WHERE `id` = @SpellSympatheticVigor;
UPDATE `spell` SET
    `effect_1` = 6,                         -- SPELL_EFFECT_APPLY_AURA
    `effect_apply_aura_name_1` = 282,       -- confirmed via Endurance's own data
    `effect_base_points_1` = 9,             -- +10%
    `effect_implicit_target_a_1` = 5,
    `effect_misc_value_a_1` = 0,
    `effect_radius_index_1` = 0
WHERE `id` = @SpellSympatheticVigor;
UPDATE `spell` SET -- Changing @SpellOpenSkies to Open Skies
    `effect_apply_aura_name_1` = 172, -- SPELL_AURA_MOD_MOUNTED_SPEED_NOT_STACK
    `effect_base_points_1`     = 9,   -- +10%
    `effect_misc_value_a_1`    = 0,
    `effect_apply_aura_name_2` = 211, -- SPELL_AURA_MOD_FLIGHT_SPEED_NOT_STACK
    `effect_base_points_2`     = 9,   -- +10%
    `effect_misc_value_a_2`    = 0,
    `spell_name_enus`          = 'Open Skies',
    `spell_desc_enus`          = 'Increases mounted speed by $s1%.',
    `spell_icon_id`            = @IconOpenSkies
WHERE `id` = @SpellOpenSkies;

-- Mount
-- spell: 1 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `spell` WHERE `id` IN (@MagharOrcMount1);
INSERT INTO `spell` (`id`, `category`, `dispel`, `mechanic`, `attributes`, `attributes_ex_1`, `attributes_ex_2`, `attributes_ex_3`, `attributes_ex_4`, `attributes_ex_5`, `attributes_ex_6`, `attributes_ex_7`, `stances`, `unk_1`, `excluded_stances`, `unk_2`, `targets`, `target_creature_type`, `spell_focus_object`, `facing_caster_flags`, `caster_aura_state`, `target_aura_state`, `excluded_caster_aura_state`, `excluded_target_aura_state`, `caster_aura_spell`, `target_aura_spell`, `excluded_caster_aura_spell`, `excluded_target_aura_spell`, `cast_time_index`, `recovery_time`, `category_recovery_time`, `interrupt_flags`, `aura_interrupt_flags`, `channel_interrupt_flags`, `proc_flags`, `proc_chance`, `proc_charges`, `max_level`, `base_level`, `spell_level`, `duration_index`, `power_type`, `power_cost`, `power_cost_per_level`, `power_per_second`, `power_per_second_per_level`, `range_index`, `speed`, `modal_next_spell`, `stack_amount`, `totem_1`, `totem_2`, `reagent_1`, `reagent_2`, `reagent_3`, `reagent_4`, `reagent_5`, `reagent_6`, `reagent_7`, `reagent_8`, `reagent_count_1`, `reagent_count_2`, `reagent_count_3`, `reagent_count_4`, `reagent_count_5`, `reagent_count_6`, `reagent_count_7`, `reagent_count_8`, `equipped_item_class`, `equipped_item_subclass_mask`, `equipped_item_inventorytype_mask`, `effect_1`, `effect_2`, `effect_3`, `effect_die_sides_1`, `effect_die_sides_2`, `effect_die_sides_3`, `effect_real_points_per_level_1`, `effect_real_points_per_level_2`, `effect_real_points_per_level_3`, `effect_base_points_1`, `effect_base_points_2`, `effect_base_points_3`, `effect_mechanic_1`, `effect_mechanic_2`, `effect_mechanic_3`, `effect_implicit_target_a_1`, `effect_implicit_target_a_2`, `effect_implicit_target_a_3`, `effect_implicit_target_b_1`, `effect_implicit_target_b_2`, `effect_implicit_target_b_3`, `effect_radius_index_1`, `effect_radius_index_2`, `effect_radius_index_3`, `effect_apply_aura_name_1`, `effect_apply_aura_name_2`, `effect_apply_aura_name_3`, `effect_amplitude_1`, `effect_amplitude_2`, `effect_amplitude_3`, `effect_multiple_value_1`, `effect_multiple_value_2`, `effect_multiple_value_3`, `effect_chain_target_1`, `effect_chain_target_2`, `effect_chain_target_3`, `effect_item_type_1`, `effect_item_type_2`, `effect_item_type_3`, `effect_misc_value_a_1`, `effect_misc_value_a_2`, `effect_misc_value_a_3`, `effect_misc_value_b_1`, `effect_misc_value_b_2`, `effect_misc_value_b_3`, `effect_trigger_spell_1`, `effect_trigger_spell_2`, `effect_trigger_spell_3`, `effect_points_per_combo_point_1`, `effect_points_per_combo_point_2`, `effect_points_per_combo_point_3`, `effect_spell_class_mask_a_1`, `effect_spell_class_mask_a_2`, `effect_spell_class_mask_a_3`, `effect_spell_class_mask_b_1`, `effect_spell_class_mask_b_2`, `effect_spell_class_mask_b_3`, `effect_spell_class_mask_c_1`, `effect_spell_class_mask_c_2`, `effect_spell_class_mask_c_3`, `spell_visual_1`, `spell_visual_2`, `spell_icon_id`, `active_icon_id`, `spell_priority`, `spell_name_enus`, `spell_name_kokr`, `spell_name_frfr`, `spell_name_dede`, `spell_name_zhcn`, `spell_name_zhtw`, `spell_name_eses`, `spell_name_esmx`, `spell_name_ruru`, `spell_name_jajp`, `spell_name_ptpt`, `spell_name_itit`, `spell_name_unused_1`, `spell_name_unused_2`, `spell_name_unused_3`, `spell_name_unused_4`, `spell_name_flags`, `spell_subtext_enus`, `spell_subtext_kokr`, `spell_subtext_frfr`, `spell_subtext_dede`, `spell_subtext_zhcn`, `spell_subtext_zhtw`, `spell_subtext_eses`, `spell_subtext_esmx`, `spell_subtext_ruru`, `spell_subtext_jajp`, `spell_subtext_ptpt`, `spell_subtext_itit`, `spell_subtext_unused_1`, `spell_subtext_unused_2`, `spell_subtext_unused_3`, `spell_subtext_unused_4`, `spell_subtext_flags`, `spell_desc_enus`, `spell_desc_kokr`, `spell_desc_frfr`, `spell_desc_dede`, `spell_desc_zhcn`, `spell_desc_zhtw`, `spell_desc_eses`, `spell_desc_esmx`, `spell_desc_ruru`, `spell_desc_jajp`, `spell_desc_ptpt`, `spell_desc_itit`, `spell_desc_unused_1`, `spell_desc_unused_2`, `spell_desc_unused_3`, `spell_desc_unused_4`, `spell_desc_flags`, `spell_tooltip_enus`, `spell_tooltip_kokr`, `spell_tooltip_frfr`, `spell_tooltip_dede`, `spell_tooltip_zhcn`, `spell_tooltip_zhtw`, `spell_tooltip_eses`, `spell_tooltip_esmx`, `spell_tooltip_ruru`, `spell_tooltip_jajp`, `spell_tooltip_ptpt`, `spell_tooltip_itit`, `spell_tooltip_unused_1`, `spell_tooltip_unused_2`, `spell_tooltip_unused_3`, `spell_tooltip_unused_4`, `spell_tooltip_flags`, `power_cost_percentage`, `start_recovery_category`, `start_recovery_time`, `maximum_target_level`, `spell_class_set`, `spell_class_mask_1`, `spell_class_mask_2`, `spell_class_mask_3`, `max_affected_targets`, `damage_class`, `prevention_type`, `stance_bar_order`, `effect_damage_multiplier_1`, `effect_damage_multiplier_2`, `effect_damage_multiplier_3`, `min_faction_id`, `min_reputation`, `req_aura_vision`, `totem_category_1`, `totem_category_2`, `area_group_id`, `school_mask`, `rune_cost_id`, `spell_missile_id`, `power_display_id`, `effect_bonus_multiplier_1`, `effect_bonus_multiplier_2`, `effect_bonus_multiplier_3`, `spell_desc_variable_id`, `spell_difficulty_id`) VALUES
(
	@MagharOrcMount1, -- ID
	0, -- Category
	0, -- DispelType
	21, -- Mechanic
	269844752, -- Attributes
	0, -- AttributesEx
	0, -- AttributesEx2
	536870912, -- AttributesEx3
	0, -- AttributesEx4
	0, -- AttributesEx5
	0, -- AttributesEx6
	0, -- AttributesEx7
	0, -- ShapeshiftMask
	0, -- unk_320_2
	0, -- ShapeshiftExclude
	0, -- unk_320_3
	0, -- Targets
	0, -- TargetCreatureType
	0, -- RequiresSpellFocus
	0, -- FacingCasterFlags
	0, -- CasterAuraState
	0, -- TargetAuraState
	0, -- ExcludeCasterAuraState
	0, -- ExcludeTargetAuraState
	0, -- CasterAuraSpell
	0, -- TargetAuraSpell
	0, -- ExcludeCasterAuraSpell
	0, -- ExcludeTargetAuraSpell
	16, -- CastingTimeIndex
	0, -- RecoveryTime
	0, -- CategoryRecoveryTime
	31, -- InterruptFlags
	128, -- AuraInterruptFlags
	0, -- ChannelInterruptFlags
	0, -- ProcTypeMask
	101, -- ProcChance
	0, -- ProcCharges
	0, -- MaxLevel
	0, -- BaseLevel
	1, -- SpellLevel
	21, -- DurationIndex
	0, -- PowerType
	0, -- ManaCost
	0, -- ManaCostPerLevel
	0, -- ManaPerSecond
	0, -- ManaPerSecondPerLevel
	1, -- RangeIndex
	0, -- Speed
	0, -- ModalNextSpell
	0, -- CumulativeAura
	0, -- Totem_1
	0, -- Totem_2
	0, -- Reagent_1
	0, -- Reagent_2
	0, -- Reagent_3
	0, -- Reagent_4
	0, -- Reagent_5
	0, -- Reagent_6
	0, -- Reagent_7
	0, -- Reagent_8
	0, -- ReagentCount_1
	0, -- ReagentCount_2
	0, -- ReagentCount_3
	0, -- ReagentCount_4
	0, -- ReagentCount_5
	0, -- ReagentCount_6
	0, -- ReagentCount_7
	0, -- ReagentCount_8
	-1, -- EquippedItemClass
	0, -- EquippedItemSubclass
	0, -- EquippedItemInvTypes
	6, -- Effect_1
	0, -- Effect_2
	6, -- Effect_3
	0, -- EffectDieSides_1
	1, -- EffectDieSides_2
	1, -- EffectDieSides_3
	0, -- EffectRealPointsPerLevel_1
	0, -- EffectRealPointsPerLevel_2
	0, -- EffectRealPointsPerLevel_3
	0, -- EffectBasePoints_1
	309, -- EffectBasePoints_2
	59, -- EffectBasePoints_3
	0, -- EffectMechanic_1
	0, -- EffectMechanic_2
	0, -- EffectMechanic_3
	1, -- ImplicitTargetA_1
	1, -- ImplicitTargetA_2
	1, -- ImplicitTargetA_3
	0, -- ImplicitTargetB_1
	0, -- ImplicitTargetB_2
	0, -- ImplicitTargetB_3
	0, -- EffectRadiusIndex_1
	0, -- EffectRadiusIndex_2
	0, -- EffectRadiusIndex_3
	78, -- EffectAura_1
	207, -- EffectAura_2
	32, -- EffectAura_3
	0, -- EffectAuraPeriod_1
	0, -- EffectAuraPeriod_2
	0, -- EffectAuraPeriod_3
	0, -- EffectMultipleValue_1
	0, -- EffectMultipleValue_2
	0, -- EffectMultipleValue_3
	0, -- EffectChainTargets_1
	0, -- EffectChainTargets_2
	0, -- EffectChainTargets_3
	0, -- EffectItemType_1
	0, -- EffectItemType_2
	0, -- EffectItemType_3
	@MagharOrcMount1CreatureID, -- EffectMiscValue_1
	0, -- EffectMiscValue_2
	0, -- EffectMiscValue_3
	0, -- EffectMiscValueB_1
	0, -- EffectMiscValueB_2
	0, -- EffectMiscValueB_3
	0, -- EffectTriggerSpell_1
	0, -- EffectTriggerSpell_2
	0, -- EffectTriggerSpell_3
	0, -- EffectPointsPerCombo_1
	0, -- EffectPointsPerCombo_2
	0, -- EffectPointsPerCombo_3
	0, -- EffectSpellClassMaskA_1
	0, -- EffectSpellClassMaskA_2
	0, -- EffectSpellClassMaskA_3
	0, -- EffectSpellClassMaskB_1
	0, -- EffectSpellClassMaskB_2
	0, -- EffectSpellClassMaskB_3
	0, -- EffectSpellClassMaskC_1
	0, -- EffectSpellClassMaskC_2
	0, -- EffectSpellClassMaskC_3
	7644, -- SpellVisualID_1
	0, -- SpellVisualID_2
	@MagharOrcMount1IconID, -- SpellIconID
	0, -- ActiveIconID
	0, -- SpellPriority
	@MagharOrcMount1NameenUS, -- Name_Lang_enUS
	@MagharOrcMount1NamekoKR, -- Name_Lang_koKR
	@MagharOrcMount1NamefrFR, -- Name_Lang_frFR
	@MagharOrcMount1NamedeDE, -- Name_Lang_deDE
	@MagharOrcMount1NamezhCN, -- Name_Lang_zhCN
	@MagharOrcMount1NamezhTW, -- Name_Lang_zhTW
	@MagharOrcMount1NameesES, -- Name_Lang_esES
	@MagharOrcMount1NameesMX, -- Name_Lang_esMX
	@MagharOrcMount1NameruRU, -- Name_Lang_ruRU
	@MagharOrcMount1NamejaJP, -- Name_Lang_jaJP
	@MagharOrcMount1NameptPT, -- Name_Lang_ptPT
	@MagharOrcMount1NameitIT, -- Name_Lang_itIT
	@MagharOrcMount1NameUnk1, -- Name_Lang_Unk1
	@MagharOrcMount1NameUnk2, -- Name_Lang_Unk2
	@MagharOrcMount1NameUnk3, -- Name_Lang_Unk3
	@MagharOrcMount1NameUnk4, -- Name_Lang_Unk4
	16712190, -- Name_Lang_Mask
	'', -- NameSubtext_Lang_enUS
	'', -- NameSubtext_Lang_koKR
	'', -- NameSubtext_Lang_frFR
	'', -- NameSubtext_Lang_deDE
	'', -- NameSubtext_Lang_zhCN
	'', -- NameSubtext_Lang_zhTW
	'', -- NameSubtext_Lang_esES
	'', -- NameSubtext_Lang_esMX
	'', -- NameSubtext_Lang_ruRU
	'', -- NameSubtext_Lang_jaJP
	'', -- NameSubtext_Lang_ptPT
	'', -- NameSubtext_Lang_itIT
	'', -- NameSubtext_Lang_Unk1
	'', -- NameSubtext_Lang_Unk2
	'', -- NameSubtext_Lang_Unk3
	'', -- NameSubtext_Lang_Unk4
	16712190, -- NameSubtext_Lang_Mask
	@MagharOrcMount1SpellDescriptionenUS, -- Description_Lang_enUS
	@MagharOrcMount1SpellDescriptionkoKR, -- Description_Lang_koKR
	@MagharOrcMount1SpellDescriptionfrFR, -- Description_Lang_frFR
	@MagharOrcMount1SpellDescriptiondeDE, -- Description_Lang_deDE
	@MagharOrcMount1SpellDescriptionzhCN, -- Description_Lang_zhCN
	@MagharOrcMount1SpellDescriptionzhTW, -- Description_Lang_zhTW
	@MagharOrcMount1SpellDescriptionesES, -- Description_Lang_esES
	@MagharOrcMount1SpellDescriptionesMX, -- Description_Lang_esMX
	@MagharOrcMount1SpellDescriptionruRU, -- Description_Lang_ruRU
	@MagharOrcMount1SpellDescriptionjaJP, -- Description_Lang_jaJP
	@MagharOrcMount1SpellDescriptionptPT, -- Description_Lang_ptPT
	@MagharOrcMount1SpellDescriptionitIT, -- Description_Lang_itIT
	@MagharOrcMount1SpellDescriptionUnk1, -- Description_Lang_Unk1
	@MagharOrcMount1SpellDescriptionUnk2, -- Description_Lang_Unk2
	@MagharOrcMount1SpellDescriptionUnk3, -- Description_Lang_Unk3
	@MagharOrcMount1SpellDescriptionUnk4, -- Description_Lang_Unk4
	16712190, -- Description_Lang_Mask
	'Increases ground speed by $s3%.', -- AuraDescription_Lang_enUS
	'이동 속도 $s3%만큼 증가', -- AuraDescription_Lang_koKR
	'Augmente la vitesse au sol de $s3%.', -- AuraDescription_Lang_frFR
	'Erhöht Tempo am Boden um $s3%.', -- AuraDescription_Lang_deDE
	'地面速度提高$s3%。', -- AuraDescription_Lang_zhCN
	'地面移動速度提高$s3%。', -- AuraDescription_Lang_zhTW
	'Aumenta la velocidad por tierra un $s3%.', -- AuraDescription_Lang_esES
	'Aumenta la velocidad por tierra un $s3%.', -- AuraDescription_Lang_esMX
	'Скорость бега повышена на $s3%.', -- AuraDescription_Lang_ruRU
	'', -- AuraDescription_Lang_jaJP
	'', -- AuraDescription_Lang_ptPT
	'', -- AuraDescription_Lang_itIT
	'', -- AuraDescription_Lang_Unk1
	'', -- AuraDescription_Lang_Unk2
	'', -- AuraDescription_Lang_Unk3
	'', -- AuraDescription_Lang_Unk4
	16712190, -- AuraDescription_Lang_Mask
	0, -- ManaCostPct
	133, -- StartRecoveryCategory
	0, -- StartRecoveryTime
	0, -- MaxTargetLevel
	0, -- SpellClassSet
	0, -- SpellClassMask_1
	0, -- SpellClassMask_2
	0, -- SpellClassMask_3
	0, -- MaxTargets
	0, -- DefenseType
	0, -- PreventionType
	0, -- StanceBarOrder
	1, -- EffectChainAmplitude_1
	1, -- EffectChainAmplitude_2
	1, -- EffectChainAmplitude_3
	0, -- MinFactionID
	0, -- MinReputation
	0, -- RequiredAuraVision
	0, -- RequiredTotemCategoryID_1
	0, -- RequiredTotemCategoryID_2
	0, -- RequiredAreasID
	1, -- SchoolMask
	0, -- RuneCostID
	0, -- SpellMissileID
	0, -- PowerDisplayID
	0, -- EffectBonusMultiplier_1
	0, -- EffectBonusMultiplier_2
	1, -- EffectBonusMultiplier_3
	0, -- SpellDescriptionVariableID
	0 -- SpellDifficultyID
);

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Mag'har Orc racials from CoA Custom 1.9 (Ilusixn's CoA race files, CoA race 49), renumbered into vacant slots
-- Commented out: the race already has its BfA racials. Remove the comment markers to give the race CoA's racials instead.
/*
DELETE FROM `spell` WHERE `id` IN (@CoAMagharOrcRacial1, @CoAMagharOrcRacial2, @CoAMagharOrcRacial3, @CoAMagharOrcRacial4);
INSERT INTO `spell` (`id`, `category`, `dispel`, `mechanic`, `attributes`, `attributes_ex_1`, `attributes_ex_2`, `attributes_ex_3`, `attributes_ex_4`, `attributes_ex_5`, `attributes_ex_6`, `attributes_ex_7`, `stances`, `unk_1`, `excluded_stances`, `unk_2`, `targets`, `target_creature_type`, `spell_focus_object`, `facing_caster_flags`, `caster_aura_state`, `target_aura_state`, `excluded_caster_aura_state`, `excluded_target_aura_state`, `caster_aura_spell`, `target_aura_spell`, `excluded_caster_aura_spell`, `excluded_target_aura_spell`, `cast_time_index`, `recovery_time`, `category_recovery_time`, `interrupt_flags`, `aura_interrupt_flags`, `channel_interrupt_flags`, `proc_flags`, `proc_chance`, `proc_charges`, `max_level`, `base_level`, `spell_level`, `duration_index`, `power_type`, `power_cost`, `power_cost_per_level`, `power_per_second`, `power_per_second_per_level`, `range_index`, `speed`, `modal_next_spell`, `stack_amount`, `totem_1`, `totem_2`, `reagent_1`, `reagent_2`, `reagent_3`, `reagent_4`, `reagent_5`, `reagent_6`, `reagent_7`, `reagent_8`, `reagent_count_1`, `reagent_count_2`, `reagent_count_3`, `reagent_count_4`, `reagent_count_5`, `reagent_count_6`, `reagent_count_7`, `reagent_count_8`, `equipped_item_class`, `equipped_item_subclass_mask`, `equipped_item_inventorytype_mask`, `effect_1`, `effect_2`, `effect_3`, `effect_die_sides_1`, `effect_die_sides_2`, `effect_die_sides_3`, `effect_real_points_per_level_1`, `effect_real_points_per_level_2`, `effect_real_points_per_level_3`, `effect_base_points_1`, `effect_base_points_2`, `effect_base_points_3`, `effect_mechanic_1`, `effect_mechanic_2`, `effect_mechanic_3`, `effect_implicit_target_a_1`, `effect_implicit_target_a_2`, `effect_implicit_target_a_3`, `effect_implicit_target_b_1`, `effect_implicit_target_b_2`, `effect_implicit_target_b_3`, `effect_radius_index_1`, `effect_radius_index_2`, `effect_radius_index_3`, `effect_apply_aura_name_1`, `effect_apply_aura_name_2`, `effect_apply_aura_name_3`, `effect_amplitude_1`, `effect_amplitude_2`, `effect_amplitude_3`, `effect_multiple_value_1`, `effect_multiple_value_2`, `effect_multiple_value_3`, `effect_chain_target_1`, `effect_chain_target_2`, `effect_chain_target_3`, `effect_item_type_1`, `effect_item_type_2`, `effect_item_type_3`, `effect_misc_value_a_1`, `effect_misc_value_a_2`, `effect_misc_value_a_3`, `effect_misc_value_b_1`, `effect_misc_value_b_2`, `effect_misc_value_b_3`, `effect_trigger_spell_1`, `effect_trigger_spell_2`, `effect_trigger_spell_3`, `effect_points_per_combo_point_1`, `effect_points_per_combo_point_2`, `effect_points_per_combo_point_3`, `effect_spell_class_mask_a_1`, `effect_spell_class_mask_a_2`, `effect_spell_class_mask_a_3`, `effect_spell_class_mask_b_1`, `effect_spell_class_mask_b_2`, `effect_spell_class_mask_b_3`, `effect_spell_class_mask_c_1`, `effect_spell_class_mask_c_2`, `effect_spell_class_mask_c_3`, `spell_visual_1`, `spell_visual_2`, `spell_icon_id`, `active_icon_id`, `spell_priority`, `spell_name_enus`, `spell_name_kokr`, `spell_name_frfr`, `spell_name_dede`, `spell_name_zhcn`, `spell_name_zhtw`, `spell_name_eses`, `spell_name_esmx`, `spell_name_ruru`, `spell_name_jajp`, `spell_name_ptpt`, `spell_name_itit`, `spell_name_unused_1`, `spell_name_unused_2`, `spell_name_unused_3`, `spell_name_unused_4`, `spell_name_flags`, `spell_subtext_enus`, `spell_subtext_kokr`, `spell_subtext_frfr`, `spell_subtext_dede`, `spell_subtext_zhcn`, `spell_subtext_zhtw`, `spell_subtext_eses`, `spell_subtext_esmx`, `spell_subtext_ruru`, `spell_subtext_jajp`, `spell_subtext_ptpt`, `spell_subtext_itit`, `spell_subtext_unused_1`, `spell_subtext_unused_2`, `spell_subtext_unused_3`, `spell_subtext_unused_4`, `spell_subtext_flags`, `spell_desc_enus`, `spell_desc_kokr`, `spell_desc_frfr`, `spell_desc_dede`, `spell_desc_zhcn`, `spell_desc_zhtw`, `spell_desc_eses`, `spell_desc_esmx`, `spell_desc_ruru`, `spell_desc_jajp`, `spell_desc_ptpt`, `spell_desc_itit`, `spell_desc_unused_1`, `spell_desc_unused_2`, `spell_desc_unused_3`, `spell_desc_unused_4`, `spell_desc_flags`, `spell_tooltip_enus`, `spell_tooltip_kokr`, `spell_tooltip_frfr`, `spell_tooltip_dede`, `spell_tooltip_zhcn`, `spell_tooltip_zhtw`, `spell_tooltip_eses`, `spell_tooltip_esmx`, `spell_tooltip_ruru`, `spell_tooltip_jajp`, `spell_tooltip_ptpt`, `spell_tooltip_itit`, `spell_tooltip_unused_1`, `spell_tooltip_unused_2`, `spell_tooltip_unused_3`, `spell_tooltip_unused_4`, `spell_tooltip_flags`, `power_cost_percentage`, `start_recovery_category`, `start_recovery_time`, `maximum_target_level`, `spell_class_set`, `spell_class_mask_1`, `spell_class_mask_2`, `spell_class_mask_3`, `max_affected_targets`, `damage_class`, `prevention_type`, `stance_bar_order`, `effect_damage_multiplier_1`, `effect_damage_multiplier_2`, `effect_damage_multiplier_3`, `min_faction_id`, `min_reputation`, `req_aura_vision`, `totem_category_1`, `totem_category_2`, `area_group_id`, `school_mask`, `rune_cost_id`, `spell_missile_id`, `power_display_id`, `effect_bonus_multiplier_1`, `effect_bonus_multiplier_2`, `effect_bonus_multiplier_3`, `spell_desc_variable_id`, `spell_difficulty_id`) VALUES
-- Ancestral Call (CoA 14000491) [aura 345 -> 13 (spell power)]: Increases your attack power by $s1 and your spell power by $s2. Lasts $d. Cannot be used while offensive effects from trinkets are active.
-- icon: ability_racial_ancestralcall
(@CoAMagharOrcRacial1, 1141, 0, 0, 16, 32, 147456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 120000, 10000, 0, 0, 0, 0, 101, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 6, 6, 1, 1, 1, 2, 2, 2, 5, 4, 5, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 99, 13, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 0, @IconCoAAbilityRacialAncestralcall, 0, 0, 'Ancestral Call', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 'Racial', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 'The Mag\'har call on the spirits of Draenor.\n\nIncreases your attack power by $s1 and your spell power by $s2. Lasts $d. Cannot be used while offensive effects from trinkets are active.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 'Increases your attack power increased by $s1 and spell power increased by $s2.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
-- Open Skies (CoA 14000492): Increases chance to hit with all spells and attacks by $s1% for you and all party members within $a1 yards.
-- icon: ability_racial_openskies
(@CoAMagharOrcRacial2, 0, 0, 0, 151257152, 0, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 35, 35, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 10, 10, 0, 54, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @IconCoAAbilityRacialOpenskies, 0, 0, 'Open Skies', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 'Racial', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 'Untainted by the fel, their strikes fly true.\n\nIncreases chance to hit with all spells and attacks by $s1% for you and all party members within $a1 yards.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 'Chance to hit increased by $s1%.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
-- Savage Blood (CoA 14000493): Duration of Stun effects reduced by an additional $s1%.
-- icon: ability_racial_pureblood
(@CoAMagharOrcRacial3, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, -11, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @IconCoAAbilityRacialPureblood, 0, 0, 'Savage Blood', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 'Racial', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 'Pure orcish blood shrugs off a stun.\n\nDuration of Stun effects reduced by an additional $s1%.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0),
-- Command (CoA 14000494): Damage dealt by pets increased by $s1%.
-- icon: Achievement_Character_Orc_Male (stock stand-in for achievement_alliedrace_magharorc)
(@CoAMagharOrcRacial4, 0, 0, 0, 2147483728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3289, 0, 0, 'Command', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 'Racial', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 'Wolves and beasts follow the Mag\'har.\n\nDamage dealt by pets increased by $s1%.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0);
*/
-- <<< CoA Custom 1.9 racials <<<
