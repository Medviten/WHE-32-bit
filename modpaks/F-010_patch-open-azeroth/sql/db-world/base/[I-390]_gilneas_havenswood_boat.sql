-- A ship on Open Azeroth's Keel Harbor (Gilneas) - Havenswood route (taxi path 2044), which OA adds without one.
-- The template is The Bravery's (176310: human ship, speed 30, acceleration 1) on that path, with no transport map
-- (Data6 0: no crew). Path fix: dbc/[I-390]_gilneas_havenswood_boat_path.sql.

DELETE FROM `gameobject_template` WHERE `entry` = 1390001;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
  (1390001, 15, 3015, 'Ship (Gilneas - Havenswood)', '', '', '', 1, 2044, 30, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0);

DELETE FROM `gameobject_template_addon` WHERE `entry` = 1390001;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`) VALUES
  (1390001, 0, 40);

DELETE FROM `transports` WHERE `guid` = 13901;
INSERT INTO `transports` (`guid`, `entry`, `name`, `ScriptName`) VALUES
  (13901, 1390001, 'Keel Harbor, Gilneas and Havenswood (Boat, neutral)', '');
