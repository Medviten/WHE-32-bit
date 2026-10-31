-- Venthyr racials of Aetheria's Kyrian/Venthyr package (kyrian-venthyr-20261027-1, from its server migrations; tools/races/aetheria_racials.py)
DELETE FROM `spell_script_names` WHERE `spell_id` IN (111200, 111203, 111206, 111207, 111209, 111210);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(111200, 'spell_venthyr_racial'),
(111200, 'spell_venthyr_crimson_feast'),
(111203, 'spell_venthyr_anima_hunger'),
(111206, 'spell_venthyr_racial'),
(111207, 'spell_venthyr_hover_height'),
(111209, 'spell_venthyr_racial'),
(111210, 'spell_venthyr_bat_form');
