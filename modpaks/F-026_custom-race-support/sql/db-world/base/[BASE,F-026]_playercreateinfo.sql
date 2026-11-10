-- The server allows every race/class pair that has a playercreateinfo row, and random bots choose from those rows, while
-- CharBaseInfo only limits the creation screen. Older race modpaks list every class, so drop what the race doesn't offer.
-- The DBC build runs first, so charbaseinfo is already final here. Modpaks after this one only add pairs they also put
-- in charbaseinfo (F-002, F-087, F-100).
DELETE `p` FROM `playercreateinfo` AS `p`
LEFT JOIN `dbc_db`.`charbaseinfo` AS `c` ON `c`.`race` = `p`.`race` AND `c`.`class` = `p`.`class`
WHERE `c`.`race` IS NULL;
