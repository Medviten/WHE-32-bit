-- =============================================================================
-- I-362  "Escape Velocity" (25214) — the cages do not render
--
-- Creature 39456 Captured Goblin permanently casts 73926 "Escape Velocity: Cage"
-- on itself (SAI 39456 event 1 -> action 11). That spell is a pure DUMMY aura
-- (aura type 4) with no stats: its entire visible effect is SpellVisual 15550,
-- whose only content is state_kit 14379. Our kit 14379 is EMPTY — every effect
-- slot 0, anims -1 — and carries no `spellvisualkitmodelattach` row, so nothing
-- is ever drawn. The goblin appears with no cage.
--
-- The rockets half of the same set-piece (73948 -> visual 15551 -> kit 14380)
-- ported fine, with four attach rows. The drop is asymmetric, and this is why:
--
--   goblin_gen/spellvisuals.py:387  eff = effects.resolve(src[2], ...)
--                                   if not eff: continue
--
-- An attachment whose Cata effectname has no counterpart in our 3.3.5a
-- `spellvisualeffectname` is skipped ENTIRELY — no row, no model, no error the
-- player can see. Same emitter gap as I-346 (torchlit.mdx -> effectname 90106).
--
-- Whitemane's Cata SpellVisualKitModelAttach.dbc, kit 14379, has exactly one row:
--   id 4120, effectname 6492, attachment 19 (Base), offset (0, 0, -0.10)
-- and effectname 6492 is:
--   'Goblin Cage 01' -> world\generic\goblin\passivedoodads\lostisles\goblin_cage_01.mdx
--   area_effect_size 1.0, scale 1.0, min/max allowed scale 0.01 / 100.0
--
-- Values below are that Cata row verbatim. Never 0/0 for min/max allowed scale —
-- that renders the model at zero size (reference_item_cast_spellvisual_kit).
--
-- No asset work needed: zep-goblin-start already ships
-- mpq/source-assets/world/generic/goblin/passivedoodads/lostisles/goblin_cage_01.m2
-- and its .skin, so the model is already in PATCH-Z.
--
-- @ZepEffect90111 is the next free custom effectname (block starts at 90000; @ZepEffect90110 was the
-- previous highest). The AUTO spellvisual emitter does not own this table.
-- =============================================================================

DELETE FROM `spellvisualeffectname` WHERE id = @ZepEffect90111;
INSERT INTO `spellvisualeffectname` SET
  `id` = @ZepEffect90111,
  `name` = 'Goblin Cage 01',
  `file_name` = 'world\\generic\\goblin\\passivedoodads\\lostisles\\goblin_cage_01.mdx',
  `area_effect_size` = 1.0,
  `scale` = 1.0,
  `min_allowed_scale` = 0.01,
  `max_allowed_scale` = 100.0;
