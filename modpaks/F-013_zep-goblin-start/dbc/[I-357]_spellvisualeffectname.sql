-- I-357 Gallywix Labor Mine questline -- two thrown objects render as the client's
-- missing-model placeholder (the checkered cube), reported in game:
--
--   q25122 "Morale Boost"            spell 73583 Kaja'Cola Zero-One  -> visual 15509
--   q25123 "Throw It On the Ground!" spell 73702 Blastshadow's Soulstone -> visual 15525
--
-- Both visuals were ported faithfully by the I-318 emitter EXCEPT `missile_model`, which
-- it zeroed because no 3.3.5a `spellvisualeffectname` row carries the Cata asset path.
-- `has_missile` = 1 with `missile_model` = 0 draws the placeholder cube, not an invisible
-- projectile (I-346). Verified against the 4.3.4 rows in the Whitemane extract: Cata
-- indices 1..26 of both visuals are byte-identical to ours apart from that one slot.
--
-- Values below are the 4.3.4 SpellVisualEffectName rows verbatim. min/max allowed scale
-- are 0.01/100 and NOT 0/0 -- that clamp renders the model invisible
-- (reference_item_cast_spellvisual_kit). 90xxx is the hand-authored block the
-- spellvisuals emitter skips by convention; 90108/90109 follow 90107 (I-352).

-- Cata effectname 6094. The asset already ships: patch-open-azeroth packs
-- WORLD/GENERIC/GOBLIN/PASSIVEDOODADS/KEZAN/ITEMS/GOBLIN_CAN_02.M2, so this is a DBC row
-- only. It is the Kaja'Cola can itself -- the thrown drink is meant to be the can.
DELETE FROM `spellvisualeffectname` WHERE id = 90108;
INSERT INTO `spellvisualeffectname` SET
  `id` = 90108,
  `name` = 'Missile: Goblin Can 02 (I-357 Kaja''Cola Zero-One)',
  `file_name` = 'world\\generic\\goblin\\passivedoodads\\kezan\\items\\goblin_can_02.mdx',
  `area_effect_size` = 1.0,
  `scale` = 0.6,
  `min_allowed_scale` = 0.01,
  `max_allowed_scale` = 100.0;

-- Cata effectname 6478. Unlike the can, this asset does NOT ship -- it is Cata-only and no
-- zpak packed it. Added to this zpak's MPQ tree alongside the other hand-shipped
-- WORLD/EXPANSION03 doodads:
--   WORLD/EXPANSION03/DOODADS/TWILIGHTHAMMER/BANNERS/TWILIGHTHAMMER_ORB_01.M2
--                                                   /TWILIGHTHAMMER_ORB_0100.SKIN
--                                                   /BE_SCRYINGBALL_PURPLE.BLP
-- The Asset Library copy is already MD20 v264 (byte-identical to how the I-352 pygmy helm
-- ships), so no retroport was needed. The M2 names 12 textures; 11 are stock 3.3.5a paths
-- and only BE_ScryingBall_Purple.blp is Cata-only, hence the one BLP.
DELETE FROM `spellvisualeffectname` WHERE id = 90109;
INSERT INTO `spellvisualeffectname` SET
  `id` = 90109,
  `name` = 'Missile: Twilight Hammer Orb 01 (I-357 Blastshadow''s Soulstone)',
  `file_name` = 'world\\expansion03\\doodads\\twilighthammer\\banners\\twilighthammer_orb_01.mdx',
  `area_effect_size` = 1.0,
  `scale` = 0.5,
  `min_allowed_scale` = 0.01,
  `max_allowed_scale` = 100.0;
