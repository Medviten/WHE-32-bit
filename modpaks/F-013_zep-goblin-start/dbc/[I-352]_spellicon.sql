-- I-352 — SpellIcon rows for F-011 ported spells whose Cata icon id is occupied here.
--
-- SYSTEMIC, found via the Pygmy Helmet (66987, wrong icon reported in game):
-- the F-011 gen carries Cata `spell_icon_id` VERBATIM (same as I-309), but our custom
-- macro-icon pack F-142 (`patch-custom-icons/dbc/[F-142]_spellicon.sql`) allocated its
-- 1359 rows starting at 4331 and running solid to 5726 — straight through the Cata
-- SpellIcon id range (4.3.4 SpellIcon.dbc: 4634 rows, max id 5924; 1128 of them fall
-- inside F-142's block). Where the two overlap the ported spell silently renders whatever
-- Heroes-of-the-Storm icon F-142 put on that id.
--
-- I-309 closed the "no row at all" half of this by porting Cata rows AT the Cata ids; that
-- route is unavailable from 4331 up, because F-142 owns those ids and our own custom spells
-- reference them. So: add the textures as NEW rows in the custom block (5818+, continuing
-- past I-261's 5815-5817) and repoint the ported spells at them ([I-352]_spell.sql).
--
-- Audit that produced this list (13 ported spells, run after any future port wave):
--   compare each `[AUTO,F-011]_spell.sql` spell's `spell_icon_id` against the name in
--   4.3.4 SpellIcon.dbc (Zeppelin-Tools/whitemane-15595/extracted/DBFilesClient/) and
--   flag every row where our `spellicon.name` disagrees.
-- 89138 and 71917 are not listed here: their Cata icon is plain `trade_engineering`
-- (Blizzard's placeholder), which already exists as stock row 1.
--
-- Textures: INV_Helmet_153 ships stock (Zeppelin-Tools/WoW Spell Editor/Interface/Icons/).
-- The nine potion/flask BLPs already ship in this zpak's mpq/source-assets/Interface/Icons/.
-- Spell_Shaman_primalstrike is Cata-only and is added alongside this file.
DELETE FROM `spellicon` WHERE id BETWEEN 5818 AND 5828;
INSERT INTO `spellicon` (`id`, `name`) VALUES
  (5818, 'Interface\\Icons\\INV_Helmet_153'),              -- 66987 Pygmy Helmet (Cata icon 4483)
  (5819, 'Interface\\Icons\\Spell_Shaman_PrimalStrike'),   -- 73899 Primal Strike (Cata 4615)
  (5820, 'Interface\\Icons\\INV_Misc_PotionSetC'),         -- 78990 Restore Mana (Cata 5359)
  (5821, 'Interface\\Icons\\INV_PotionC_3'),               -- 78993 Concentration (Cata 5238)
  (5822, 'Interface\\Icons\\INV_PotionE_1'),               -- 79469 Flask of Steelskin (Cata 5246)
  (5823, 'Interface\\Icons\\INV_PotionE_5'),               -- 79470 Flask of the Draconic Mind (Cata 5249)
  (5824, 'Interface\\Icons\\INV_PotionE_2'),               -- 79471 Flask of the Winds (Cata 5247)
  (5825, 'Interface\\Icons\\INV_PotionE_6'),               -- 79472 Flask of Titanic Strength (Cata 5248)
  (5826, 'Interface\\Icons\\INV_PotionD_3'),               -- 79476 Volcanic Power (Cata 5242)
  (5827, 'Interface\\Icons\\INV_PotionD_4'),               -- 79633 Tol'vir Agility (Cata 5243)
  (5828, 'Interface\\Icons\\INV_PotionD_1');               -- 79634 Golem's Strength (Cata 5240)
