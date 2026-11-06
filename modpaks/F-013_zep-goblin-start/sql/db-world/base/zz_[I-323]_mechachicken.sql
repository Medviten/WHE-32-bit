-- I-323 Mechachicken (38224) — sole owner of this creature's creature_template
-- overrides: walk pace, and the F-032 gathering columns.
--
-- ============================================================
-- F-032 gathering (co-located here, NOT in zep-professions)
-- ============================================================
-- 38224 is defined by zz_[AUTO,F-011]_10_creature_template.sql, whose DELETE+INSERT
-- emits no type_flags/skinloot/lootid and so resets them to 0 on every `zep goblin gen`.
-- The columns previously lived in zep-professions/zz_mobs_engineerable_[F-032].sql
-- (priority 999). That zpak is a different one, so the I-244 ordering cascade — which
-- only re-runs later-sorting files WITHIN a zpak — never re-applied it, and the fix was
-- silently wiped: the live row read type_flags 0, skinloot 0, lootid 0 while the
-- zep-professions file still looked correct. Nothing errored.
--
-- Co-locating here is the same resolution F-081 and F-174 already use for their
-- goblin-zone halves (zz_[I-243]_purge_whites.sql, generated straight into this zpak by
-- CUSTOM_ZPAK_RANGES in lib/item/whites.py; and zz_[I-271]_f174_skinning_compliance.sql).
-- This file sorts after the zz_[AUTO,*] INSERTs (I > A), so the in-zpak cascade re-applies
-- it on every regen with no cross-zpak machinery needed.
--
-- Values are unchanged from the zep-professions original:
--   type_flags 32768 = CREATURE_TYPE_FLAG_ENGINEER_LOOT (Mining/Engineering "skinning")
--   skinloot   100030 = F-032 mechanical tier-100030 gathering table
--   lootid     38224  = this creature's own creature_loot_template rows
--                       (84416 Defective Gear 100%, 84415 Flimsy Sprocket 20%)
--
-- ============================================================
-- Walk pace
-- ============================================================
--
-- Safe to tune freely ONLY because the authored locomotion figure now matches the art:
-- Mechachicken renders through its own model 900008, whose Walk/Run moveSpeed were
-- divided by the display's 15x scale (see build_mechachicken_m2.py and
-- dbc/[I-323]_creaturedisplayinfo.sql). Per I-318 Defect 11 the ground covered per cycle
-- is `1000ms * authored`, invariant at every speed, so lowering the speed slows the legs
-- and the body together and the feet stay locked. While an authored figure is wrong every
-- speed change trades one mismatch for another — that was I-318's unwinnable loop.
--
-- Confirmed in game as in sync at speed_walk 1.0; slowed 25% on Justin's direction.
--   speed_walk 1.0  -> 2.500 yd/s   (baseMoveSpeed[MOVE_WALK] 2.5, Unit.cpp:149)
--   speed_walk 0.75 -> 1.875 yd/s   <- this file
--
-- speed_run is deliberately NOT cut. The bird walks everywhere it is normally seen
-- (SAI id 3 WP_START has run = 0, and with no creature_template_movement row the wander
-- generator defaults to Walk), so run only applies while it is chasing a player in
-- combat — where 0.8571 (6.0 yd/s, just under player run) is what makes it a threat.
-- The stride stays locked at that speed too; only the cadence differs.
--
-- AUTO-owned row -> one consolidated UPDATE.
--
-- NOTE: `Creature::InitEntry` applies speeds at SPAWN. `.reload creature_template`
-- updates the template but never touches already-spawned creatures, so this must be
-- judged after a respawn or a worldserver restart (I-318 burned four passes on that).

UPDATE `creature_template` SET
  `speed_walk` = 0.75,
  `type_flags` = 32768,
  `skinloot`   = 100030,
  `lootid`     = 38224
WHERE entry = 38224;
