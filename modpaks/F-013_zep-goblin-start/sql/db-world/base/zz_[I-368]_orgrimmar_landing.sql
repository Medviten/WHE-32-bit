-- =============================================================================
-- I-368  "Warchief's Emissary" drops the player in the sea off Durotar
--
-- Spell **74029 "Warchief's Emissary: Teleport & Bind to Orgrimmar"** is what moves
-- the player off the Lost Isles at the end of the goblin start. Its effects are
-- 11 BIND (EffectIndex 0), 164, and 5 TELEPORT_UNITS (EffectIndex 2), and BOTH
-- target rows pointed at (1468.8, -5012.29, 11.77).
--
-- That is **Bladefist Bay** — a dock CATACLYSM built for the goblin arrival. In
-- 3.3.5a there is nothing there: `zep world terrain height 1 -- 1468.8 -5012.3`
-- returns **-25.62**, i.e. 25 yards under the sea, which is exactly where the
-- player ended up. The quest POI had the same problem at (1412, -5016), terrain
-- **-12.41**, also underwater.
--
-- There is no WotLK dock to land at, so the ship beaches instead. Shoreline sampled
-- along the Durotar coast; (1345, -4945) reads **6.55** — dry sand at the water's
-- edge, and 583 yards from Overlord Runthak, so it walks naturally into Orgrimmar.
-- Orientation 1.1786 rad faces the player up the coast toward the city.
--
-- The two effects are split, which the single retail position conflated:
--   EffectIndex 2 TELEPORT -> the beach, because you arrive by sea
--   EffectIndex 0 BIND     -> Orgrimmar proper (game_tele "Orgrimmar",
--                             1629.8, -4373.6, 31.6), because the spell is named
--                             "Bind to Orgrimmar" and a hearthstone set to an empty
--                             stretch of beach is useless
-- =============================================================================

-- The TELEPORT (EffectIndex 2) used to be set here, to a beach at
-- (1345, -4945), because the donor coordinate landed underwater. F-209 builds
-- the Bladefist Bay dock the donor coordinate was always standing on and
-- restores it, so that UPDATE now lives in
-- zz_[F-209]_arrival_lands_on_the_dock.sql and is deliberately not repeated
-- here - one owner per row.

UPDATE `spell_target_position` SET
  `PositionX` = 1629.8, `PositionY` = -4373.6, `PositionZ` = 31.6, `Orientation` = 3.7
WHERE `ID` = 74029 AND `EffectIndex` = 0;

-- The POI still pointed at the sunken Cata dock. Move it onto Runthak, who now ends
-- the quest (I-367). His spawn is (1568.0, -4405.9, 8.4).
UPDATE `quest_poi_points` SET
  `X` = 1568, `Y` = -4406
WHERE `QuestID` = 25266;
