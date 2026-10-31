/*
   Needs [F-076]_vanilla_transports.sql in dbc/ (IP: patch-V or patch-S), which adds the Northspear's new path.
   Re-route The Bravery to follow the pre-WotLK path to Menethil Harbor. The Northspear, now departs from Stormwind instead of Menethil Harbor.
   This restores the separation between the Kalimdor and Eastern Kingdom starting areas and the notorious 'Wetlands run' for players trying to change continents early.
   If not run, The Bravery will go directly to Stormwind Harbor.
*/

UPDATE `gameobject_template` SET `Data0` = 295  WHERE `entry` = 176310; -- The Bravery
UPDATE `gameobject_template` SET `Data0` = 1981 WHERE `entry` = 181688; -- The Northspear

UPDATE `transports` SET `name` = 'Menethil Harbor and Auberdine, Darkshore ("Ship (The Bravery)")' WHERE `guid` = 2;
UPDATE `transports` SET `name` = 'Stormwind Harbor and Valgarde, Howling Fjord (Boat, Alliance ("Northspear"))' WHERE `guid` = 10;

-- update text for harbormasters
UPDATE `npc_text` SET `text0_0` = 'On the northern dock, you can board a ship that will carry you to Rut''theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' WHERE `ID` = 5480;
UPDATE `npc_text` SET `text0_1` = 'We\'ve sworn to do our very best to protect the passengers of The Bravery. The sea lane between Auberdine and Menethil Harbor must remain safe.' WHERE `ID` = 12270;
UPDATE `npc_text` SET `text0_0` = 'The steam-powered Alliance icebreaker Northspear sails from here to Stormwind Harbor, across the sea in the Eastern Kingdoms.' WHERE `ID` = 12638;
UPDATE `npc_text` SET `text0_1` = 'The Northspear sails from this dock to Valgarde in the Howling Fjord.$B$BIf you''d like to reach Auberdine, The Bravery sails from Menethil Harbor.' WHERE `ID` = 13321;

UPDATE `broadcast_text` SET `MaleText` = 'On the northern dock, you can board a ship that will carry you to Rut''theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' WHERE `ID` = 8106;
UPDATE `broadcast_text` SET `FemaleText` = 'We\'ve sworn to do our very best to protect the passengers of The Bravery. The sea lane between Auberdine and Menethil Harbor must remain safe.' WHERE `ID` = 24118;
UPDATE `broadcast_text` SET `MaleText` = 'The steam-powered Alliance icebreaker Northspear sails from here to Stormwind Harbor, across the sea in the Eastern Kingdoms.' WHERE `ID` = 25748;
UPDATE `broadcast_text` SET `FemaleText` = 'The Northspear sails from this dock to Valgarde in the Howling Fjord.$B$BIf you''d like to reach Auberdine, The Bravery sails from Menethil Harbor.' WHERE `ID` = 28636;

UPDATE `creature` SET `id` = 6086 WHERE `guid` IN (9449, 9518);         -- replace Menethil guards with Auberdine Sentinels
DELETE FROM `creature` WHERE `guid` IN (203462, 203463, 203464, 203465); -- remove Auberdine Sentinels from Stormwind Harbor

UPDATE `gameobject_template` SET `name` = "Boat to Menethil Harbor" WHERE `entry` = 176364; -- sign

/*-- Remove transport from Orgrimmar to Thunder Bluff, added during WotLK (3.2.0) --*/
DELETE FROM `transports` WHERE `guid` = 20;

DELETE FROM `creature` WHERE `guid` IN (203461, 203490); -- remove Zeppelin masters at Orgrimmar and Thunder Bluff 
