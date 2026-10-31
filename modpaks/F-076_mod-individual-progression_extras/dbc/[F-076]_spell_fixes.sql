-- Other Spell.dbc changes of IP's (in both patch-S and patch-V)

-- Changed spells
UPDATE `spell` SET `spell_subtext_enus` = 'Rank 1' WHERE `id` = 1784; -- Stealth
UPDATE `spell` SET `duration_index` = 30 WHERE `id` = 8137; -- Silithid Pox
UPDATE `spell` SET `effect_base_points_1` = 1 WHERE `id` = 16805; -- Conflagration
UPDATE `spell` SET `effect_base_points_1` = 1 WHERE `id` = 16806; -- Conflagration
UPDATE `spell` SET `spell_name_enus` = 'Opening' WHERE `id` = 22810; -- Opening - No Text
UPDATE `spell` SET `attributes` = 0, `cast_time_index` = 0, `proc_chance` = 0, `base_level` = 0, `spell_level` = 0, `duration_index` = 0, `power_cost` = 0, `range_index` = 0, `equipped_item_class` = 0, `effect_1` = 0, `effect_2` = 0, `effect_die_sides_1` = 0, `effect_base_points_1` = 0, `effect_implicit_target_a_1` = 0, `effect_implicit_target_a_2` = 0, `effect_misc_value_a_1` = 0, `effect_misc_value_a_2` = 0, `effect_misc_value_b_1` = 0, `effect_misc_value_b_2` = 0, `spell_visual_1` = 0, `spell_icon_id` = 0, `spell_name_flags` = 0, `spell_subtext_flags` = 0, `spell_desc_flags` = 0, `spell_tooltip_flags` = 0, `spell_class_set` = 0, `spell_class_mask_1` = 0, `prevention_type` = 0, `effect_damage_multiplier_1` = '0E-16', `effect_damage_multiplier_2` = '0E-16', `effect_damage_multiplier_3` = '0E-16', `school_mask` = `school_mask` & ~8, `effect_bonus_multiplier_2` = '0E-16' WHERE `id` = 23420; -- Corrupted Stoneskin Totem
UPDATE `spell` SET `effect_multiple_value_1` = '10000000.0000000000000000' WHERE `id` = 25681; -- Summon Mana Fiend
UPDATE `spell` SET `effect_multiple_value_1` = '10000000.0000000000000000' WHERE `id` = 25682; -- Summon Mana Fiend
UPDATE `spell` SET `effect_multiple_value_1` = '10000000.0000000000000000' WHERE `id` = 25683; -- Summon Mana Fiend
UPDATE `spell` SET `spell_desc_enus` = 'Permanently enchant a Melee Weapon to occasionaly heal nearby party members of 180 to 300 health when an enemy is struck. Requires a level 35 or higher item.' WHERE `id` = 28004; -- Enchant Weapon - Battlemaster
UPDATE `spell` SET `spell_desc_enus` = 'Increased Intellect 42', `spell_tooltip_enus` = 'Increased Intellect 42' WHERE `id` = 59285; -- Blight
