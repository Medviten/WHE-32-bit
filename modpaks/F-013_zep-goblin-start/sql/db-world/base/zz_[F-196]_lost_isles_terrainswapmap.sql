-- ============================================================
-- F-196 - carry the donor terrainswapmap / originmap onto phase_definitions.
--
-- These rows are INSERTed by zz_[AUTO,F-194]_90_phase_definitions.sql, which historically
-- zeroed both columns ("terrain swaps deferred"). The gen emitter (goblin_gen/phase.py) now
-- carries them through from the Neltharion dump, so after the next `zep goblin gen` the AUTO
-- file emits these values itself and this file becomes a redundant no-op. It exists so the
-- data lands WITHOUT forcing a full regen -- the AUTO header sanctions exactly this pattern
-- (a later zz_ file overriding the rows it needs). Alphabetically '[F-196]' > '[AUTO,...]',
-- so this applies after the INSERT.
--
-- Both columns are INERT server-side: ObjectMgr loads them into PhaseDefinition, and
-- PhaseMgr explicitly ignores them (PhaseMgr.h "deferred ... ignored here"). Nothing in the
-- core acts on these values -- they are read by F-196's terrain-swap driver as its single
-- source of truth for which child map a phasemask wants.
--
-- Map ids (verified against Whitemane DBFilesClient/Map.dbc):
--   648 = LostIsles        base island
--   659 = LostIslesPhase1  the island destruction (12 tiles) -- burning, lava, volcano smoke
--   661 = LostIslesPhase2  the Town-In-A-Box town (1 tile, 27_30 -> map-1 51_31)
--
-- NOTE the ordering trap: 661 (Phase2, the town) comes BEFORE 659 (Phase1, the destruction)
-- in the questing sequence. The donor's own originmap column proves it -- entries 11-18 have
-- originmap 661, i.e. the player was on the town terrain before the island burns. Do not
-- assume Phase1 precedes Phase2.
-- ============================================================

-- Lost Isles (4720), entries 1-4: intact island, no swap.
UPDATE `phase_definitions` SET originmap = 648, terrainswapmap = 0
  WHERE zoneId = 4720 AND entry IN (1, 2, 3, 4);

-- Lost Isles (4720), entries 5-10: phasemask 2048 / 4096 / 8192 -> the town.
UPDATE `phase_definitions` SET originmap = 648, terrainswapmap = 661
  WHERE zoneId = 4720 AND entry IN (5, 6, 7, 8, 9, 10);

-- Lost Isles (4720), entries 11-18: phasemask 32768 / 16384 / 16392 / 32776 / 32808 / 1024
-- -> the burning island. originmap 661: these follow on from the town terrain.
UPDATE `phase_definitions` SET originmap = 661, terrainswapmap = 659
  WHERE zoneId = 4720 AND entry IN (11, 12, 13, 14, 15, 16, 17, 18);

-- Kezan (4737): the donor ships no terrain swap for any of its 4 entries.
UPDATE `phase_definitions` SET originmap = 648, terrainswapmap = 0
  WHERE zoneId = 4737 AND entry IN (1, 2, 3, 4);
