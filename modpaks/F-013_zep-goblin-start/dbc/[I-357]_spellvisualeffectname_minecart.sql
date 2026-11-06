-- I-357 q25184 "Wild Mine Cart Ride" -- the cart the player rides is invisible.
--
-- The ride vehicle is creature 39329 "Mine Cart", whose display 36769 resolves to
-- `Creature\InvisibleStalker\InvisibleStalkerGround.mdx`. That is FAITHFUL and not the
-- bug: Cata display 36769 is the same invisible stalker (verified in the Whitemane
-- CreatureDisplayInfo.dbc -> model 2790, same path, same stock model in both clients).
-- The visible cart is bolted on top of it by `creature_template_addon.auras` 88223
-- "Wild Mine Cart Ride: Mine Cart Visual" -- a SPELL_AURA_DUMMY whose entire payload is
-- its `spell_visual_1` 18677 -> `state_kit` 17829 -> a SpellVisualKitModelAttach row.
--
-- Kit 17829 is legitimately all-zero (anim -1, no effect slots), so the port looks
-- complete and draws nothing. This is the state-kit half of the I-323 emitter gap, 4th
-- instance after I-328 (periscope), I-335 (pool pony) and I-352 (pygmy helmet):
-- SpellVisualKitModelAttach is a separate table the emitter does not walk.
--
-- The asset already ships (zep-models and patch-open-azeroth both pack
-- WORLD/GENERIC/GOBLIN/PASSIVEDOODADS/LOSTISLES/GOBLIN_LOSTISLES_MINECART.M2), so this
-- is DBC rows only.
--
-- Values are the 4.3.4 row for effectname 7994 verbatim. 7994 is free on our side, but
-- hand-authored rows stay in the 90xxx block the spellvisuals emitter skips by
-- convention. @ZepEffect90110 follows 90109.
DELETE FROM `spellvisualeffectname` WHERE id = @ZepEffect90110;
INSERT INTO `spellvisualeffectname` SET
  `id` = @ZepEffect90110,
  `name` = 'Goblin Lost Isles Mine Cart (I-357 Wild Mine Cart Ride)',
  `file_name` = 'world\\generic\\goblin\\passivedoodads\\lostisles\\goblin_lostisles_minecart.mdx',
  `area_effect_size` = 1.0,
  `scale` = 1.0,
  `min_allowed_scale` = 0.01,
  `max_allowed_scale` = 100.0;
