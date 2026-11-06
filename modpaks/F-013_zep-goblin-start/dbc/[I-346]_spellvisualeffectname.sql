-- I-346 quest 25058 "Mine Disposal, the Goblin Way" — the thrown grenade had no model.
--
-- SYMPTOM (reported in game): the mine projectile renders as the client's missing-model
-- placeholder (checkered cube) as it flies from the player to the land mine.
--
-- CAUSE: spell 73417 "Satchel of Grenades" carries `spell_visual_1` = 15463. That visual
-- was ported by the I-318 emitter, which zeroed `missile_model` because Cata effectname
-- 6451 has no counterpart row in our 3.3.5a `spellvisualeffectname` — the known emitter
-- gap recorded on I-323. 15463 is a missile-ONLY visual (precast kit 171 and cast kit 172
-- carry no model slots, impact-area kit 9265 resolves to stock Canon_Impact_Dust), so the
-- zeroed slot is the single model in the whole chain.
--
-- The ASSET ships stock: `spells\torchlit.mdx` is `spells/TorchLit.m2` in the stock 3.3.5a
-- client tree. Nothing needs packing — only the DBC row that names it.
--
-- Values are the 4.3.4 row for 6451 verbatim (area size 1.0, scale 0.75, min/max allowed
-- scale 0.01/100). min/max are NOT 0/0: that clamp renders the model invisible
-- (reference_item_cast_spellvisual_kit). Custom id 90106 follows 90105; 90xxx is the
-- hand-authored block the spellvisuals emitter skips by convention.
DELETE FROM `spellvisualeffectname` WHERE id = 90106;
INSERT INTO `spellvisualeffectname` SET
  `id` = 90106,
  `name` = 'Missile: Torch, Unlit (I-346 Satchel of Grenades)',
  `file_name` = 'spells\\torchlit.mdx',
  `area_effect_size` = 1.0,
  `scale` = 0.75,
  `min_allowed_scale` = 0.01,
  `max_allowed_scale` = 100.0;
