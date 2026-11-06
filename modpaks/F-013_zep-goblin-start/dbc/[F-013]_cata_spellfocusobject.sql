-- spellfocusobject rows ported from Cataclysm 4.0.6a (build 13623) by tools/races/cata406_dbc_port.py,
-- for F-013 (see its readme). Regenerate them with it rather than editing them here.

-- 1648 Coach Crosscheck
DELETE FROM `spellfocusobject` WHERE `id` = 1648;
INSERT INTO `spellfocusobject` SET
  `id` = 1648,
  `name_enus` = 'Coach Crosscheck',
  `name_flags` = 16712190;
