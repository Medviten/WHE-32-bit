DELETE FROM `playercreateinfo_action` WHERE `race` = @Troll AND `class` = @Druid;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES
(@Troll,    @Druid,       @SpecialAButton1,  @SpellAutoAttack,              @ActionbarSpell), -- cat form bar, as stock druids
(@Troll,    @Druid,       @SpecialCButton1,  @SpellAutoAttack,              @ActionbarSpell), -- bear form bar, as stock druids
(@Troll,    @Druid,       @Row1Button1,      @SpellWrath1,                  @ActionbarSpell),
(@Troll,    @Druid,       @Row1Button2,      @SpellHealingTouch1,           @ActionbarSpell),
(@Troll,    @Druid,       @Row1Button12,     @SpellBerserking,              @ActionbarSpell);
