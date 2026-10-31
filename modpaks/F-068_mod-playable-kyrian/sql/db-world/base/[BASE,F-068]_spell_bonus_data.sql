-- Kyrian racials of Aetheria's Kyrian/Venthyr package (kyrian-venthyr-20261027-1, from its server migrations; tools/races/aetheria_racials.py)
DELETE FROM `spell_bonus_data` WHERE `entry` IN (111111, 111113);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(111111, 0, 0, 0, 0, 'Ascendant Charge - explicit higher AP/SP scaling in script'),
(111113, 0, 0, 0, 0, 'Kyrian landing - script snapshots 10 percent of impact per tick');
