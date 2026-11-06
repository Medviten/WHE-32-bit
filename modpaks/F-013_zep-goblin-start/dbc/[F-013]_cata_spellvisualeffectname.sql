-- spellvisualeffectname rows ported from Cataclysm 4.0.6a (build 13623) by tools/races/cata406_dbc_port.py,
-- for F-013 (see its readme). Regenerate them with it rather than editing them here.

-- 6246 world\generic\passivedoodads\eastereggs\easteregg05.mdx
DELETE FROM `spellvisualeffectname` WHERE `id` = 6246;
INSERT INTO `spellvisualeffectname` SET
  `id` = 6246,
  `name` = 'Missile: EasterEgg05',
  `file_name` = 'world\\generic\\passivedoodads\\eastereggs\\easteregg05.mdx',
  `area_effect_size` = 1,
  `scale` = 0.7,
  `min_allowed_scale` = 0.01,
  `max_allowed_scale` = 100;
