-- [I-238] Give idle hostile mobs (npcflag=0, MovementType=0) a random wander radius so they
-- don't stand motionless. Static NPCs (gossip/questgiver/trainer/vendor) stay put.
-- Override for the generated spawn files; loads after them (I > F).
-- PREFERRED long-term fix: set wander for idle hostiles in the spawn generator (migrate_creatures),
-- then retire this override.
--
-- Posed / corpse spawns are excluded (sliding-corpse regression, reported on Goblin
-- Survivor 38409 guid 11002046): a random-wander motion master drags the body across
-- the ground while it keeps its dead/kneeling/sitting pose. Neltharion stages those
-- three ways, so all three are checked:
--   * per-spawn `dynamicflags` 0x20 UNIT_DYNFLAG_DEAD
--   * a non-zero stand state (byte 0 of `bytes1`: 1 sit / 7 dead / 8 kneel / ...) on
--     either the per-guid `creature_addon` or the entry's `creature_template_addon`
--   * aura 29266 Permanent Feign Death, which lays the body down on its own even when
--     the stand state is 0 (gen unions template auras into the per-guid rows)
-- Dedicated corpse entries exist alongside their live twins and differ only in this
-- data: 35929 Poison Spitter (corpse) vs 35896 (live), 361760 Alliance Sailor (corpse)
-- vs 36176 (live).
-- ---------------------------------------------------------------------------
-- 0. Restore idle poses that a per-guid `creature_addon` silently cancelled.
--
-- `Creature::GetCreatureAddon()` (Creature.cpp:2730) returns the guid-keyed row
-- INSTEAD of the template row — the two are never merged. The gen's tdb434 overlay
-- emits a per-guid addon for pose/movement sampling and leaves `emote` at 0, so any
-- entry whose idle pose lives on `creature_template_addon.emote` loses it outright
-- for those spawns. Same shape as the aura clobber the gen already fixes by unioning
-- template auras into every per-guid row — `emote` was never included in that union.
--
-- Must run BEFORE the wander grant below, so the grant can see the restored pose and
-- skip it.
-- ---------------------------------------------------------------------------
UPDATE `creature_addon` ca
  JOIN creature cr ON cr.guid = ca.guid
  JOIN creature_template_addon cta ON cta.entry = cr.id
SET ca.emote  = IF(ca.emote  = 0, cta.emote,  ca.emote),
    ca.bytes1 = IF(ca.bytes1 = 0, cta.bytes1, ca.bytes1),
    ca.bytes2 = IF(ca.bytes2 = 0, cta.bytes2, ca.bytes2)
WHERE cr.guid BETWEEN 11000000 AND 11999999
  AND ((ca.emote  = 0 AND cta.emote  <> 0)
    OR (ca.bytes1 = 0 AND cta.bytes1 <> 0)
    OR (ca.bytes2 = 0 AND cta.bytes2 <> 0));

-- `bytes1` costs the most here: 133 spawns were standing upright with the entry's
-- stand state cancelled — 128 Poison Spitter (35929, a dedicated CORPSE entry, stand
-- state 7 DEAD), Dead Orc Scout 35837, and 4 Geargrinder Gizmo 36600 that should be
-- sitting (state 1). They were not sliding, because the wander grant below already
-- consults `cta.bytes1`; they were simply on their feet.
--
-- `mount` is deliberately NOT restored here: inheriting a mount display we do not ship
-- crashes the client (feedback_creature_display_crash_cascade). The generator applies
-- the shipped-display guard; SQL cannot.

UPDATE `creature` cr
  JOIN creature_template ct ON ct.entry = cr.id
  LEFT JOIN creature_addon ca ON ca.guid = cr.guid
  LEFT JOIN creature_template_addon cta ON cta.entry = cr.id
SET cr.MovementType = 1, cr.wander_distance = 5
WHERE cr.guid BETWEEN 11000000 AND 11003689
  AND ct.npcflag = 0
  AND cr.MovementType = 0
  AND cr.wander_distance = 0
  AND (cr.dynamicflags & 0x20) = 0
  AND (IFNULL(ca.bytes1, 0) & 0xFF) = 0
  AND (IFNULL(cta.bytes1, 0) & 0xFF) = 0
  AND CONCAT(' ', IFNULL(ca.auras, ''), ' ') NOT LIKE '% 29266 %'
  AND CONCAT(' ', IFNULL(cta.auras, ''), ' ') NOT LIKE '% 29266 %'
  -- Posed by EMOTE STATE, not by stand state. `creature_addon.emote` is written
  -- straight to UNIT_NPC_EMOTESTATE (Creature.cpp:2789), so a non-zero value is a
  -- persistent looping animation — EMOTE_STATE_USE_STANDING (69, working),
  -- EMOTE_STATE_READY_RIFLE (214), EMOTE_STATE_READY1H (333) and friends. Those
  -- NPCs stand at a job; walking them around plays the work animation on the move.
  -- The guid row wins outright when present, so test it exclusively, not merged.
  AND (CASE WHEN ca.guid IS NOT NULL THEN ca.emote ELSE IFNULL(cta.emote, 0) END) = 0;

