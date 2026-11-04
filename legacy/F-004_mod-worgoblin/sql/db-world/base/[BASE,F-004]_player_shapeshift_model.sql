REPLACE INTO `player_shapeshift_model` (
    `ShapeshiftID`, -- ID from SpellShapeshiftForm.dbc or spellshapeshiftform_dbc
    `RaceID`, -- ID from ChrRaces.dbc or chrraces_dbc
    `CustomizationID`, -- hair colour or skin colour
    `GenderID`, -- 0: male, 1: female, 2: both
    `ModelID` -- ID from CreatureDisplayInfo.dbc or creaturedisplayinfo_dbc (*not* from CreatureModelData.dbc!)
) VALUES
/* Cataclysm Druid forms */
/* Worgen Druid forms */
(@CatForm,         @Worgen,   0, 2, @DruidCatSkinWorgenBlackDisplay),  -- black hair: DruidCatSkinWorgenBlack (33661)
(@CatForm,         @Worgen,   1, 2, @DruidCatSkinWorgenDisplay),       -- light brown hair: DruidCatSkinWorgen (33660)
(@CatForm,         @Worgen,   2, 2, @DruidCatSkinWorgenBrownDisplay),  -- brown hair: DruidCatSkinWorgenBrown (33662)
(@CatForm,         @Worgen,   3, 2, @DruidCatSkinWorgenWhiteDisplay),  -- red hair: DruidCatSkinWorgenWhite (33663)
(@CatForm,         @Worgen,   4, 2, @DruidCatSkinWorgenYellowDisplay), -- dark blonde hair: DruidCatSkinWorgenYellow (33664)
(@BearForm,        @Worgen,   0, 2, @DruidBearWorgenBlackDisplay),     -- black hair: DruidBearWorgenBlack (33651)
(@BearForm,        @Worgen,   1, 2, @DruidBearWorgenDisplay),          -- light brown hair: DruidBearWorgen (33650)
(@BearForm,        @Worgen,   2, 2, @DruidBearWorgenBrownDisplay),     -- brown hair: DruidBearWorgenBrown (33652)
(@BearForm,        @Worgen,   3, 2, @DruidBearWorgenWhiteDisplay),     -- red hair: DruidBearWorgenWhite (33654)
(@BearForm,        @Worgen,   4, 2, @DruidBearWorgenTanDisplay),       -- dark blonde hair: DruidBearWorgenTan (33653)
(@DireBearForm,    @Worgen,   0, 2, @DruidBearWorgenBlackDisplay),     -- black hair: DruidBearWorgenBlack (33651)
(@DireBearForm,    @Worgen,   1, 2, @DruidBearWorgenDisplay),          -- light brown hair: DruidBearWorgen (33650)
(@DireBearForm,    @Worgen,   2, 2, @DruidBearWorgenBrownDisplay),     -- brown hair: DruidBearWorgenBrown (33652)
(@DireBearForm,    @Worgen,   3, 2, @DruidBearWorgenWhiteDisplay),     -- red hair: DruidBearWorgenWhite (33654)
(@DireBearForm,    @Worgen,   4, 2, @DruidBearWorgenTanDisplay),       -- dark blonde hair: DruidBearWorgenTan (33653)
(@MoonkinForm,     @Worgen, 255, 2, @DruidOwlBearBlackSkinDisplay),    -- ModelID: DruidOwlBearBlackSkin, DruidOwlBearBlackSkin2 (37173)
(@SwiftFlightForm, @Worgen, 255, 2, @EpicDruidFlightWorgenDisplay),    -- ModelID: EpicDruidFlightWorgen (37729)
(@FlightForm,      @Worgen, 255, 2, @EpicDruidFlightWorgenDisplay);    -- ModelID: EpicDruidFlightWorgenDispla
