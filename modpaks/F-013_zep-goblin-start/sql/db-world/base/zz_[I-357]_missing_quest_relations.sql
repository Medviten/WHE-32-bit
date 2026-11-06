-- I-357 — F-011: quest-giver relations dropped by the port collector.
--
-- Symptom that found it: after turning in q25110 "Kaja'Cola Gives You IDEAS! (TM)"
-- to Assistant Greely (38124), her SAI makes the player cast 73648 "Resummon
-- Assistant Greely", which summons the FOLLOWER Greely (39199). She follows the
-- player around the Gallywix Labor Mine and offers nothing — the mine questline
-- dead-ends there with an empty quest log.
--
-- Root cause: cli/commands/goblin_gen/quests.py filters creature_queststarter /
-- creature_questender through `LI_CRE = set(scope["creatures"])`, and that fixture
-- is the SPAWN-driven sweep (`creature` rows in zone 4720/4737). 39199 is
-- summon-only — she exists solely as the effect-28 target of spell 73648 — so she
-- is not in the fixture and every relation row naming her was silently discarded.
-- creatures.py already closes exactly this hole for templates via
-- _summons.summoned_entries(), and quest_npcs.py already excludes the same set for
-- the same reason (I-285); the relation pass was never taught about it. The AUTO
-- file still DELETEs by quest id, so the rows are removed and never re-inserted:
--
--   zz_[AUTO,F-011]_45_creature_queststarter.sql:12  DELETE ... quest IN (... 25122,25123,25124,25125 ...)
--   zz_[AUTO,F-011]_46_creature_questender.sql:12    (same list)
--
-- Two adjacent breaks share the cause and are fixed here:
--   * 36608 Doc Zapnozzle / q14239 "Don't Go Into the Light!" — he IS spawned
--     (guid 11900002) but is absent from item_scope.json's 195-entry creature list,
--     so the same filter dropped both his rows and the quest has no giver at all.
--   * gameobject_queststarter / gameobject_questender are not emitted by the
--     collector AT ALL (no entry in _collect.py's table registry), so GO 202613
--     "Platform Control Panel" lost the q25204 turn-in and the q25207 pickup.
--
-- Audit method: donor creature_questrelation / creature_involvedrelation /
-- gameobject_questrelation / gameobject_involvedrelation restricted to the 82
-- quest ids in the AUTO DELETE list, diffed against live. 10 rows missing, all
-- listed below. NOT fixed here: q25266 "Warchief's Emissary" has no turn-in
-- because its donor ender is 39609 Kor'kron Loyalist, an Orgrimmar NPC that has
-- no creature_template on our side — that is a zone hand-off gap, not this one.
-- Also left alone: q24860, q24935/24936, q25225, q25231, q25903 have no relation
-- rows in the DONOR either.
--
-- The generator is fixed at source in the same change (quests.py relation filter +
-- GO relation emission); this file is the data fix so the chain is playable now,
-- and it is a superset-safe no-op once a regen carries the rows itself.

-- ---- Assistant Greely (39199), the summoned mine escort ----
-- Donor: creature_questrelation + creature_involvedrelation both name 39199 for
-- 25122/25123/25124; 25125 she starts and the Mine Cart (39341) ends.
-- All three of 25122/25123/25124 are offered at once: their ExclusiveGroup is
-- NEGATIVE (-25122), and AC's SatisfyQuestExclusiveGroup returns true immediately
-- for any group <= 0 (PlayerQuest.cpp:1210), so it gates nothing on taking.
DELETE FROM `creature_queststarter` WHERE (id, quest) IN ((39199,25122),(39199,25123),(39199,25124),(39199,25125));
INSERT INTO `creature_queststarter` (id, quest) VALUES
  (39199, 25122),   -- Morale Boost
  (39199, 25123),   -- Throw It On the Ground!
  (39199, 25124),   -- Brute Brutality
  (39199, 25125);   -- Light at the End of the Tunnel

DELETE FROM `creature_questender` WHERE (id, quest) IN ((39199,25122),(39199,25123),(39199,25124));
INSERT INTO `creature_questender` (id, quest) VALUES
  (39199, 25122),
  (39199, 25123),
  (39199, 25124);
-- 25125 is ended by 39341 Mine Cart, which the AUTO file already carries.

-- ---- Doc Zapnozzle (36608), Kezan ----
DELETE FROM `creature_queststarter` WHERE (id, quest) IN ((36608,14239));
INSERT INTO `creature_queststarter` (id, quest) VALUES (36608, 14239);

DELETE FROM `creature_questender` WHERE (id, quest) IN ((36608,14239));
INSERT INTO `creature_questender` (id, quest) VALUES (36608, 14239);

-- ---- Platform Control Panel (GO 202613), the oil rig ----
-- type 2 = GAMEOBJECT_TYPE_QUESTGIVER, spawned at guid 6000623 (map 1, phase 50176).
DELETE FROM `gameobject_queststarter` WHERE (id, quest) IN ((202613,25207));
INSERT INTO `gameobject_queststarter` (id, quest) VALUES (202613, 25207);   -- Good-bye, Sweet Oil

DELETE FROM `gameobject_questender` WHERE (id, quest) IN ((202613,25204));
INSERT INTO `gameobject_questender` (id, quest) VALUES (202613, 25204);     -- Release the Valves
