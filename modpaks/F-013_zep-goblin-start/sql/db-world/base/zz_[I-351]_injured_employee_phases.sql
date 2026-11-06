-- I-351 - Priest quest 14009 "Healing the Wounded" is uncompletable in the late Kezan phases.
--
-- Quest 14009 needs 3 credits on Injured Employee (48305). Six are spawned, but the port
-- (faithful to Neltharion) splits them across two masks:
--   phaseMask 7175 = 1|2|4|1024|2048|4096  - 2 spawns
--   phaseMask 1031 = 1|2|4|1024            - 4 spawns
--
-- Kezan (zone 4737) phase_definitions all carry flags=1 (OVERWRITE), so the last matching
-- definition wins outright. A player who has turned in 14116 sits on mask 2048, and
-- 2048 & 1031 = 0 - only the two 7175 spawns are visible, one short of the objective.
-- Sister Goldskimmer (34692) has a 6144 spawn, so she still offers and accepts the quest
-- in that phase. The quest has no PrevQuestID and nothing gates it to the early chain.
--
-- Fix: give every 48305 spawn the 7175 mask its two siblings already have, so the full
-- set carries through the burning-city phases (2048/4096).
--
-- Scoped by ENTRY, not guid: the F-011 generator reassigns spawn guids between runs and a
-- guid-keyed override silently stops matching (I-318). Loads after
-- zz_[AUTO,F-011]_40_creature.sql ("[AUTO" sorts before "[I-") and re-applies on cascade.

UPDATE `creature` SET
  `phaseMask` = 7175
WHERE `id` = 48305;
