REPLACE INTO `player_shapeshift_model` (
    `ShapeshiftID`, -- ID from SpellShapeshiftForm.dbc or spellshapeshiftform_dbc
    `RaceID`, -- ID from ChrRaces.dbc or chrraces_dbc
    `CustomizationID`, -- fur colour or skin colour
    `GenderID`, -- 0: male, 1: female, 2: both
    `ModelID` -- ID from CreatureDisplayInfo.dbc or creaturedisplayinfo_dbc (*not* from CreatureModelData.dbc!)
) VALUES

/* Highmountain Tauren Druid forms */
(@CatForm,         @HighmountainTauren,      0,        2, @DruidCatHighmountainTaurenBlackDisplay), -- black fur
(@CatForm,         @HighmountainTauren,      1,        2, @DruidCatHighmountainTaurenBrownDisplay), -- light brown fur
(@CatForm,         @HighmountainTauren,      2,        2, @DruidCatHighmountainTaurenRedDisplay), -- dark brown fur
(@CatForm,         @HighmountainTauren,      3,        2, @DruidCatHighmountainTaurenWhiteDisplay), -- white and brown fur
(@BearForm,        @HighmountainTauren,      0,        2, @DruidBearHighmountainTaurenBlackDisplay), -- black fur
(@BearForm,        @HighmountainTauren,      1,        2, @DruidBearHighmountainTaurenBrownDisplay), -- light brown fur
(@BearForm,        @HighmountainTauren,      2,        2, @DruidBearHighmountainTaurenSilverDisplay), -- dark brown fur
(@BearForm,        @HighmountainTauren,      3,        2, @DruidBearHighmountainTaurenWhiteDisplay), -- white and brown fur
(@BearForm,        @HighmountainTauren,      4,        2, @DruidBearHighmountainTaurenYellowDisplay), -- unknown fur
(@DireBearForm,    @HighmountainTauren,      0,        2, @DruidBearHighmountainTaurenBlackDisplay), -- black fur
(@DireBearForm,    @HighmountainTauren,      1,        2, @DruidBearHighmountainTaurenBrownDisplay), -- light brown fur
(@DireBearForm,    @HighmountainTauren,      2,        2, @DruidBearHighmountainTaurenSilverDisplay), -- dark brown fur
(@DireBearForm,    @HighmountainTauren,      3,        2, @DruidBearHighmountainTaurenWhiteDisplay), -- white and brown fur
(@DireBearForm,    @HighmountainTauren,      4,        2, @DruidBearHighmountainTaurenYellowDisplay), -- unknown fur
(@MoonkinForm,     @HighmountainTauren,    255,        2, @DruidMoonkinHighmountainTaurenDisplay),
(@FlightForm,      @HighmountainTauren,    255,        2, @DruidFlightHighmountainTaurenDisplay),
(@SwiftFlightForm, @HighmountainTauren,    255,        2, @DruidFlightHighmountainTaurenDisplay);
