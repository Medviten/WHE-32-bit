-- I-348 "The Pride of Kezan" (quest 25066) — world-side half.
--   1. cone geometry + entry filter for the retargeted Machine Gun (73456)
--   2. continuous flight paths for Gnomeregan Stealth Fighter (39039)
-- The DBC half lives in `dbc/[I-348]_spell.sql`.

-- =====================================================================
-- 1. Machine Gun cone
-- =====================================================================
-- 73456 effect 0 now selects target 60 TARGET_UNIT_CONE_ENTRY. Two rows make
-- that work: `spell_cone` sets the width (without a row AC defaults to 60 deg,
-- which is wider than "straight ahead" should read), and the type-13 condition
-- is what TARGET_CHECK_ENTRY filters on — with no condition
-- `SelectImplicitConeTargets` has nothing to match and the burst hits nothing.
-- Same pattern as I-257's 66301 knockback. 73477 (Wild Weasel Rockets) and
-- 74958 already carry their own type-13 rows from the port; those are untouched.

DELETE FROM `spell_cone` WHERE ID = 73456;
INSERT INTO `spell_cone` SET
  `ID` = 73456,
  `ConeDegrees` = 50;

DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 13 AND SourceEntry = 73456;
INSERT INTO `conditions` SET
  `SourceTypeOrReferenceId` = 13,
  `SourceGroup` = 1,
  `SourceEntry` = 73456,
  `SourceId` = 0,
  `ElseGroup` = 0,
  `ConditionTypeOrReference` = 31,
  `ConditionTarget` = 0,
  `ConditionValue1` = 3,
  `ConditionValue2` = 39039,
  `ConditionValue3` = 0,
  `NegativeCondition` = 0,
  `Comment` = '[I-348] Machine Gun cone -> Gnomeregan Stealth Fighter only';

