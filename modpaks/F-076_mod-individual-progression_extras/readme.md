# mod-worgoblin-high-elf
## F-076_mod-individual-progression_extras

The optional parts of [mod-individual-progression](https://github.com/ZhengPeiRu21/mod-individual-progression):
its `optional/sql/world/zz_optional_*.sql` files and its optional DBCs (`dbc.7z`'s SkillLine, SkillLineAbility,
SkillRaceClassInfo and SpellItemEnchantment, the DBCs of `patch-S.7z`/`patch-V.7z`), see its
`optional/patch-explanations.txt`. List it after F-026 (and with F-075) in the manifest.

DBC changes are SQL in `dbc/`, merged into the DBCs the pipeline builds, instead of IP's ready-made DBCs (which
would overwrite the other modpaks') and its rows in AzerothCore's `*_dbc` tables (which override the DBCs on the
server only, so server and client can disagree). The client needs the built DBCs as well; don't install IP's
patch-S/patch-V MPQs.

### Features
Every feature is optional: delete its files to leave it out. Where a feature has both a `dbc/` and a
`sql/db-world/base/` file, they share their name and belong together.

| Feature | `dbc/` | `sql/db-world/base/` |
| --- | --- | --- |
| Rogue Poisons: the Poisons skill, its recipes and spells instead of poison vendors | `rogue_poisons` | `rogue_poisons` |
| "+healing" or separate healing and spell damage instead of spell power, on items, enchants and buffs | `spell_damage_and_healing` | `spell_damage_and_healing` |
| TBC PvP prices: honor plus battleground marks | `tbc_pvp_prices` | `tbc_pvp_prices` |
| The Bravery sails to Menethil Harbor again; the Northspear from Stormwind Harbor | `vanilla_transports` | `vanilla_transports` |
| Vanilla health and mana regeneration (levels 1-14, Death Knight health regen) | `vanilla_regen_values` | |
| Vanilla/TBC reagents, tools and crafting stations of recipes and class spells | `reagents` | |
| Vanilla/TBC skill-up levels of some Mining, Enchanting and Leatherworking recipes | `crafting_skill_levels` | |
| Detect Magic for Mages | `detect_magic` | |
| IP's other Spell.dbc changes (Summon Mana Fiend, Conflagration, Silithid Pox, ...) | `spell_fixes` | |
| Four recipe items 101784-101787 of IP's Item.dbc, unused by its SQL | `client_items` | |
| Vanilla/TBC mana costs, Earth Shock interrupting, totem schools (see below) | `vanilla_tbc_mana_costs` | |
| Class spells trainable only from the expansion that added them (see below) | | `limit_spells_to_expansion` |
| Ammo stacks to 200 | | `ammo_stack_size` |
| Easier AQ war effort quests | | `aq_quest_nerf` |
| Alterac Valley landmines | | `av_landmines` |
| Vmangos stats for low-level creatures (stronger) | | `creature_stats` |
| Vanilla/TBC stack sizes | | `item_stack_sizes` |
| NPCs and objects phased in when their content was added | | `phasing` |
| No heirlooms | | `remove_heirlooms` |
| Vanilla/TBC crafting cooldowns (transmutes, cloths) | | `restore_crafting_cd_timers` |
| 2 minute potion cooldown | | `restore_potion_cd` |
| Raids for small groups (Eternal Quintessence, 4 Firesworn at Garr) | | `small_group_adjustments` |
| Stackable buff scrolls | | `stackable_buff_scrolls` |
| TBC heroic keys at Honored | | `tbc_heroic_dungeon_keys_nerf` |
| Unobtainable cosmetic items as rare drops | | `unobtainable_items` |
| Vanilla crafting specialization requirements | | `vanilla_crafting_requirements` |
| Vanilla creature models | | `vanilla_models` |
| WotLK health of TBC raid creatures (weaker) | | `wotlk_hp_values_for_tbc_raids` |

All files are named `[F-076]_<name>.sql`.

- `vanilla_tbc_mana_costs` is what IP's patch-V has on top of patch-S. It is meant for the Vanilla and TBC brackets:
  once the server is past TBC, delete it and rebuild the DBCs (server and client) for the WotLK costs, as IP has you
  swap patch-V for patch-S
- `limit_spells_to_expansion` has a characters database part, `sql/db-characters/[F-076]_limit_spells_to_expansion.sql`,
  which removes those spells from characters below the new levels. build-dbc.sh doesn't apply it: run it against your
  characters database yourself

### Changes from IP's files
- The `*_dbc` rows are in `dbc/` instead: spell 2995 (Poisons), SkillLineAbility 1687, ItemExtendedCost (TBC PvP
  prices), TaxiPath/TaxiPathNode 1981 (the Northspear) and the gt regen tables. The regen file only keeps the values
  that differ from stock (464 of 3300). `rogue_poisons` still deletes AzerothCore's own `spell_dbc` row for 11202,
  which the DBC now has
- Spell names on `spell_damage_and_healing`'s item updates, creature names on `vanilla_models`' (sorted by creature),
  class headings in `creature_stats`
- Left out of the DBCs: the zhCN/zhTW texts IP's DBCs also carry (made from a Chinese client) and enUS texts that only
  differ from stock in their line breaks
- The rest of patch-S/patch-V's client DBCs is here too (Spell, the Skill DBCs, SpellItemEnchantment, ItemExtendedCost,
  TaxiPath, TaxiPathNode) or in F-075 (Achievement 533, Item 6082 and 9594, which IP's base SQL uses)
- Not included: the client-only patch-J/patch-U (login and loading screens)

### Known Issues
- Untested in game
- IP's DBC has Blinding Powder twice in the Poisons skill (SkillLineAbility 3969 and 4806); kept as is
- Kept as IP has them, though they look unintended: Blight (59285) describes itself as "Increased Intellect 42",
  Corrupted Stoneskin Totem (23420) is blanked
- The gt regen tables are matched by row order (`auto_id`), which assumes the DBC database was imported by DBCTool
  from stock DBCs
