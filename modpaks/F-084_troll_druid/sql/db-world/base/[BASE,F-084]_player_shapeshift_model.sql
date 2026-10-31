-- [F-084] troll_druid: Cataclysm Troll druid forms (cat and bear follow hair color)
REPLACE INTO `player_shapeshift_model` (
    `ShapeshiftID`, -- ID from SpellShapeshiftForm.dbc or spellshapeshiftform_dbc
    `RaceID`, -- ID from ChrRaces.dbc or chrraces_dbc
    `CustomizationID`, -- hair colour or skin colour
    `GenderID`, -- 0: male, 1: female, 2: both
    `ModelID` -- ID from CreatureDisplayInfo.dbc or creaturedisplayinfo_dbc (*not* from CreatureModelData.dbc!)
) VALUES

(@CatForm,         @Troll,      0,        2, @DruidCatTrollSkinBlackDisplay), -- pink hair: DruidCatTrollSkinBlack
(@CatForm,         @Troll,      1,        2, @DruidCatTrollSkinRedDisplay), -- red hair: DruidCatTrollSkinRed
(@CatForm,         @Troll,      2,        2, @DruidCatTrollSkinRedDisplay), -- orange hair: DruidCatTrollSkinRed
(@CatForm,         @Troll,      3,        2, @DruidCatTrollSkinGreenDisplay), -- yellow hair: DruidCatTrollSkinGreen
(@CatForm,         @Troll,      4,        2, @DruidCatTrollSkinBlueDisplay), -- green hair: DruidCatTrollSkinBlue
(@CatForm,         @Troll,      5,        2, @DruidCatTrollSkinBlueDisplay), -- blue-green hair: DruidCatTrollSkinBlue
(@CatForm,         @Troll,      6,        2, @DruidCatTrollSkinBlueDisplay), -- blue hair: DruidCatTrollSkinBlue
(@CatForm,         @Troll,      7,        2, @DruidCatTrollSkinBlueDisplay), -- purple hair: DruidCatTrollSkinBlue
(@CatForm,         @Troll,      8,        2, @DruidCatTrollSkinWhiteDisplay), -- gray hair: DruidCatTrollSkinWhite
(@CatForm,         @Troll,      9,        2, @DruidCatTrollSkinWhiteDisplay), -- white hair: DruidCatTrollSkinWhite
(@BearForm,        @Troll,      0,        2, @DruidBearTrollPurpleDisplay), -- pink hair: DruidBearTrollPurple
(@BearForm,        @Troll,      1,        2, @DruidBearTrollRedDisplay), -- red hair: DruidBearTrollRed
(@BearForm,        @Troll,      2,        2, @DruidBearTrollRedDisplay), -- orange hair: DruidBearTrollRed
(@BearForm,        @Troll,      3,        2, @DruidBearTrollYellowDisplay), -- yellow hair: DruidBearTrollYellow
(@BearForm,        @Troll,      4,        2, @DruidBearTrollBlueDisplay), -- green hair: DruidBearTrollBlue
(@BearForm,        @Troll,      5,        2, @DruidBearTrollBlueDisplay), -- blue-green hair: DruidBearTrollBlue
(@BearForm,        @Troll,      6,        2, @DruidBearTrollBlueDisplay), -- blue hair: DruidBearTrollBlue
(@BearForm,        @Troll,      7,        2, @DruidBearTrollBlueDisplay), -- purple hair: DruidBearTrollBlue
(@BearForm,        @Troll,      8,        2, @DruidBearTrollWhiteDisplay), -- gray hair: DruidBearTrollWhite
(@BearForm,        @Troll,      9,        2, @DruidBearTrollWhiteDisplay), -- white hair: DruidBearTrollWhite
(@DireBearForm,    @Troll,      0,        2, @DruidBearTrollPurpleDisplay), -- pink hair: DruidBearTrollPurple
(@DireBearForm,    @Troll,      1,        2, @DruidBearTrollRedDisplay), -- red hair: DruidBearTrollRed
(@DireBearForm,    @Troll,      2,        2, @DruidBearTrollRedDisplay), -- orange hair: DruidBearTrollRed
(@DireBearForm,    @Troll,      3,        2, @DruidBearTrollYellowDisplay), -- yellow hair: DruidBearTrollYellow
(@DireBearForm,    @Troll,      4,        2, @DruidBearTrollBlueDisplay), -- green hair: DruidBearTrollBlue
(@DireBearForm,    @Troll,      5,        2, @DruidBearTrollBlueDisplay), -- blue-green hair: DruidBearTrollBlue
(@DireBearForm,    @Troll,      6,        2, @DruidBearTrollBlueDisplay), -- blue hair: DruidBearTrollBlue
(@DireBearForm,    @Troll,      7,        2, @DruidBearTrollBlueDisplay), -- purple hair: DruidBearTrollBlue
(@DireBearForm,    @Troll,      8,        2, @DruidBearTrollWhiteDisplay), -- gray hair: DruidBearTrollWhite
(@DireBearForm,    @Troll,      9,        2, @DruidBearTrollWhiteDisplay), -- white hair: DruidBearTrollWhite
(@TreeForm,        @Troll,    255,        2, @DruidTreeFormOrangeDisplay), -- ModelID: DruidTreeFormOrange
(@MoonkinForm,     @Troll,    255,        2, @DruidOwlBearRedSkinDisplay), -- ModelID: DruidOwlBearRedSkin, DruidOwlBearRedSkin2
(@FlightForm,      @Troll,    255,        2, @DruidFlightTrollDisplay), -- ModelID: DruidFlightTroll1, DruidFlightTroll2
(@SwiftFlightForm, @Troll,    255,        2, @EpicDruidFlightTrollDisplay); -- ModelID: EpicDruidFlightTroll1, EpicDruidFlightTroll2