-- =====================================================================
-- 2. Stealth fighter flight paths
-- =====================================================================
-- SYMPTOM: the enemy planes fly a straight leg, stop dead in mid-air for
-- several seconds, then fly another leg.
--
-- ROOT CAUSE: the spawns ship MovementType 1 (random) with wander_distance 55.
-- `RandomMovementGenerator::_setRandomLocation` ends each leg with
--   ++_moveCount;
--   if (roll_chance_i((int32)_moveCount * 25 + 10))
--       _nextMoveTime.Reset(urand(4000, 8000));
-- so after every leg there is a 35% / 60% / 85% chance of a full 4-8 second
-- halt, and the legs themselves are straight lines between random points.
-- That generator cannot produce a flight pattern; the pause is not tunable
-- from data and the core is shared with every wandering mob in the world.
--
-- FIX: MovementType 2 with a per-spawn closed figure-8, all nodes
-- `smoothTransition` = 1 and `delay` = 0. WaypointMovementGenerator::StartMove
-- builds ONE catmullrom spline across the whole node list and, because no node
-- carries a delay and the path repeats, appends 3 wrap-around points for a
-- seamless loop, then calls init.SetFly() (39039 has
-- creature_template_movement.Flight = 1). Result is a continuous banked
-- figure-8 with no stop anywhere in the circuit.
--
-- GEOMETRY: Gerono lemniscate x = A cos t, y = B sin(2t)/2 (A = 35, B = 24, so
-- 70 x 24 yards, tighter than the 55-yard wander it replaces), rotated onto the
-- spawn's own orientation and centred on the spawn point, with a 12-yard climb
-- z = spawn_z + H(1 - cos t)/2 that tilts the two lobes so the plane banks up
-- and down instead of flying flat. z never drops below the spawn's own z, so
-- the path cannot be lower than a point the spawn generator already accepted.
-- Verified against the shipped heightmap (cli/lib/terrain_reader.py) over all
-- 16 nodes of all 29 spawns: minimum ground clearance 31.5 yd (guid 11002858),
-- median well over 80.
--
-- Derived from the LIVE spawn rows at apply time rather than from a guid list,
-- because `zz_[AUTO,F-011]_40_creature.sql` REPLACEs these rows and the
-- generator reassigns 11xxxxxx guids between runs (see the "never key an
-- override on a spawn guid" note). A regen therefore re-derives the paths
-- through the F-205 cascade instead of orphaning them.

SET @ENTRY := 39039;
SET @PBASE := 3903900;  -- waypoint_data band reserved for entry 39039 (29 in use)
SET @NPTS  := 16;
SET @RADX  := 35.0;
SET @RADY  := 24.0;
SET @CLIMB := 12.0;
SET @VEL   := 14.0;     -- yd/s; explicit so the path does not inherit
                        -- speed_flight 1.0 (7 yd/s), which crawls for an aircraft

DELETE FROM `waypoint_data` WHERE id BETWEEN @PBASE AND @PBASE + 999;

INSERT INTO `waypoint_data`
  (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`,
   `velocity`, `delay`, `smoothTransition`, `move_type`, `action`,
   `action_chance`, `wpguid`, `Comment`)
SELECT
  @PBASE + s.rn,
  n.k + 1,
  s.position_x
    + (@RADX * COS(2*PI()*n.k/@NPTS))         * COS(s.orientation)
    - (@RADY * SIN(4*PI()*n.k/@NPTS) / 2)     * SIN(s.orientation),
  s.position_y
    + (@RADX * COS(2*PI()*n.k/@NPTS))         * SIN(s.orientation)
    + (@RADY * SIN(4*PI()*n.k/@NPTS) / 2)     * COS(s.orientation),
  s.position_z + @CLIMB * (1 - COS(2*PI()*n.k/@NPTS)) / 2,
  NULL,
  @VEL,
  0,
  1,
  1,
  0,
  100,
  0,
  CONCAT('[I-348 stealth fighter] figure-8, spawn guid ', s.guid)
FROM (SELECT `guid`, `position_x`, `position_y`, `position_z`, `orientation`,
             ROW_NUMBER() OVER (ORDER BY `guid`) AS rn
        FROM creature WHERE `id` = @ENTRY) s
CROSS JOIN (SELECT 0 AS k UNION ALL SELECT  1 UNION ALL SELECT  2 UNION ALL SELECT  3
            UNION ALL SELECT  4 UNION ALL SELECT  5 UNION ALL SELECT  6 UNION ALL SELECT  7
            UNION ALL SELECT  8 UNION ALL SELECT  9 UNION ALL SELECT 10 UNION ALL SELECT 11
            UNION ALL SELECT 12 UNION ALL SELECT 13 UNION ALL SELECT 14 UNION ALL SELECT 15) n;

-- Point each spawn at its own path. A per-guid creature_addon row REPLACES the
-- template addon outright (Creature::GetCreatureAddon), so a row created here
-- has to carry 39039's template values or the spawn would silently lose its
-- bytes1 stand state; rows the generator already emitted keep theirs and only
-- take the path_id.
INSERT INTO `creature_addon`
  (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`,
   `visibilityDistanceType`, `auras`, `Comment`)
SELECT
  s.guid,
  @PBASE + s.rn,
  IFNULL(t.mount, 0),
  IFNULL(t.bytes1, 0),
  IFNULL(t.bytes2, 0),
  IFNULL(t.emote, 0),
  IFNULL(t.visibilityDistanceType, 0),
  IFNULL(t.auras, ''),
  '[I-348 stealth fighter] figure-8 path'
FROM (SELECT `guid`, ROW_NUMBER() OVER (ORDER BY `guid`) AS rn
        FROM creature WHERE `id` = @ENTRY) s
LEFT JOIN creature_template_addon t ON t.entry = @ENTRY
ON DUPLICATE KEY UPDATE `path_id` = VALUES(`path_id`);

UPDATE `creature` SET
  `MovementType` = 2,
  `wander_distance` = 0
WHERE `id` = @ENTRY;
