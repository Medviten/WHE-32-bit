-- I-336 round 3: bolt the goblin banner onto Ace. See [I-336]_spellvisualeffectname.sql
-- for the chain (72077 -> visual 15233 -> kit 14089 -> attach 3841 -> effect name 6322).
--
-- Hand-authored because the goblin gen cannot emit it: spellvisuals.py resolves effect
-- names against the STOCK 3.3.5a table, so a model that only ships via a zpak (this one
-- comes from patch-open-azeroth) is always "NOT resolvable" and its attach is dropped.
-- Same reason [I-343]_spellvisualkitmodelattach.sql exists.
--
-- Verbatim from the Whitemane 4.3.4 SpellVisualKitModelAttach.dbc row 3841: parent kit
-- 14089, effect name 6322, attachment 34, offset (0, 0, -0.25), yaw -pi, pitch 0.4363323
-- (25 deg), roll 0. Id 3841 is free in our DBC and outside the emitter's 90001-90999 block.
--
-- The offset is attachment-relative, so it is only exact on the donor's mesh. Ace keeps
-- the donor display (38455 -> 30051, carried over verbatim by the port), so no re-base is
-- applied — confirm the banner sits on his back in game.

DELETE FROM `spellvisualkitmodelattach` WHERE id = 3841;
INSERT INTO `spellvisualkitmodelattach` SET
  `id` = 3841,
  `parent_spell_vis_kit_id` = 14089,
  `spell_vis_effect_name_id` = 6322,
  `attachment_id` = 34,
  `offset_x` = 0,
  `offset_y` = 0,
  `offset_z` = -0.25,
  `yaw` = -3.1415927,
  `pitch` = 0.4363323,
  `roll` = 0;
