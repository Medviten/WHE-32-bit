REPLACE INTO `player_shapeshift_model` (
    `ShapeshiftID`, -- ID from SpellShapeshiftForm.dbc or spellshapeshiftform_dbc
    `RaceID`, -- ID from ChrRaces.dbc or chrraces_dbc
    `CustomizationID`, -- hair colour or skin colour
    `GenderID`, -- 0: male, 1: female, 2: both
    `ModelID` -- ID from CreatureDisplayInfo.dbc or creaturedisplayinfo_dbc (*not* from CreatureModelData.dbc!)
) VALUES
/* Tauren forms */
(@CatForm, @Taunka, 255, 2, 8571), -- ModelID
(@BearForm, @Taunka, 255,	2, 2289), -- ModelID
(@DireBearForm, @Taunka, 255, 2, 2289), -- ModelID
(@SwiftFlightForm, @Taunka, 255, 2, 21244), -- ModelID
(@FlightForm, @Taunka, 255, 2, 20872); -- ModelID
