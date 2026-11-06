-- =============================================================================
-- I-362  "Escape Velocity" (25214) — the launched goblins pop up and drop straight
--        back down instead of rocketing away.
--
-- NOT a dropped port. Our SAI for 39456 and actionlist 3945600 is byte-identical
-- to Neltharion's; tdb434 has no script for this creature at all. The donor script
-- simply does not produce the retail look on AzerothCore, for two compounding
-- reasons in the core:
--
-- 1. DEGENERATE DIRECTION. Actionlist step 4 casts stock 11027 "Knockback 500"
--    with SAI target SELF, so caster == target. Spell::EffectKnockBack takes the
--    push origin from `m_caster->GetPosition()` (SpellEffects.cpp), giving a
--    zero-length caster->target vector. For a CREATURE the path is
--    Unit::KnockbackFrom -> MotionMaster::MoveKnockbackFrom, which computes
--    `GetRelativeAngle(srcX, srcY) + M_PI`; GetAngle on its own position is
--    atan2(0,0) = 0, so the angle collapses to -orientation + PI, and
--    MovePositionToFirstCollision then adds orientation straight back
--    (Object.cpp) — every goblin is launched at exactly PI, due west, regardless
--    of facing. Note Position::GetSinCos DOES guard this degenerate case with a
--    random direction, but that branch is only reached on the PLAYER path.
--
-- 2. COLLISION-CLAMPED ARC. 11027 is MiscValue 500 / damage 500 -> speedXY and
--    speedZ both 50, i.e. a ~259 yard, ~65 yard high, ~5.2 second arc. But
--    MoveKnockbackFrom raycasts that distance through
--    MovePositionToFirstCollision and keeps the destination ON THE GROUND. In a
--    camp full of structures the ray stops after a few yards, and because the
--    spline's duration is distance/speed, the 65-yard parabola is compressed into
--    a fraction of a second. That is precisely "up and right back down".
--
--    Even uncompressed it could not work: the actionlist force-despawns 2000ms
--    later, less than half the arc.
--
-- Fix: stop trying to express a rocket launch as a ballistic knockback. Give them
-- flight and move them straight up.
--   * SET_FLY (60) fly=1, speed=2500 (SetSpeed MOVE_RUN 25.0, param/100),
--     disableGravity=1 — without gravity off they are pulled back down mid-move.
--   * MOVE_TO_POS (69) with target SELF: for any target type other than
--     SMART_TARGET_POSITION the action treats target_x/y/z as OFFSETS from the
--     target's own position (SmartScript.cpp, "Can use target floats as offset"),
--     so z = +80 is a vertical climb from wherever that goblin stands. No
--     per-spawn coordinates needed for the 40 spawns.
--     disableForceDestination = 0 -> destination is forced, so pathfinding cannot
--     refuse the climb.
--   * FORCE_DESPAWN pushed to 4000ms: 80 yards at 25 yd/s is ~3.2s, so they leave
--     view under their own power before the row is removed.
--
-- The cage and rocket visuals are unaffected; see [I-362]_spellvisualeffectname.sql
-- for the missing cage model, which is the other half of this issue.
-- =============================================================================

DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryorguid` = 3945600 AND `id` IN (4, 5, 6);

INSERT INTO `smart_scripts` SET
  `entryorguid` = 3945600, `source_type` = 9, `id` = 4, `link` = 0,
  `event_type` = 0, `event_phase_mask` = 0, `event_chance` = 100, `event_flags` = 0,
  `event_param1` = 3000, `event_param2` = 3000, `event_param3` = 0, `event_param4` = 0,
  `event_param5` = 0, `event_param6` = 0,
  `action_type` = 60, `action_param1` = 1, `action_param2` = 2500, `action_param3` = 1,
  `action_param4` = 0, `action_param5` = 0, `action_param6` = 0,
  `target_type` = 1, `target_param1` = 0, `target_param2` = 0, `target_param3` = 0, `target_param4` = 0,
  `target_x` = 0, `target_y` = 0, `target_z` = 0, `target_o` = 0,
  `comment` = 'Captured Goblin - launch: enable flight, run speed 25, gravity off';

INSERT INTO `smart_scripts` SET
  `entryorguid` = 3945600, `source_type` = 9, `id` = 5, `link` = 0,
  `event_type` = 0, `event_phase_mask` = 0, `event_chance` = 100, `event_flags` = 0,
  `event_param1` = 0, `event_param2` = 0, `event_param3` = 0, `event_param4` = 0,
  `event_param5` = 0, `event_param6` = 0,
  `action_type` = 69, `action_param1` = 1, `action_param2` = 0, `action_param3` = 0,
  `action_param4` = 0, `action_param5` = 0, `action_param6` = 0,
  `target_type` = 1, `target_param1` = 0, `target_param2` = 0, `target_param3` = 0, `target_param4` = 0,
  `target_x` = 0, `target_y` = 0, `target_z` = 80, `target_o` = 0,
  `comment` = 'Captured Goblin - launch: climb 80y straight up (target floats are offsets)';

INSERT INTO `smart_scripts` SET
  `entryorguid` = 3945600, `source_type` = 9, `id` = 6, `link` = 0,
  `event_type` = 0, `event_phase_mask` = 0, `event_chance` = 100, `event_flags` = 0,
  `event_param1` = 0, `event_param2` = 0, `event_param3` = 0, `event_param4` = 0,
  `event_param5` = 0, `event_param6` = 0,
  `action_type` = 41, `action_param1` = 4000, `action_param2` = 0, `action_param3` = 0,
  `action_param4` = 0, `action_param5` = 0, `action_param6` = 0,
  `target_type` = 1, `target_param1` = 0, `target_param2` = 0, `target_param3` = 0, `target_param4` = 0,
  `target_x` = 0, `target_y` = 0, `target_z` = 0, `target_o` = 0,
  `comment` = 'Captured Goblin - despawn 4s after launch, once the climb has played';
