-- Pygmy (Oomlot tribe), the only Cataclysm faction the goblin zone adds. Bilgewater Cartel (@GoblinFaction) and
-- "PLAYER, Goblin" (@GoblinPlayer) come from F-023 with their 256-bit race masks, so they aren't overwritten here.

DELETE FROM `faction` WHERE `id` = @PygmyFaction;
INSERT INTO `faction` SET
  `id` = @PygmyFaction,
  `reputation_index` = -1,
  `name_enus` = 'Pygmy',
  `name_flags` = 16712190,
  `description_flags` = 16712188;
