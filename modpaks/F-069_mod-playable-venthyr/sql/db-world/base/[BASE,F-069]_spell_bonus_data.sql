-- Venthyr racials of Aetheria's Kyrian/Venthyr package (kyrian-venthyr-20261027-1, from its server migrations; tools/races/aetheria_racials.py)
DELETE FROM `spell_bonus_data` WHERE `entry` IN (111200);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(111200, 0, 0, 0, 0, 'Crimson Feast - explicit higher AP/SP snapshot in script');
