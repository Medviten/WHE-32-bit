-- =============================================================================
-- I-362  Bolt the cage model onto SpellVisualKit 14379.
--
-- See [I-362]_spellvisualeffectname.sql for the full diagnosis. Cata source row:
--   SpellVisualKitModelAttach id 4120, kit 14379, effectname 6492,
--   attachment 19 (Base), offset (0.00, 0.00, -0.10), no rotation.
--
-- id 91007 is deliberately OUTSIDE the AUTO emitter's ATTACH_BLOCK (90001-90999,
-- spellvisuals.py:137), which it DELETEs and re-emits wholesale on every run —
-- a row inside that range would be destroyed by the next regen. The hand block
-- above 91000 already holds rows up to 91006.
--
-- Sorts after [AUTO,F-011]_spellvisualkitmodelattach.sql ('A' < 'I'), so the
-- emitter cannot reintroduce the gap on top of this.
-- =============================================================================

DELETE FROM `spellvisualkitmodelattach` WHERE id = 91007;
INSERT INTO `spellvisualkitmodelattach` SET
  `id` = 91007,
  `parent_spell_vis_kit_id` = 14379,
  `spell_vis_effect_name_id` = @ZepEffect90111,
  `attachment_id` = 19,
  `offset_x` = 0.0,
  `offset_y` = 0.0,
  `offset_z` = -0.10,
  `yaw` = 0.0,
  `pitch` = 0.0,
  `roll` = 0.0;
