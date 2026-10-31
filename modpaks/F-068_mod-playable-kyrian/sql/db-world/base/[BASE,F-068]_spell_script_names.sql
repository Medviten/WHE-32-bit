-- Kyrian racials of Aetheria's Kyrian/Venthyr package (kyrian-venthyr-20261027-1, from its server migrations; tools/races/aetheria_racials.py)
DELETE FROM `spell_script_names` WHERE `spell_id` IN (111100, 111101, 111110);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(111100, 'spell_kyrian_hover'),
(111101, 'spell_kyrian_hover_wings'),
(111110, 'spell_kyrian_ascendant_charge');
