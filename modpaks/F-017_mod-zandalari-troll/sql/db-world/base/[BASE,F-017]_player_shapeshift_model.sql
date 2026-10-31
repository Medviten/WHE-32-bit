REPLACE INTO `player_shapeshift_model` (
    `ShapeshiftID`, -- ID from SpellShapeshiftForm.dbc or spellshapeshiftform_dbc
    `RaceID`, -- ID from ChrRaces.dbc or chrraces_dbc
    `CustomizationID`, -- hair colour or skin colour
    `GenderID`, -- 0: male, 1: female, 2: both
    `ModelID` -- ID from CreatureDisplayInfo.dbc or creaturedisplayinfo_dbc (*not* from CreatureModelData.dbc!)
) VALUES

/* Zandalari Troll Druid forms */
(@CatForm,         @ZandalariTroll,      0,        2, @DruidCatZandalariTrollBlackDisplay),     -- dark blue hair: druidcatzandalaritroll_black
(@CatForm,         @ZandalariTroll,      1,        2, @DruidCatZandalariTrollBlueDisplay),      -- blue hair: druidcatzandalaritroll_blue
(@CatForm,         @ZandalariTroll,      2,        2, @DruidCatZandalariTrollGreenDisplay),     -- green hair: druidcatzandalaritroll_green
(@CatForm,         @ZandalariTroll,      3,        2, @DruidCatZandalariTrollGreenDisplay),     -- orange hair: druidcatzandalaritroll_green
(@CatForm,         @ZandalariTroll,      4,        2, @DruidCatZandalariTrollGreenDisplay),     -- red hair: druidcatzandalaritroll_green
(@CatForm,         @ZandalariTroll,      5,        2, @DruidCatZandalariTrollWhiteDisplay),     -- white hair: druidcatzandalaritroll_white
(@CatForm,         @ZandalariTroll,      6,        2, @DruidCatZandalariTrollWhiteDisplay),     -- yellow hair: druidcatzandalaritroll_white
(@BearForm,        @ZandalariTroll,      0,        2, @DruidBearZandalariTrollDarkDisplay),     -- dark blue hair: druidbearzandalaritroll_dark
(@BearForm,        @ZandalariTroll,      1,        2, @DruidBearZandalariTrollBlueDisplay),     -- blue hair: druidbearzandalaritroll_blue
(@BearForm,        @ZandalariTroll,      2,        2, @DruidBearZandalariTrollGreenDisplay),    -- green hair: druidbearzandalaritroll_green
(@BearForm,        @ZandalariTroll,      3,        2, @DruidBearZandalariTrollGreenDisplay),    -- orange hair: druidbearzandalaritroll_green
(@BearForm,        @ZandalariTroll,      4,        2, @DruidBearZandalariTrollGreenDisplay),    -- red hair: druidbearzandalaritroll_green
(@BearForm,        @ZandalariTroll,      5,        2, @DruidBearZandalariTrollWhiteDisplay),    -- white hair: druidbearzandalaritroll_white
(@BearForm,        @ZandalariTroll,      6,        2, @DruidBearZandalariTrollWhiteDisplay),    -- yellow hair: druidbearzandalaritroll_white
(@BearForm,        @ZandalariTroll,    255,        2, @DruidBearZandalariTrollGreenDisplay),    -- default: druidbearzandalaritroll_green
(@DireBearForm,    @ZandalariTroll,      0,        2, @DruidBearZandalariTrollDarkDisplay),     -- dark blue hair: druidbearzandalaritroll_dark
(@DireBearForm,    @ZandalariTroll,      1,        2, @DruidBearZandalariTrollBlueDisplay),     -- blue hair: druidbearzandalaritroll_blue
(@DireBearForm,    @ZandalariTroll,      2,        2, @DruidBearZandalariTrollGreenDisplay),    -- green hair: druidbearzandalaritroll_green
(@DireBearForm,    @ZandalariTroll,      3,        2, @DruidBearZandalariTrollGreenDisplay),    -- orange hair: druidbearzandalaritroll_green
(@DireBearForm,    @ZandalariTroll,      4,        2, @DruidBearZandalariTrollGreenDisplay),    -- red hair: druidbearzandalaritroll_green
(@DireBearForm,    @ZandalariTroll,      5,        2, @DruidBearZandalariTrollWhiteDisplay),    -- white hair: druidbearzandalaritroll_white
(@DireBearForm,    @ZandalariTroll,      6,        2, @DruidBearZandalariTrollWhiteDisplay),    -- yellow hair: druidbearzandalaritroll_white
(@DireBearForm,    @ZandalariTroll,    255,        2, @DruidBearZandalariTrollGreenDisplay),    -- default: druidbearzandalaritroll_green
(@MoonkinForm,     @ZandalariTroll,    255,        2, @DruidMoonkinZandalariTrollDisplay),      -- ModelID: druidowlbearzandalariepic2_body, druidowlbearzandalariepic2_armor, armorreflectgold5
(@FlightForm,      @ZandalariTroll,    255,        2, @DruidFlightZandalariTrollDisplay),       -- ModelID: druidflightzandalaritroll
(@SwiftFlightForm, @ZandalariTroll,    255,        2, @DruidFlightZandalariTrollDisplay),       -- ModelID: druidflightzandalaritroll
(@AquaticForm,     @ZandalariTroll,      0,        2, @DruidAquaticZandalariTrollDarkDisplay),  -- dark blue hair: druidaquaticzandalari_dark
(@AquaticForm,     @ZandalariTroll,      1,        2, @DruidAquaticZandalariTrollTealDisplay),  -- blue hair: druidaquaticzandalari_teal
(@AquaticForm,     @ZandalariTroll,      2,        2, @DruidAquaticZandalariTrollGreenDisplay), -- green hair: druidaquaticzandalari_green
(@AquaticForm,     @ZandalariTroll,      3,        2, @DruidAquaticZandalariTrollGreenDisplay), -- orange hair: druidaquaticzandalari_green
(@AquaticForm,     @ZandalariTroll,      4,        2, @DruidAquaticZandalariTrollGreenDisplay), -- red hair: druidaquaticzandalari_green
(@AquaticForm,     @ZandalariTroll,      5,        2, @DruidAquaticZandalariTrollLightDisplay), -- white hair: druidaquaticzandalari_light
(@AquaticForm,     @ZandalariTroll,      6,        2, @DruidAquaticZandalariTrollLightDisplay), -- yellow hair: druidaquaticzandalari_light
(@AquaticForm,     @ZandalariTroll,    255,        2, @DruidAquaticZandalariTrollGreenDisplay); -- default: druidaquaticzandalari_green
