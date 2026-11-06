-- I-352 "Pygmy Helmet" (spell 66987) — SpellVisualKit 16429's one model attach.
-- Effectname and the full derivation: [I-352]_spellvisualeffectname.sql.
--
-- 4.3.4 row 6012 verbatim: attachment 17, offset (-0.30, 0.00, -0.25), no rotation.
-- Attachment 17 is present on the model our client actually runs for the wearer —
-- CHARACTER\GOBLIN\MALE\GOBLINMALE.M2 and GOBLINFEMALE.M2 both carry it (checked in
-- mod-worgoblin and in patch-hd-everything, which overrides it) — and the donor authored
-- these numbers against the Cata goblin our retroport came from, so the geometry should
-- land first time.
--
-- If it sits off-centre in game the offset is expressed in that attachment bone's LOCAL
-- frame and the bone's rest pose is not necessarily identity
-- ([[reference_m2_bone_rest_rotation_attachments]]): pre-rotate the offset by the bone's
-- rest quaternion, do not nudge the numbers blind.
--
-- Id 91005, NOT the next free 90xxx: `[AUTO,F-011]_spellvisualkitmodelattach.sql` opens
-- with `DELETE ... WHERE id BETWEEN 90001 AND 90999`, so anything added inside that band is
-- wiped the next time the AUTO file applies. 91001-91003 are I-328's, 91004 is I-335's.
DELETE FROM `spellvisualkitmodelattach` WHERE id = 91005;
INSERT INTO `spellvisualkitmodelattach` SET
  `id` = 91005,
  `parent_spell_vis_kit_id` = 16429,
  `spell_vis_effect_name_id` = 90107,
  `attachment_id` = 17,
  `offset_x` = -0.3,
  `offset_y` = 0.0,
  `offset_z` = -0.25,
  `yaw` = 0,
  `pitch` = 0,
  `roll` = 0;
