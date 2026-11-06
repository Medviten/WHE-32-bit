-- =============================================================================
-- I-359  Every gen-shipped Lost Isles / Kezan gameobject rendered facing 0 rad
--
-- `rotation0..3` = 0,0,0,1 is the IDENTITY quaternion — and a perfectly valid UNIT
-- quaternion. ObjectMgr::LoadGameObjects (ObjectMgr.cpp:3064-3068) only rebuilds
-- the quaternion from `orientation` when the stored one is NON-unit, so an identity
-- quat is used verbatim and `orientation` is never consulted. The object draws at
-- 0 rad while the row claims another facing, and nothing is logged.
--
-- Neltharion ships 9420 such rows and gameobjects.py copied them verbatim, so 710
-- of our 1289 gen GO spawns were wrong. The visible error equals each spawn's own
-- orientation, which is why they looked like unrelated bugs — one valve 90 deg out,
-- another buried inside the machine it is bolted to at ~180 deg.
--
-- FIXED AT SOURCE in goblin_gen/gameobjects.py (rotation overlay): prefer a
-- position-matched tdb434 quaternion, derive sin/cos of orientation otherwise.
-- This file is the downstream repair so the live database is correct without a
-- regen, and it stays as a backstop afterwards — the next regen emits the same
-- values and every statement here becomes a no-op.
--
-- Split measured against tdb434 map 648 (F-011 transform, 1 yd match) for the 702
-- rows still broken after the valve and platform fixes:
--   389  flat in tdb434 AND agreeing with `orientation` to <0.5 deg -> derive
--   285  no tdb434 twin                                            -> derive
--    27  a genuine X/Y tilt in tdb434                              -> explicit
--     1  flat but disagreeing with `orientation` by 47 deg         -> explicit
--
-- So the blanket derive below is exactly right for 674 and would be WRONG for 28,
-- which are corrected after it. Writing 0,0,0,0 instead and letting the core's
-- non-unit fallback do the work would also render correctly, but logs an sql.sql
-- error for every row on every startup.
--
-- Keyed by ENTRY + rounded POSITION, never by guid: generator guids are reassigned
-- on every regen (feedback_never_key_overrides_on_spawn_guid — see I-276, where a
-- guid-keyed override drifted onto a frog). Verified unique: no two gen spawns of
-- the same entry share a rounded position, so each statement hits exactly one row.
-- =============================================================================

-- ---- 1. Derive the quaternion from `orientation` for every still-identity row ---
UPDATE `gameobject` SET
  `rotation0` = 0,
  `rotation1` = 0,
  `rotation2` = SIN(`orientation` / 2),
  `rotation3` = COS(`orientation` / 2)
WHERE `Comment` LIKE '[gen F-011%'
  AND `rotation0` = 0 AND `rotation1` = 0 AND `rotation2` = 0 AND `rotation3` = 1
  AND `orientation` <> 0;

-- ---- 2. The 28 spawns the derive cannot express, from the tdb434 sniff ---------
UPDATE `gameobject` SET
  `rotation0` = 0.021237,
  `rotation1` = -0.035510,
  `rotation2` = -0.986245,
  `rotation3` = 0.160027
WHERE `id` = 195694 AND ROUND(`position_x`,1) = 47.8 AND ROUND(`position_y`,1) = -9697.6;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.006349,
  `rotation1` = -0.011447,
  `rotation2` = -0.918718,
  `rotation3` = 0.394696
WHERE `id` = 196386 AND ROUND(`position_x`,1) = 13.6 AND ROUND(`position_y`,1) = -10103.3;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = -0.011992,
  `rotation1` = -0.006824,
  `rotation2` = -0.566414,
  `rotation3` = 0.824005
WHERE `id` = 196439 AND ROUND(`position_x`,1) = 345.3 AND ROUND(`position_y`,1) = -10058.8;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = -0.011543,
  `rotation1` = 0.020461,
  `rotation2` = 0.999480,
  `rotation3` = 0.022076
WHERE `id` = 201967 AND ROUND(`position_x`,1) = 1139.7 AND ROUND(`position_y`,1) = -11110.8;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = -0.039358,
  `rotation1` = -0.026047,
  `rotation2` = 0.189822,
  `rotation3` = 0.980683
WHERE `id` = 202486 AND ROUND(`position_x`,1) = 1059.2 AND ROUND(`position_y`,1) = -9876.0;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.025374,
  `rotation1` = 0.001827,
  `rotation2` = -0.999676,
  `rotation3` = 0.001092