-- Repair pass: park every posed/corpse spawn that already carries movement. Clears rows
-- this file granted before the exclusion above existed, and backstops the AUTO files —
-- the gen TDB-4.3.4 overlay used to hand wander 10 straight to kneeling Orc Survivors
-- 35882 / Alliance Paratrooper 39069. Gen now carries the matching `_posed()` guard in
-- cli/commands/goblin_gen/creatures.py, so those emit static at source; this statement
-- stays as the net for any spawn that slips through a future overlay change.
-- MovementType 2 (waypoint) is left alone: a scripted path is authored intent, not a
-- blanket grant, and nothing posed currently carries one.
UPDATE `creature` cr
  LEFT JOIN creature_addon ca ON ca.guid = cr.guid
  LEFT JOIN creature_template_addon cta ON cta.entry = cr.id
SET cr.MovementType = 0, cr.wander_distance = 0
WHERE (cr.guid BETWEEN 11000000 AND 11999999 OR cr.guid BETWEEN 12000000 AND 12999999)
  AND cr.MovementType <> 2
  AND (cr.MovementType <> 0 OR cr.wander_distance <> 0)
  AND ((cr.dynamicflags & 0x20)
    OR (IFNULL(ca.bytes1, 0) & 0xFF) <> 0
    OR (IFNULL(cta.bytes1, 0) & 0xFF) <> 0
    OR CONCAT(' ', IFNULL(ca.auras, ''), ' ') LIKE '% 29266 %'
    OR CONCAT(' ', IFNULL(cta.auras, ''), ' ') LIKE '% 29266 %');


-- ---------------------------------------------------------------------------
-- 3. Repair pass for emote-posed spawns granted before exclusion 1 existed.
--
-- Scoped to this file's own grant signature (MovementType 1 + wander_distance 5) so
-- it can only ever undo what this file did. Spawns carrying wander_distance 10 came
-- from the gen's tdb434 overlay — authored provenance, deliberately left alone.
--
-- Measured 2026-09-06 before the fix: 305 spawns across 20 entries were wandering
-- with a live emote state, including Orc Survivor 39064 (emote 69) and Orc Scout
-- 39068 (emote 214) in the Lost Isles camps, which is what surfaced this. Both are
-- MovementType 0 for 100% of their spawns in BOTH donors — the wander was ours.
-- ---------------------------------------------------------------------------
UPDATE `creature` cr
  LEFT JOIN creature_addon ca ON ca.guid = cr.guid
  LEFT JOIN creature_template_addon cta ON cta.entry = cr.id
SET cr.MovementType = 0, cr.wander_distance = 0
WHERE cr.guid BETWEEN 11000000 AND 11999999
  AND cr.MovementType = 1
  AND cr.wander_distance = 5
  AND (CASE WHEN ca.guid IS NOT NULL THEN ca.emote ELSE IFNULL(cta.emote, 0) END) <> 0;


-- ---------------------------------------------------------------------------
-- 4. Never grant wander to a creature whose script MOVES it (I-366).
--
-- Trade Prince Gallywix 39582 was granted MovementType 1 / wander 5 by this file and
-- spent his Final Confrontation RP scene strolling around, because he is npcflag 0,
-- has no emote and no stand state, so none of the exclusions above saw him. He is
-- MovementType 0 in BOTH donors.
--
-- The missing test is authored movement: an entry whose SmartAI runs
-- SMART_ACTION_ESCORT_START (53) or SMART_ACTION_MOVE_TO_POS (69) is driven by its
-- script, and a random-wander motion master fights that. Checked on BOTH script
-- sources -- source_type 0 (the creature's own SAI) and source_type 9 (its timed
-- actionlists, whose entryorguid is entry*100 + n, which is where Gallywix's
-- ESCORT_START actually lives and why an entry-only check missed him).
--
-- Scoped to this file's own grant signature so it can only undo what this file did.
-- ---------------------------------------------------------------------------
UPDATE `creature` cr
SET cr.MovementType = 0, cr.wander_distance = 0
WHERE cr.guid BETWEEN 11000000 AND 11999999
  AND cr.MovementType = 1
  AND cr.wander_distance = 5
  AND (cr.id IN (SELECT DISTINCT entryorguid FROM smart_scripts
                 WHERE source_type = 0 AND action_type IN (53, 69))
    OR cr.id IN (SELECT DISTINCT FLOOR(entryorguid / 100) FROM smart_scripts
                 WHERE source_type = 9 AND action_type IN (53, 69)));
