-- I-348 "The Pride of Kezan" (quest 25066) — machine gun aiming + firing visual.
--
-- SYMPTOM (reported in-game): the Pride of Kezan's Machine Gun puts a small
-- green ground reticle on the terrain instead of firing where the plane is
-- pointed, and nothing is drawn when it fires — no muzzle flash, no tracer.
--
-- ROOT CAUSE 1 (aiming). 73456 shipped from the Cata port as a TRAJECTORY
-- spell: `targets` = 0x40 TARGET_FLAG_DEST_LOCATION, effect 32
-- SPELL_EFFECT_TRIGGER_MISSILE, implicit target 89 TARGET_DEST_TRAJ, speed
-- 1000. WotLK draws the aim arc for a trajectory spell from
-- `spell.spell_missile_id` -> SpellMissile.dbc; Cata keeps missile data outside
-- Spell.dbc so every ported trajectory spell arrives with 0 and the client
-- falls back to the plain ground reticle (same column as I-248 / I-337, see the
-- trajectory-arc note). Aiming a ground reticle at aircraft is unusable even
-- with the arc restored, so this is retargeted rather than repaired: fire
-- straight ahead, hit whatever stealth fighter is in the nose cone.
--
-- ROOT CAUSE 2 (no visual). SpellVisual 15469 (73456) and 2519 (74958) both
-- carry `has_missile` = 0 / `missile_model` = 0, and 15469's cast kit 14313 has
-- every effect column zeroed — it is sound 1148 and nothing else. The port kept
-- the row and dropped its content. Stock 3.3.5a SpellVisual **7019** (43800 /
-- 71593 "Machine Gun") is the same gun family and plays the SAME sound 1148 in
-- its cast kit 6250, plus base_effect 213 (muzzle), missile model 523
-- "Shot: Fire Missile" (Spells\FireShot_Missile.mdx) and impact kit 133. Moving
-- the tracer onto the per-bullet spell means one visible round per fighter hit.
--
-- SHAPE — this is the stock WotLK machine-gun shape (43799 -> 43800,
-- 49981 -> 49982), with cone selection instead of a channel target:
--   73456 (bar button, 0.5s cooldown) instant self-cast, no target flags;
--         effect 64 TRIGGER_SPELL over target 60 TARGET_UNIT_CONE_ENTRY,
--         radius index 11 = 45yd, narrowed to entry 39039 by a type-13
--         condition, cone width 50 deg via `spell_cone` (world SQL).
--   74958 (the bullet) single target 6 TARGET_UNIT_TARGET_ENEMY, speed 50 so
--         the tracer travels, 437 damage. Kept as the spell that lands because
--         39039's SmartAI event 8 SPELLHIT is keyed on 74958 (-> 73490 smoke).
-- Cone selection is 2D yaw (Spell.cpp `isInFront`), which is correct here: a
-- vehicle's orientation carries no pitch, so a 3D cone would be unaimable.
--
-- Ships in PATCH-Z; server side needs a worldserver restart only.

-- ---- 73456 Machine Gun: bar button, forward cone, no reticle ----
-- AUTO-owned row ([AUTO,F-011]_spell.sql) -> one consolidated UPDATE.
UPDATE `spell` SET
  `targets` = 0,
  `speed` = 0,
  `effect_1` = 64,
  `effect_implicit_target_a_1` = 60,
  `effect_implicit_target_b_1` = 0,
  `effect_radius_index_1` = 11,
  `effect_base_points_1` = 0,
  `effect_die_sides_1` = 0,
  `effect_trigger_spell_1` = 74958,
  `spell_desc_enus` = 'Fire the machine guns straight ahead, hitting every Gnomeregan Stealth Fighter in front of your plane for $74958s1 damage.'
WHERE id = 73456;

-- ---- 74958 Machine Gun: the bullet that lands on each fighter ----
-- AUTO-owned row -> one consolidated UPDATE.
-- range_index 13 (Anywhere) is deliberately left alone: the cone has already
-- picked the target, and a finite range here would only add a fizzle case.
UPDATE `spell` SET
  `targets` = 0,
  `speed` = 50,
  `spell_visual_1` = 7019,
  `effect_implicit_target_a_1` = 6,
  `effect_implicit_target_b_1` = 0,
  `effect_radius_index_1` = 0
WHERE id = 74958;
