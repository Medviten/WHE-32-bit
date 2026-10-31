-- Add Alliance defaults only to races which currently have no
-- player_totem_model entries at all.
-- Side and playability come from ChrRaces (playable: no 0x01 flag, as in the core's RaceMgr, and `alliance` 0 is
-- Alliance, 1 Horde) rather than @AllianceMask/@HordeMask, which only hold races 1-64.
INSERT INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`)
SELECT
    t.`TotemID`,
    r.`race`,
    t.`ModelID`
FROM (
    SELECT 1 AS `TotemID`, @AllianceFireTotem AS `ModelID`
    UNION ALL SELECT 2, @AllianceEarthTotem
    UNION ALL SELECT 3, @AllianceWaterTotem
    UNION ALL SELECT 4, @AllianceAirTotem
) AS t
CROSS JOIN (
    SELECT DISTINCT `race`
    FROM `dbc_db`.`charbaseinfo`
    WHERE `race` IS NOT NULL
) AS r
WHERE EXISTS (
      SELECT 1
      FROM `dbc_db`.`chrraces` c
      WHERE c.`id` = r.`race`
        AND (c.`flags` & 1) = 0
        AND c.`alliance` = 0
  )
  AND NOT EXISTS (
      SELECT 1
      FROM `player_totem_model` ptm
      WHERE ptm.`RaceID` = r.`race`
  );


-- Horde defaults
INSERT INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`)
SELECT
    t.`TotemID`,
    r.`race`,
    t.`ModelID`
FROM (
    SELECT 1 AS `TotemID`, @HordeFireTotem AS `ModelID`
    UNION ALL SELECT 2, @HordeEarthTotem
    UNION ALL SELECT 3, @HordeWaterTotem
    UNION ALL SELECT 4, @HordeAirTotem
) AS t
CROSS JOIN (
    SELECT DISTINCT `race`
    FROM `dbc_db`.`charbaseinfo`
    WHERE `race` IS NOT NULL
) AS r
WHERE EXISTS (
      SELECT 1
      FROM `dbc_db`.`chrraces` c
      WHERE c.`id` = r.`race`
        AND (c.`flags` & 1) = 0
        AND c.`alliance` = 1
  )
  AND NOT EXISTS (
      SELECT 1
      FROM `player_totem_model` ptm
      WHERE ptm.`RaceID` = r.`race`
  );