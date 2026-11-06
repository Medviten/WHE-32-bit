-- I-352 — repoint F-011 ported spells off the hijacked Cata SpellIcon ids, and retire
-- 66987's dangling periodic trigger. Rows are owned by `[AUTO,F-011]_spell.sql`
-- (DELETE + INSERT SET); this file loads after it and carries one consolidated UPDATE
-- per id. New icon rows: [I-352]_spellicon.sql.

-- ---- 66987 Pygmy Helmet ----
-- icon: Cata 4483 = INTERFACE\ICONS\inv_helmet_153; our 4483 is F-142's
-- icon_hots_arthas_frostmournehungers_off_d. -> 5818.
--
-- effect_3: 4.3.4 gives 66987 a third effect, APPLY_AURA 23 PERIODIC_TRIGGER_SPELL every
-- 1000ms firing 83641. 83641 has NO client data in 4.3.4 at all (absent from Whitemane's
-- Spell.dbc and from the wago 4.4 SpellEffect/Spell extracts) — a server-side hotfix id,
-- the same unportable class as the 1511xx mid-quest phase spells
-- ([[reference_donor_custom_spell_dangling_link]]). Ported verbatim it is a dangling
-- trigger: a per-second cast of a spell that does not exist, for every player wearing the
-- helmet. Its job — deciding when the disguise is on — is now done declaratively by
-- spell_area (sql/zz_[I-352]_pygmy_helmet_window.sql), so the effect is zeroed rather than
-- left ticking into nothing.
--
-- effect_2 (SPELL_EFFECT_QUEST_COMPLETE, misc 26902) is left as-ported: quest 26902 does
-- not exist here, so it is an inert no-op, and zeroing it would diverge for no gain.
UPDATE `spell` SET
  `spell_icon_id` = 5818,
  `effect_3` = 0,
  `effect_apply_aura_name_3` = 0,
  `effect_amplitude_3` = 0,
  `effect_die_sides_3` = 0,
  `effect_trigger_spell_3` = 0,
  `effect_implicit_target_a_3` = 0
WHERE `id` = 66987;

-- ---- the rest of the icon-collision sweep ----
UPDATE `spell` SET `spell_icon_id` = 5819 WHERE `id` = 73899;  -- Primal Strike
UPDATE `spell` SET `spell_icon_id` = 5820 WHERE `id` = 78990;  -- Restore Mana
UPDATE `spell` SET `spell_icon_id` = 5821 WHERE `id` = 78993;  -- Concentration
UPDATE `spell` SET `spell_icon_id` = 5822 WHERE `id` = 79469;  -- Flask of Steelskin
UPDATE `spell` SET `spell_icon_id` = 5823 WHERE `id` = 79470;  -- Flask of the Draconic Mind
UPDATE `spell` SET `spell_icon_id` = 5824 WHERE `id` = 79471;  -- Flask of the Winds
UPDATE `spell` SET `spell_icon_id` = 5825 WHERE `id` = 79472;  -- Flask of Titanic Strength
UPDATE `spell` SET `spell_icon_id` = 5826 WHERE `id` = 79476;  -- Volcanic Power
UPDATE `spell` SET `spell_icon_id` = 5827 WHERE `id` = 79633;  -- Tol'vir Agility
UPDATE `spell` SET `spell_icon_id` = 5828 WHERE `id` = 79634;  -- Golem's Strength

-- Cata icon is plain trade_engineering (placeholder); stock row 1 is that texture.
-- Both are internal bunny/control spells the player never sees on a bar, repointed only
-- so the audit above returns clean.
UPDATE `spell` SET `spell_icon_id` = 1 WHERE `id` = 89138;     -- Lightning Beam Bunny
UPDATE `spell` SET `spell_icon_id` = 1 WHERE `id` = 71917;     -- Pool Pony proximity control