WHERE `id` = 202494 AND ROUND(`position_x`,1) = 367.0 AND ROUND(`position_y`,1) = -9524.6;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.025374,
  `rotation1` = 0.001827,
  `rotation2` = -0.999676,
  `rotation3` = 0.001092
WHERE `id` = 202495 AND ROUND(`position_x`,1) = 347.5 AND ROUND(`position_y`,1) = -9482.3;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = -0.004122,
  `rotation1` = -0.007691,
  `rotation2` = -0.999962,
  `rotation3` = 0.000000
WHERE `id` = 202517 AND ROUND(`position_x`,1) = 1325.0 AND ROUND(`position_y`,1) = -9810.0;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = -0.059786,
  `rotation1` = 0.029459,
  `rotation2` = 0.209565,
  `rotation3` = 0.975520
WHERE `id` = 202525 AND ROUND(`position_x`,1) = 1507.3 AND ROUND(`position_y`,1) = -9929.7;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = -0.056592,
  `rotation1` = -0.040145,
  `rotation2` = -0.958528,
  `rotation3` = 0.276425
WHERE `id` = 202543 AND ROUND(`position_x`,1) = 405.5 AND ROUND(`position_y`,1) = -10460.0;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.000000,
  `rotation1` = 0.000000,
  `rotation2` = -0.939692,
  `rotation3` = 0.342021
WHERE `id` = 202554 AND ROUND(`position_x`,1) = 1378.5 AND ROUND(`position_y`,1) = -10971.7;   -- yaw disagrees with orientation by 47.0 deg

UPDATE `gameobject` SET
  `rotation0` = 0.016958,
  `rotation1` = 0.030490,
  `rotation2` = 0.998461,
  `rotation3` = 0.043115
WHERE `id` = 204134 AND ROUND(`position_x`,1) = 1053.4 AND ROUND(`position_y`,1) = -10072.8;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.107458,
  `rotation1` = 0.015529,
  `rotation2` = -0.994086,
  `rotation3` = 0.002043
WHERE `id` = 204151 AND ROUND(`position_x`,1) = 208.9 AND ROUND(`position_y`,1) = -11253.0;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = -0.016446,
  `rotation1` = 0.026093,
  `rotation2` = 0.999524,
  `rotation3` = 0.000000
WHERE `id` = 204584 AND ROUND(`position_x`,1) = 196.4 AND ROUND(`position_y`,1) = -11070.9;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = -0.075662,
  `rotation1` = 0.022590,
  `rotation2` = 0.992584,
  `rotation3` = 0.092420
WHERE `id` = 204977 AND ROUND(`position_x`,1) = 243.3 AND ROUND(`position_y`,1) = -11071.1;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = -0.061062,
  `rotation1` = 0.019353,
  `rotation2` = 0.996025,
  `rotation3` = 0.061895
WHERE `id` = 204978 AND ROUND(`position_x`,1) = 178.4 AND ROUND(`position_y`,1) = -11254.3;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.010357,
  `rotation1` = -0.048150,
  `rotation2` = -0.109368,
  `rotation3` = 0.992780
WHERE `id` = 205200 AND ROUND(`position_x`,1) = 231.6 AND ROUND(`position_y`,1) = -11128.4;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = -0.075662,
  `rotation1` = 0.022590,
  `rotation2` = 0.992584,
  `rotation3` = 0.092420
WHERE `id` = 205201 AND ROUND(`position_x`,1) = 243.3 AND ROUND(`position_y`,1) = -11071.1;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = -0.061062,
  `rotation1` = 0.019353,
  `rotation2` = 0.996025,
  `rotation3` = 0.061895
WHERE `id` = 205202 AND ROUND(`position_x`,1) = 178.4 AND ROUND(`position_y`,1) = -11254.3;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.107458,
  `rotation1` = 0.015529,
  `rotation2` = -0.994086,
  `rotation3` = 0.002043
WHERE `id` = 205203 AND ROUND(`position_x`,1) = 208.9 AND ROUND(`position_y`,1) = -11253.1;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.010357,
  `rotation1` = -0.048150,
  `rotation2` = -0.109368,
  `rotation3` = 0.992780
WHERE `id` = 205204 AND ROUND(`position_x`,1) = 231.6 AND ROUND(`position_y`,1) = -11128.4;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.055920,
  `rotation1` = -0.025869,
  `rotation2` = 0.966140,
  `rotation3` = 0.250555
