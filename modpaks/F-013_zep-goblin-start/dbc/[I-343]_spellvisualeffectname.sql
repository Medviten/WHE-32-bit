-- I-343 round 2: the rope ladder model, never ported.
--
-- 73149 "Old Friends: Flying Bomber's Rope Ladder" is a permanent dummy aura the
-- bomber casts on itself; the ladder is not part of any bomber M2 and is not a
-- creature — it is delivered entirely by that spell's visual:
--
--   spell 73149 -> spell_visual 15427 -> state_kit 14268 -> SpellVisualKitModelAttach
--                                                        -> SpellVisualEffectName 6429
--
-- 15427 and 14268 both ship (AUTO), but the two rows that carry the actual model do
-- not: our spellvisualkitmodelattach has no row with parent kit 14268, and
-- spellvisualeffectname has no 6429. Kit 14268 is otherwise all zeroes/-1, so the
-- ported chain resolves to an empty kit and renders nothing. That is why the ladder
-- has never appeared, independently of which seat the player is in.
--
-- Verbatim from the Whitemane 4.3.4 DBCs (SpellVisualEffectName.dbc row 6429 reads
-- id / name / fileName / areaEffectSize 0.0 / scale 0.5 / min 0.1 / max 10.0; Cata
-- appends two fields after these seven, so the WotLK layout maps 1:1). Id 6429 is
-- free in our DBC and in every zpak.
--
-- The model needs no shipping: RopeLadder01.m2 is stock 3.3.5a
-- (cli/lib/resource_parser/data/wotlk_335a_merged.txt lists
-- World\GENERIC\HUMAN\PASSIVE DOODADS\RopeLadders\RopeLadder01.m2 + .skin + .blp).

DELETE FROM `spellvisualeffectname` WHERE id = 6429;
INSERT INTO `spellvisualeffectname` SET
  `id` = 6429,
  `name` = 'Rope Ladder',
  `file_name` = 'world\\generic\\human\\passive doodads\\ropeladders\\ropeladder01.mdx',
  `area_effect_size` = 0,
  `scale` = 0.5,
  `min_allowed_scale` = 0.1,
  `max_allowed_scale` = 10;
