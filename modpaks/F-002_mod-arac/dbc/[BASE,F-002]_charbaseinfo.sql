-- [F-002] mod-arac: charbaseinfo

-- Every class for every race in this build (the race modpaks, listed before F-002, have added theirs by now)
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT `r`.`race`, `c`.`class`
FROM (SELECT DISTINCT `race` FROM `charbaseinfo`) AS `r`
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
WHERE NOT EXISTS (
    SELECT 1 FROM `charbaseinfo` AS `b` WHERE `b`.`race` = `r`.`race` AND `b`.`class` = `c`.`class`
);
