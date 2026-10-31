-- Action bars of @HordeEarthenHome for every class the race offers (charbaseinfo, ARAC's included). Classes @HordeEarthenHome lacks
-- copy those of the first race in the chain that has them, without that race's racials (SkillLine category 9)
DELETE FROM `playercreateinfo_action` WHERE `race` = @HordeEarthen;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @HordeEarthen, `a`.`class`, `a`.`button`, `a`.`action`, `a`.`type`
FROM (
    SELECT `c`.`class`, (
        SELECT `pa`.`race` FROM `playercreateinfo_action` AS `pa`
        WHERE `pa`.`class` = `c`.`class` AND FIELD(`pa`.`race`, @HordeEarthenHome, @Orc, @Undead, @Tauren, @Troll, @BloodElf) > 0
        ORDER BY FIELD(`pa`.`race`, @HordeEarthenHome, @Orc, @Undead, @Tauren, @Troll, @BloodElf) LIMIT 1
    ) AS `source`
    FROM (SELECT DISTINCT `class` FROM `dbc_db`.`charbaseinfo` WHERE `race` = @HordeEarthen) AS `c`
) AS `s`
JOIN `playercreateinfo_action` AS `a` ON `a`.`race` = `s`.`source` AND `a`.`class` = `s`.`class`
WHERE `s`.`source` = @HordeEarthenHome
   OR `a`.`type` <> 0
   OR `a`.`action` NOT IN (
       SELECT `sla`.`spell_id` FROM `dbc_db`.`skilllineability` AS `sla`
       JOIN `dbc_db`.`skillline` AS `sl` ON `sl`.`id` = `sla`.`skill_line`
       WHERE `sl`.`category` = 9
   );
