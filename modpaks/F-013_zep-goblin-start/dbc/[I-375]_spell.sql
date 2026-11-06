-- I-375 Lost Isles warlock voidwalker quest - 900910 "Orb of Dominion"
-- Use-spell of item 84515 Attuned Orb of Dominion (quest 91211 Hostile Takeover).
-- Clone of stock 9222 Summon Voidwalker (item 7464 Glyphs of Summoning, quest
-- 1504 The Binding): needs a spell focus (here 1651 "Lost Isles Summoning
-- Circle", [I-375]_spellfocusobject.sql, = GO 900910 within its 10 yd radius;
-- stock 203 would print "Requires Orgrimmar Summoning Circle"), effect 1
-- SEND_EVENT, effect 2 ACTIVATE_OBJECT on the circle. Stock event 1787 summons 5676 at a
-- hard-coded Orgrimmar position, so this spell sends its own event 900910,
-- whose event_scripts row (zz_[I-375]_warlock_voidwalker.sql) summons the same
-- 5676 Summoned Voidwalker at the Lost Isles rim circle.
DELETE FROM `spell` WHERE id = 900910;
INSERT INTO `spell` SET
  `id` = 900910,
  `spell_focus_object` = 1651,
  `cast_time_index` = 7,
  `interrupt_flags` = 13,
  `proc_chance` = 101,
  `base_level` = 1,
  `spell_level` = 1,
  `range_index` = 7,
  `speed` = 40,
  `equipped_item_class` = -1,
  `effect_1` = 61,
  `effect_misc_value_a_1` = 900910,
  `effect_2` = 86,
  `effect_implicit_target_a_2` = 40,
  `effect_misc_value_a_2` = 1,
  `effect_damage_multiplier_1` = 1,
  `effect_damage_multiplier_2` = 1,
  `effect_damage_multiplier_3` = 1,
  `spell_visual_1` = 74,
  `spell_icon_id` = 217,
  `spell_name_enus` = 'Orb of Dominion',
  `spell_name_flags` = 16712190,
  `spell_desc_enus` = 'Call forth a voidwalker at the summoning circle and subjugate it.',
  `spell_desc_flags` = 16712190,
  `spell_tooltip_flags` = 16712188,
  `school_mask` = 1;
