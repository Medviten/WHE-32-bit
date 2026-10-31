-- Moved from Worgoblin (not really relevant to that module)
REPLACE INTO `player_shapeshift_model` (
    `ShapeshiftID`, -- ID from SpellShapeshiftForm.dbc or spellshapeshiftform_dbc
    `RaceID`, -- ID from ChrRaces.dbc or chrraces_dbc
    `CustomizationID`, -- hair colour or skin colour
    `GenderID`, -- 0: male, 1: female, 2: both
    `ModelID` -- ID from CreatureDisplayInfo.dbc or creaturedisplayinfo_dbc (*not* from CreatureModelData.dbc!)
) VALUES

/* Undead Druid Forms */
(@TreeForm,        @Undead,    255, @Male,   @DruidEntSkinDead), -- ModelID: EntSkinDead
(@TreeForm,        @Undead,    255, @Female, @DruidEntSkinDiseased), -- ModelID: EntSkinDiseased
(@BearForm,        @Undead,    255,       2, @DruidBearSkinBrownDiseased), -- ModelID: BearSkinBrownDiseased
(@BearForm,        @Undead,      0,       2, @DruidBearSkinWhiteDiseased), -- ModelID: BearSkinWhiteDiseased
(@AquaticForm,     @Undead,    255,       2, @DruidSharkSkinPurple), -- ModelID: SharkSkinPurple
(@FlightForm,      @Undead,    255,       2, @DragonWhelpSkinDiseasedDisplay), -- ModelID: DragonWhelpSkinDiseased
(@SwiftFlightForm, @Undead,    255,       2, @DragonWhelpSkinDiseasedDisplay), -- ModelID: DragonWhelpSkinDiseased
(@TravelForm,      @Undead,    255,       2, @HordeTravelForm), -- ModelID: DruidTravelHorde

/* Gnome Druid Forms */
(@TreeForm,        @Gnome,      1,        2, @DruidLasherOrchidSkinBrown), -- brown hair: LasherOrchidSkinBrown
(@TreeForm,        @Gnome,      2,        2, @DruidLasherOrchidSkinBrown), -- gray hair: LasherOrchidSkinBrown
(@TreeForm,        @Gnome,      3,        2, @DruidLasherOrchidSkinBrown), -- white hair: LasherOrchidSkinBrown
(@TreeForm,        @Gnome,      4,        2, @DruidLasherOrchidSkinBrown), -- gray hair: LasherOrchidSkinBrown
(@TreeForm,        @Gnome,      5,        2, @DruidLasherOrchidSkinPurple), -- red hair: LasherOrchidSkinPurple
(@TreeForm,        @Gnome,      8,        2, @DruidLasherOrchidSkinPurple), -- pink hair: LasherOrchidSkinPurple
(@TreeForm,        @Gnome,      9,        2, @DruidLasherOrchidSkinPurple), -- black hair: LasherOrchidSkinPurple
(@TreeForm,        @Gnome,    255,        2, @DruidLasherOrchidSkinGreen), -- ModelID: LasherOrchidSkinGreen
(@BearForm,        @Gnome,    255,        2, @PolarBearCubSkinDisplay), -- ModelID: PolarBearCubSkin
(@DireBearForm,    @Gnome,    255,        2, @PolarBearCubSkinDisplay), -- ModelID: PolarBearCubSkin
(@MoonkinForm,     @Gnome,    255,        2, @NorthrendPenguin01Display), -- ModelID: NorthrendPenguin01
(@TravelForm,      @Gnome,    255,        2, @AllianceTravelForm), -- ModelID: DruidTravelAlliance


/* Troll Druid forms */
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

-- Default Alliance travel form
-- Side and playability come from ChrRaces (playable: no 0x01 flag, as in the core's RaceMgr, and `alliance` 0 is
-- Alliance, 1 Horde) rather than @AllianceMask/@HordeMask, which only hold races 1-64.
INSERT INTO `player_shapeshift_model` (
    `ShapeshiftID`,
    `RaceID`,
    `CustomizationID`,
    `GenderID`,
    `ModelID`
)
SELECT
    @TravelForm,
    r.`race`,
    255,
    2,
    @AllianceTravelForm
FROM (
    SELECT DISTINCT `race`
    FROM `dbc_db`.`charbaseinfo`
    WHERE `race` IS NOT NULL
) AS r
WHERE EXISTS (
      SELECT 1
      FROM `dbc_db`.`chrraces` c
      WHERE c.`id` = r.`race`
        AND (c.`flags` & 1) = 0
        AND c.`alliance` = 0
  )
  AND NOT EXISTS (
      SELECT 1
      FROM `player_shapeshift_model` psm
      WHERE psm.`ShapeshiftID` = @TravelForm
        AND psm.`RaceID` = r.`race`
        AND psm.`CustomizationID` = 255
        AND psm.`GenderID` = 2
  );

-- Default Horde travel form
INSERT INTO `player_shapeshift_model` (
    `ShapeshiftID`,
    `RaceID`,
    `CustomizationID`,
    `GenderID`,
    `ModelID`
)
SELECT
    @TravelForm,
    r.`race`,
    255,
    2,
    @HordeTravelForm
FROM (
    SELECT DISTINCT `race`
    FROM `dbc_db`.`charbaseinfo`
    WHERE `race` IS NOT NULL
) AS r
WHERE EXISTS (
      SELECT 1
      FROM `dbc_db`.`chrraces` c
      WHERE c.`id` = r.`race`
        AND (c.`flags` & 1) = 0
        AND c.`alliance` = 1
  )
  AND NOT EXISTS (
      SELECT 1
      FROM `player_shapeshift_model` psm
      WHERE psm.`ShapeshiftID` = @TravelForm
        AND psm.`RaceID` = r.`race`
        AND psm.`CustomizationID` = 255
        AND psm.`GenderID` = 2
  );