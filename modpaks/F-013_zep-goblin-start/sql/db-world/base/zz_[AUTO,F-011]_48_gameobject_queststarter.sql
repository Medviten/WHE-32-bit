-- ============================================================
-- AUTO-GENERATED FILE -- DO NOT EDIT BY HAND.
-- Produced by `zep goblin gen` (F-011 translation layer).
-- Any manual edit here is overwritten the next time gen runs.
--   * To change this output: edit the gen emitter or a fixture.
--   * For a one-off manual fix: add a separate zz_[I-xxx]_*.sql file
--     (it loads after these rows and overrides the ones it needs).
-- ============================================================

-- F-011 gameobject_queststarter (one file per table; rows carry final state)

DELETE FROM `gameobject_queststarter` WHERE quest IN (14001,14014,14019,14021,14031,14233,14234,14235,14236,14237,14238,14239,14240,14241,14242,14243,14244,14245,14248,14303,14326,14445,14473,14474,24671,24741,24744,24816,24817,24856,24858,24859,24860,24864,24868,24897,24901,24924,24925,24929,24935,24936,24937,24940,24942,24945,24946,24952,24954,24958,25023,25024,25058,25066,25093,25098,25099,25100,25109,25110,25122,25123,25124,25125,25184,25200,25201,25202,25203,25204,25207,25213,25214,25225,25231,25243,25244,25251,25265,25266,25903,27139);

INSERT INTO `gameobject_queststarter` (`id`, `quest`) VALUES
  (202613, 25207);

