-- ============================================================
-- I-382  Lost Isles terrain-phase minimap tiles (F-196)
-- ============================================================
-- The terrain swap (WarcraftXL Phasing.cpp) serves phase ADTs from
-- World\Maps\LostIslesPhase1|2 while the client stays on Kalimdor, so the
-- minimap kept resolving "Kalimdor\mapX_YY" and drew the pre-destruction
-- island. Phasing.cpp now detours the minimap's tile-path builder (0x7F5240):
-- for a tile the active phase has, it looks up "<phaseDir>\mapX_YY.blp" in
-- this table instead. Tiles with no row here keep the base art.
--
-- Art: Whitemane 15595 art.MPQ World\Minimaps\LostIslesPhase1|2\mapX_Y.blp,
-- re-indexed from map-648 to map-1 tiles with the F-011 offset (+24, +1).
-- Proven from pixels: Cata base LostIsles\map28_29 correlates 0.88 with OA
-- KALIMDOR_52_30 (<=0.33 for every neighbour). dst stems are unique on
-- purpose (no "map51_29" collision with any other folder).
-- BLPs ship from zep-goblin-start mpq/source-assets/Textures/Minimap/
-- lostislesphase1|2/ (PATCH-Z).

DELETE FROM `md5translate` WHERE `src` IN (
  'LostIslesPhase1\\map51_29.blp',
  'LostIslesPhase1\\map51_30.blp',
  'LostIslesPhase1\\map51_31.blp',
  'LostIslesPhase1\\map52_29.blp',
  'LostIslesPhase1\\map52_30.blp',
  'LostIslesPhase1\\map52_31.blp',
  'LostIslesPhase1\\map53_29.blp',
  'LostIslesPhase1\\map53_30.blp',
  'LostIslesPhase1\\map53_31.blp',
  'LostIslesPhase1\\map54_29.blp',
  'LostIslesPhase1\\map54_30.blp',
  'LostIslesPhase1\\map54_31.blp',
  'LostIslesPhase2\\map51_31.blp'
);
INSERT INTO `md5translate` (`src`, `dst`, `dir`) VALUES
('LostIslesPhase1\\map51_29.blp', 'lostislesphase1\\lostislesphase1_51_29.blp', 'LostIslesPhase1'),
('LostIslesPhase1\\map51_30.blp', 'lostislesphase1\\lostislesphase1_51_30.blp', 'LostIslesPhase1'),
('LostIslesPhase1\\map51_31.blp', 'lostislesphase1\\lostislesphase1_51_31.blp', 'LostIslesPhase1'),
('LostIslesPhase1\\map52_29.blp', 'lostislesphase1\\lostislesphase1_52_29.blp', 'LostIslesPhase1'),
('LostIslesPhase1\\map52_30.blp', 'lostislesphase1\\lostislesphase1_52_30.blp', 'LostIslesPhase1'),
('LostIslesPhase1\\map52_31.blp', 'lostislesphase1\\lostislesphase1_52_31.blp', 'LostIslesPhase1'),
('LostIslesPhase1\\map53_29.blp', 'lostislesphase1\\lostislesphase1_53_29.blp', 'LostIslesPhase1'),
('LostIslesPhase1\\map53_30.blp', 'lostislesphase1\\lostislesphase1_53_30.blp', 'LostIslesPhase1'),
('LostIslesPhase1\\map53_31.blp', 'lostislesphase1\\lostislesphase1_53_31.blp', 'LostIslesPhase1'),
('LostIslesPhase1\\map54_29.blp', 'lostislesphase1\\lostislesphase1_54_29.blp', 'LostIslesPhase1'),
('LostIslesPhase1\\map54_30.blp', 'lostislesphase1\\lostislesphase1_54_30.blp', 'LostIslesPhase1'),
('LostIslesPhase1\\map54_31.blp', 'lostislesphase1\\lostislesphase1_54_31.blp', 'LostIslesPhase1'),
('LostIslesPhase2\\map51_31.blp', 'lostislesphase2\\lostislesphase2_51_31.blp', 'LostIslesPhase2');
