-- I-352 "Pygmy Helmet" (spell 66987) — the helmet model the disguise never drew.
--
-- 66987's SpellVisual 17539 and its STATE kit 16429 both ship (AUTO rows, byte-faithful
-- to 4.3.4). The kit is deliberately empty of effects — the helmet is not a kit slot, it
-- is a MODEL ATTACH hung off that kit, and 4.3.4 has exactly one:
--
--   SpellVisualKitModelAttach 6012  kit 16429  effectname 7496  attachment 17
--                                   offset (-0.30, 0.00, -0.25)  yaw/pitch/roll 0
--
--   SpellVisualEffectName 7496 "Pygmy Warrior Helm"
--     world\expansion03\doodads\pygmy\items\pygmy_warriorhelm.mdx
--     area 0.0  scale 2.25  min 0.1  max 10.0
--
-- Same emitter gap as I-328 (periscope) and I-335 (pool pony): `spellvisuals.py` resolves
-- a Cata effectname by matching its .mdx path against the effectnames 3.3.5a already has,
-- 7496's path is not one of them, so the slot was zeroed and the attach row never emitted.
-- Only the DBC rows were missing. The MESH ships already, retroported to v264 in
-- patch-open-azeroth and verified in the built tree as
--   WORLD\EXPANSION03\DOODADS\PYGMY\ITEMS\PYGMY_WARRIORHELM.M2 (+ ...00.SKIN),
-- MD20 v264, 2 textures: creature\pygmy\pygmywarriorskin_a_02.blp (ships in
-- patch-open-azeroth AND zep-goblin-start) and creature\protodragon\orbreflect.blp (stock).
--
-- scale 2.25 is verbatim and is why it reads as a GIANT helmet on Whitemane — the doodad is
-- authored at prop size and blown up to swallow a goblin's head. min/max 0.1/10, NOT 0/0,
-- which renders invisible ([[reference_item_cast_spellvisual_kit]]).
--
-- 90xxx is the hand-authored effectname block the emitter skips; 90106 is I-346's.
DELETE FROM `spellvisualeffectname` WHERE id = 90107;
INSERT INTO `spellvisualeffectname` SET
  `id` = 90107,
  `name` = 'Pygmy Warrior Helm (I-352 spell 66987)',
  `file_name` = 'world\\expansion03\\doodads\\pygmy\\items\\pygmy_warriorhelm.mdx',
  `area_effect_size` = 0.0,
  `scale` = 2.25,
  `min_allowed_scale` = 0.1,
  `max_allowed_scale` = 10.0;
