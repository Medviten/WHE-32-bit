-- [F-002] mod-arac: charbaseinfo

-- Clean slate + every non-NULL race/class combination
DELETE FROM `charbaseinfo` WHERE `class` in (@Warrior, @Paladin, @Hunter, @Rogue, @Priest, @DeathKnight, @Shaman, @Mage, @Warlock, @Druid);
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT `r`.`race`, `c`.`class`
FROM (
    SELECT @Human AS `race`
    UNION ALL SELECT @Orc
    UNION ALL SELECT @Dwarf
    UNION ALL SELECT @NightElf
    UNION ALL SELECT @Undead
    UNION ALL SELECT @Tauren
    UNION ALL SELECT @Gnome
    UNION ALL SELECT @Troll
    UNION ALL SELECT @Goblin -- race 9
    UNION ALL SELECT @BloodElf
    UNION ALL SELECT @Draenei
    UNION ALL SELECT @Worgen -- race 12
    UNION ALL SELECT @AlliancePandaren
    UNION ALL SELECT @HordePandaren
    UNION ALL SELECT @Nightborne
    UNION ALL SELECT @HighmountainTauren
    UNION ALL SELECT @VoidElf
    UNION ALL SELECT @LightforgedDraenei
    UNION ALL SELECT @ZandalariTroll
    UNION ALL SELECT @KulTiran
    UNION ALL SELECT @Vulpera
    UNION ALL SELECT @DarkIronDwarf
    UNION ALL SELECT @MagharOrc
    UNION ALL SELECT @Mechagnome
    UNION ALL SELECT @AllianceDracthyr
    UNION ALL SELECT @HordeDracthyr
    UNION ALL SELECT @AllianceEarthen
    UNION ALL SELECT @HordeEarthen
    UNION ALL SELECT @AllianceHaranir
    UNION ALL SELECT @HordeHaranir
    UNION ALL SELECT @AllianceSkyborne
    UNION ALL SELECT @HordeSkyborne
    UNION ALL SELECT @HighElf
    UNION ALL SELECT @Ogre
    UNION ALL SELECT @Broken
    UNION ALL SELECT @Naga
    UNION ALL SELECT @Murloc
    UNION ALL SELECT @Furbolg
    UNION ALL SELECT @Gilnean
    UNION ALL SELECT @Vrykul
    UNION ALL SELECT @ThinHuman
    UNION ALL SELECT @Tuskarr
    UNION ALL SELECT @Darkfallen
    UNION ALL SELECT @FelOrc
    UNION ALL SELECT @Skeleton
    UNION ALL SELECT @ForestTroll
    UNION ALL SELECT @NorthrendSkeleton
    UNION ALL SELECT @IceTroll
    UNION ALL SELECT @Qiraji
    UNION ALL SELECT @Eredar
    UNION ALL SELECT @Arakkoa
    UNION ALL SELECT @FelElf
    UNION ALL SELECT @Quillboar
    UNION ALL SELECT @Centaur
    UNION ALL SELECT @Demon
    UNION ALL SELECT @Satyr
    UNION ALL SELECT @Gnoll
    UNION ALL SELECT @Beholder
    UNION ALL SELECT @Shivan
    UNION ALL SELECT @Hozen
    UNION ALL SELECT @Sylvari
    UNION ALL SELECT @Mantid
    UNION ALL SELECT @Ethereal
    UNION ALL SELECT @Kyrian
    UNION ALL SELECT @Venthyr
    UNION ALL SELECT @Banshee
    UNION ALL SELECT @FacelessOne
) AS `r`
CROSS JOIN (
    SELECT @Warrior AS `class`
    UNION ALL SELECT @Paladin
    UNION ALL SELECT @Hunter
    UNION ALL SELECT @Rogue
    UNION ALL SELECT @Priest
    UNION ALL SELECT @DeathKnight
    UNION ALL SELECT @Shaman
    UNION ALL SELECT @Mage
    UNION ALL SELECT @Warlock
    UNION ALL SELECT @Druid
) AS `c`
WHERE `r`.`race` IS NOT NULL
  AND `c`.`class` IS NOT NULL;
