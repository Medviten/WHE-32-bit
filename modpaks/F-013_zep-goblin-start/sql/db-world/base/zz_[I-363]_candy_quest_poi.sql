-- =============================================================================
-- I-363  "What Kind of Name is Candy, Anyway?" (25244) — the map marker points
--        68 yards away from Candy Cane, so she cannot be found.
--
-- Objective: creature **39426 Candy Cane** x1, one spawn only.
--
-- The spawn is CORRECT and both donors agree on it to the centimetre:
--   Neltharion 190420 and tdb434 394764 both put her at (2063.53, 2591.80, 15.8374)
--   -> ours (1530.20, -10208.20) through the standard F-011 transform.
--   Terrain height there is 15.7546 against her z 15.8374, so she is on the ground,
--   not buried. No quest-invisibility aura, no despawn script, and phaseMask 50176
--   shares bit 32768 with the phase a player on this quest carries (32808), so the
--   phase test passes.
--
-- The POI is the outlier. The two donors DISAGREE, and gen ported the wrong one:
--   Neltharion blob 0: (2131, 2625)  -> ours (1598, -10175)  = 75 yd from Candy
--   tdb434     blob 0: (2064, 2592)  -> ours (1531, -10208)  =  1 yd from Candy
--                       (tdb434 row is VerifiedBuild 19831, i.e. a retail sniff)
--
-- Blobs 1 and 2 are the giver/turn-in and are fine; blob 2 is identical in both
-- donors. Only blob 0, the objective marker, is wrong.
--
-- Swept the rest rather than assuming: of 1145 Lost Isles / Kezan POI blobs, only
-- 12 objective points sit >40 yd from the nearest spawn of the creature that
-- objective names, and only this one is actually wrong —
--   * 25024 Repel the Paratroopers: an area objective with many blobs by design
--   * 25122 Morale Boost: ours and tdb434 agree exactly (both 107 yd; the target
--     has 5 spawns spread out)
--   * 24817 A Goblin in Shark's Clothing: ours is 83 yd, tdb434 would be 116 yd —
--     ours is BETTER, leave it
--   * 25066 The Pride of Kezan: a multi-blob polygon, most points 0-8 yd out
-- so this is a single bad donor row, not a systemic POI porting fault.
--
-- POI data is queried by the client on demand (SMSG_QUEST_POI_QUERY_RESPONSE), so a
-- worldserver restart is enough — no client patch needed.
-- =============================================================================

UPDATE `quest_poi_points` SET
  `X` = 1531,
  `Y` = -10208
WHERE `QuestID` = 25244 AND `Idx1` = 0 AND `Idx2` = 0;