WHERE `id` = 205500 AND ROUND(`position_x`,1) = 371.6 AND ROUND(`position_y`,1) = -10454.2;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.012991,
  `rotation1` = 0.000433,
  `rotation2` = 0.994886,
  `rotation3` = 0.100160
WHERE `id` = 205524 AND ROUND(`position_x`,1) = 1027.3 AND ROUND(`position_y`,1) = -10074.4;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.043770,
  `rotation1` = 0.035164,
  `rotation2` = -0.301621,
  `rotation3` = 0.951773
WHERE `id` = 206990 AND ROUND(`position_x`,1) = 926.6 AND ROUND(`position_y`,1) = -11034.3;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.053575,
  `rotation1` = 0.097334,
  `rotation2` = 0.042145,
  `rotation3` = 0.992915
WHERE `id` = 206991 AND ROUND(`position_x`,1) = 925.2 AND ROUND(`position_y`,1) = -11072.5;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.027946,
  `rotation1` = -0.002581,
  `rotation2` = 0.039346,
  `rotation3` = 0.998832
WHERE `id` = 206992 AND ROUND(`position_x`,1) = 1167.4 AND ROUND(`position_y`,1) = -11081.8;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.049816,
  `rotation1` = 0.040904,
  `rotation2` = 0.995917,
  `rotation3` = 0.063198
WHERE `id` = 206993 AND ROUND(`position_x`,1) = 722.2 AND ROUND(`position_y`,1) = -11285.1;   -- genuine X/Y tilt

UPDATE `gameobject` SET
  `rotation0` = 0.047744,
  `rotation1` = 0.052273,
  `rotation2` = 0.592566,
  `rotation3` = 0.802405
WHERE `id` = 206994 AND ROUND(`position_x`,1) = 759.4 AND ROUND(`position_y`,1) = -11257.0;   -- genuine X/Y tilt


-- ---- 3. Re-normalise quaternions the emitter rounded off the unit sphere ------
-- Separate defect, same issue. `_collect.py` `_esc()` wrote every float as %.4f,
-- and 4 decimals is not enough for a quaternion component: donor 0.716347/0.697745
-- was emitted as 0.7163/0.6977, whose squares sum to 0.99987 — outside AC's
-- `fabs(sum - 1.0f) >= 1e-5f` test (ObjectMgr.cpp:3064). The core then DISCARDS the
-- rotation, rebuilds it from `orientation` (flattening any real X/Y tilt) and logs
-- an sql.sql error for that row on every startup. 298 of 1289 gen spawns were
-- affected. Fixed at source by raising the formatter to %.6f.
--
-- Re-normalising here recovers a quaternion within ~5e-5 of the donor's, i.e. a
-- yaw error under 0.01 deg — visually identical, and it makes the rows legal now
-- without waiting for a regen. Guarded so it only touches rows that actually fail
-- the test, and skips any all-zero row (which the core legitimately treats as
-- "derive from orientation").
-- The length MUST be computed once in a derived table. MySQL evaluates a
-- multi-column SET left to right and later expressions see the ALREADY-UPDATED
-- columns, so dividing each component by an inline SQRT(...) of the row uses a
-- divisor that changes as it goes and leaves the quaternion still off the unit
-- sphere. Measured: the naive form fixed 217 of 298 rows and left 81 wrong.
UPDATE `gameobject` g
  JOIN (
    SELECT `guid`,
           SQRT(`rotation0`*`rotation0` + `rotation1`*`rotation1`
              + `rotation2`*`rotation2` + `rotation3`*`rotation3`) AS len
    FROM `gameobject`
    WHERE `Comment` LIKE '[gen F-011%'
      AND (`rotation0` <> 0 OR `rotation1` <> 0 OR `rotation2` <> 0 OR `rotation3` <> 0)
      AND ABS(`rotation0`*`rotation0` + `rotation1`*`rotation1`
            + `rotation2`*`rotation2` + `rotation3`*`rotation3` - 1) >= 0.00001
  ) t ON t.`guid` = g.`guid`
SET g.`rotation0` = g.`rotation0` / t.len,
    g.`rotation1` = g.`rotation1` / t.len,
    g.`rotation2` = g.`rotation2` / t.len,
    g.`rotation3` = g.`rotation3` / t.len
WHERE t.len > 0;
