-- I-343 round 2: hang the rope ladder off the bomber. See
-- [I-343]_spellvisualeffectname.sql for why the chain rendered nothing.
--
-- Donor row (Whitemane SpellVisualKitModelAttach.dbc id 4016): parent kit 14268,
-- effect name 6429, attachment 40, offset (-4.0, 0.0, -6.25), yaw 0, pitch 0.6108650
-- (35 deg), roll 0. Id 4016 is free in our DBC.
--
-- THE OFFSET IS RE-BASED, and that is deliberate. The donor authored it against
-- `flyingBomber_02.m2`, whose attachment 40 sits at (-0.895, -0.044, -0.591) in model
-- space, so the ladder anchors at (-4.895, -0.044, -6.841). I-356 moves the bomber
-- onto display 31281 = `flyingBomber.m2`, whose attachment 40 is at
-- (-2.738, 0.0, -2.057) — 2.4 yd away. Shipping the donor's raw offset would drag the
-- ladder that far out of position.
--
-- Re-basing to keep the same model-space anchor is exact here, not an approximation:
--   * the rider's position is NOT bone-parented. VehicleSeat 7567 names attachment 14,
--     and NEITHER mesh has an attachment 14 (both carry 0/15/16/18/19/20/34/39/40
--     only, verified by reading the M2 attachment blocks), so the client falls back to
--     the model origin and applies the seat's raw offset (-2.5, 0.0, -3.5). The player
--     therefore hangs at the same model-space point on either mesh.
--   * attachment 40's bone has zero translation/rotation/scale keys on both meshes and
--     an identity local transform, so its offset is plain parent-space translation —
--     no bone rest rotation to unwind (the usual trap).
-- So pinning the ladder to the donor's model-space point preserves the retail
-- ladder-to-rider relationship exactly:
--   offset = (-4.895, -0.044, -6.841) - (-2.738, 0.0, -2.057) = (-2.157, -0.044, -4.784)
--
-- Bone 1 (the fuselage) does animate on both meshes, so the ladder banks with the
-- plane while the rider does not — same as retail.

DELETE FROM `spellvisualkitmodelattach` WHERE id = 4016;
INSERT INTO `spellvisualkitmodelattach` SET
  `id` = 4016,
  `parent_spell_vis_kit_id` = 14268,
  `spell_vis_effect_name_id` = 6429,
  `attachment_id` = 40,
  `offset_x` = -2.157,
  `offset_y` = -0.044,
  `offset_z` = -4.784,
  `yaw` = 0,
  `pitch` = 0.6108650,
  `roll` = 0;
