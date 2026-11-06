-- I-336 round 3: the goblin banner Ace carries on the surrender escort (24868).
--
-- 72077 "Surrender Or Else!: Goblin Banner Aura" is a permanent dummy aura (aura 4,
-- duration index 21) Ace casts on himself. The banner is not part of his M2 — it is
-- delivered entirely by that spell's visual:
--
--   spell 72077 -> spell_visual 15233 -> state_kit 14089 -> SpellVisualKitModelAttach 3841
--                                                        -> SpellVisualEffectName 6322
--
-- The spell, visual and kit are emitted by the goblin gen (72077 is in
-- cli/data/goblin/fixtures/missing_spells.json; spellvisuals.py walks the chain). The
-- attach row is emitted too, but only once this row exists: the emitter resolves
-- effect names against the LIVE spellvisualeffectname by asset identity and drops the
-- attach when nothing carries the model (the I-323 emitter gap). Same shape as
-- [I-343]_spellvisualeffectname.sql (the Flying Bomber's rope ladder).
--
-- Verbatim from the Whitemane 4.3.4 DBC (SpellVisualEffectName.dbc row 6322: id / name /
-- fileName / areaEffectSize 0.0 / scale 0.35 / min 0.1 / max 10.0; Cata appends two
-- fields after these seven, so the WotLK layout maps 1:1). Id 6322 is free in our DBC.
--
-- The model ships already: patch-open-azeroth carries
-- WORLD\GENERIC\GOBLIN\PASSIVEDOODADS\LOSTISLES\GOBLIN_BANNER_02.M2 + _0200.SKIN + .BLP
-- (the Lost Isles terrain port), so this is DBC-only.

DELETE FROM `spellvisualeffectname` WHERE id = 6322;
INSERT INTO `spellvisualeffectname` SET
  `id` = 6322,
  `name` = 'Goblin Banner 02',
  `file_name` = 'world\\generic\\goblin\\passivedoodads\\lostisles\\goblin_banner_02.mdx',
  `area_effect_size` = 0,
  `scale` = 0.35,
  `min_allowed_scale` = 0.1,
  `max_allowed_scale` = 10;
