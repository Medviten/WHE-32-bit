-- I-357 q25184 -- the missing attach row that puts the cart model on the invisible
-- stalker. See [I-357]_spellvisualeffectname_minecart.sql for why the cart is invisible.
--
-- Transcribed from Cata SpellVisualKitModelAttach row 6907 (parent kit 17829, effectname
-- 7994, attachment 34, offset -0.75 / 0 / -1.5, yaw/pitch/roll all 0). Offsets transfer
-- VERBATIM here because the target model is the same stock file in both clients
-- (CreatureModelData 2790 `InvisibleStalkerGround`), so the bone rest pose that rotates an
-- attachment and its offset is identical -- see reference_m2_bone_rest_rotation_attachments
-- for when that is not true.
--
-- Attachment 34 is CHEST and the target M2 really defines it: InvisibleStalkerGround.M2
-- (MD20 v264) has 32 attachments and an attachLookup of 36 where lookup[34] = 30, an
-- attachment whose id is 34. Verified by parsing nAttachments/ofsAttachments at header
-- dwords 60/61 rather than assuming.
--
-- Custom attach id 91006 follows 91005 (I-352); attach ids are referenced by nothing, so
-- the Cata id 6907 is deliberately not reused.
DELETE FROM `spellvisualkitmodelattach` WHERE id = 91006;
INSERT INTO `spellvisualkitmodelattach` SET
  `id` = 91006,
  `parent_spell_vis_kit_id` = 17829,
  `spell_vis_effect_name_id` = @ZepEffect90110,
  `attachment_id` = 34,
  `offset_x` = -0.75,
  `offset_y` = 0.0,
  `offset_z` = -1.5,
  `yaw` = 0.0,
  `pitch` = 0.0,
  `roll` = 0.0;
