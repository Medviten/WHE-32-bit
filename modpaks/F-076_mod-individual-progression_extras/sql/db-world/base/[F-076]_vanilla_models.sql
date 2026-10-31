/*
    Reverts creatures that had model changes post-Vanilla to their original models.
    There are a few exceptions due to some Vanilla models being removed from the game files.
*/

UPDATE `creature_template_model` SET `CreatureDisplayID` = 143   WHERE `CreatureID` = 29    AND `Idx` = 0; -- Kanrethad
UPDATE `creature_template_model` SET `CreatureDisplayID` = 604   WHERE `CreatureID` = 69    AND `Idx` = 0; -- Diseased Timber Wolf
UPDATE `creature_template_model` SET `CreatureDisplayID` = 732   WHERE `CreatureID` = 201   AND `Idx` = 0; -- Brittlebones Skeleton
UPDATE `creature_template_model` SET `CreatureDisplayID` = 447   WHERE `CreatureID` = 299   AND `Idx` = 0; -- Diseased Young Wolf
UPDATE `creature_template_model` SET `CreatureDisplayID` = 612   WHERE `CreatureID` = 522   AND `Idx` = 0; -- Mor'Ladim
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2348  WHERE `CreatureID` = 657   AND `Idx` = 1; -- Defias Pirate
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5606  WHERE `CreatureID` = 706   AND `Idx` = 0; -- Frostmane Troll Whelp
UPDATE `creature_template_model` SET `CreatureDisplayID` = 611   WHERE `CreatureID` = 724   AND `Idx` = 0; -- Burly Rockjaw Trogg
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5609  WHERE `CreatureID` = 808   AND `Idx` = 0; -- Grik'nir the Cold
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5605  WHERE `CreatureID` = 946   AND `Idx` = 0; -- Frostmane Novice
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5608  WHERE `CreatureID` = 1120  AND `Idx` = 0; -- Frostmane Troll
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5607  WHERE `CreatureID` = 1121  AND `Idx` = 0; -- Frostmane Snowstrider
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5612  WHERE `CreatureID` = 1122  AND `Idx` = 0; -- Frostmane Hideskinner
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5626  WHERE `CreatureID` = 1123  AND `Idx` = 0; -- Frostmane Headhunter
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5613  WHERE `CreatureID` = 1124  AND `Idx` = 0; -- Frostmane Shadowcaster
UPDATE `creature_template_model` SET `CreatureDisplayID` = 1643  WHERE `CreatureID` = 1156  AND `Idx` = 0; -- Vyrin Swiftwind
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5625  WHERE `CreatureID` = 1260  AND `Idx` = 0; -- Great Father Arctikus
UPDATE `creature_template_model` SET `CreatureDisplayID` = 1428  WHERE `CreatureID` = 1293  AND `Idx` = 0; -- Ambo Cash
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5610  WHERE `CreatureID` = 1397  AND `Idx` = 0; -- Frostmane Seer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 317   WHERE `CreatureID` = 1490  AND `Idx` = 0; -- Zanzil Witch Doctor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10979 WHERE `CreatureID` = 1502  AND `Idx` = 0; -- Wretched Ghoul
UPDATE `creature_template_model` SET `CreatureDisplayID` = 30    WHERE `CreatureID` = 1505  AND `Idx` = 0; -- Night Web Spider
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2483  WHERE `CreatureID` = 1537  AND `Idx` = 0; -- Scarlet Zealot
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2472  WHERE `CreatureID` = 1537  AND `Idx` = 1; -- Scarlet Zealot
UPDATE `creature_template_model` SET `CreatureDisplayID` = 149   WHERE `CreatureID` = 1601  AND `Idx` = 0; -- Slim's Test Rogue
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4731  WHERE `CreatureID` = 1752  AND `Idx` = 0; -- Caledra Dawnbreeze
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11650 WHERE `CreatureID` = 1776  AND `Idx` = 0; -- Magtoor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 902   WHERE `CreatureID` = 1778  AND `Idx` = 0; -- Ferocious Grizzled Bear
UPDATE `creature_template_model` SET `CreatureDisplayID` = 864   WHERE `CreatureID` = 1964  AND `Idx` = 0; -- Treant
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6807  WHERE `CreatureID` = 1985  AND `Idx` = 0; -- Thistle Boar
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11448 WHERE `CreatureID` = 2032  AND `Idx` = 0; -- Mangy Nightsaber
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11658 WHERE `CreatureID` = 2425  AND `Idx` = 0; -- Varimathras
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3986  WHERE `CreatureID` = 2552  AND `Idx` = 0; -- Witherbark Troll
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3990  WHERE `CreatureID` = 2552  AND `Idx` = 1; -- Witherbark Troll
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3993  WHERE `CreatureID` = 2553  AND `Idx` = 0; -- Witherbark Shadowcaster
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3994  WHERE `CreatureID` = 2553  AND `Idx` = 1; -- Witherbark Shadowcaster
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3991  WHERE `CreatureID` = 2554  AND `Idx` = 0; -- Witherbark Axe Thrower
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3992  WHERE `CreatureID` = 2554  AND `Idx` = 1; -- Witherbark Axe Thrower
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3995  WHERE `CreatureID` = 2555  AND `Idx` = 0; -- Witherbark Witch Doctor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3996  WHERE `CreatureID` = 2555  AND `Idx` = 1; -- Witherbark Witch Doctor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3997  WHERE `CreatureID` = 2556  AND `Idx` = 0; -- Witherbark Headhunter
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3998  WHERE `CreatureID` = 2556  AND `Idx` = 1; -- Witherbark Headhunter
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4000  WHERE `CreatureID` = 2557  AND `Idx` = 1; -- Witherbark Shadow Hunter
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4001  WHERE `CreatureID` = 2558  AND `Idx` = 0; -- Witherbark Berserker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4002  WHERE `CreatureID` = 2558  AND `Idx` = 1; -- Witherbark Berserker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4003  WHERE `CreatureID` = 2605  AND `Idx` = 0; -- Zalas Witherbark
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4033  WHERE `CreatureID` = 2606  AND `Idx` = 0; -- Nimar the Slayer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 1545  WHERE `CreatureID` = 2614  AND `Idx` = 0; -- Air Force Alarm Bot (Alliance)
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10952 WHERE `CreatureID` = 2615  AND `Idx` = 0; -- Air Force Alarm Bot (Horde)
UPDATE `creature_template_model` SET `CreatureDisplayID` = 1038  WHERE `CreatureID` = 2635  AND `Idx` = 0; -- Elder Saltwater Crocolisk
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6491  WHERE `CreatureID` = 2639  AND `Idx` = 0; -- Vilebranch Axe Thrower
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6492  WHERE `CreatureID` = 2639  AND `Idx` = 1; -- Vilebranch Axe Thrower
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6542  WHERE `CreatureID` = 2640  AND `Idx` = 0; -- Vilebranch Witch Doctor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6543  WHERE `CreatureID` = 2640  AND `Idx` = 1; -- Vilebranch Witch Doctor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6497  WHERE `CreatureID` = 2641  AND `Idx` = 0; -- Vilebranch Headhunter
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6514  WHERE `CreatureID` = 2642  AND `Idx` = 0; -- Vilebranch Shadowcaster
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6493  WHERE `CreatureID` = 2643  AND `Idx` = 0; -- Vilebranch Berserker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6510  WHERE `CreatureID` = 2644  AND `Idx` = 0; -- Vilebranch Hideskinner
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6538  WHERE `CreatureID` = 2645  AND `Idx` = 0; -- Vilebranch Shadow Hunter
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6495  WHERE `CreatureID` = 2646  AND `Idx` = 0; -- Vilebranch Blood Drinker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6540  WHERE `CreatureID` = 2647  AND `Idx` = 0; -- Vilebranch Soul Eater
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6997  WHERE `CreatureID` = 2648  AND `Idx` = 0; -- Vilebranch Aman'zasi Guard
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10660 WHERE `CreatureID` = 2648  AND `Idx` = 2; -- Vilebranch Aman'zasi Guard
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6479  WHERE `CreatureID` = 2649  AND `Idx` = 0; -- Witherbark Scalper
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6480  WHERE `CreatureID` = 2650  AND `Idx` = 0; -- Witherbark Zealot
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6483  WHERE `CreatureID` = 2651  AND `Idx` = 0; -- Witherbark Hideskinner
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6485  WHERE `CreatureID` = 2652  AND `Idx` = 0; -- Witherbark Venomblood
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6489  WHERE `CreatureID` = 2653  AND `Idx` = 0; -- Witherbark Sadist
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6487  WHERE `CreatureID` = 2654  AND `Idx` = 0; -- Witherbark Caller
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6547  WHERE `CreatureID` = 2691  AND `Idx` = 0; -- Highvale Outrunner
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6549  WHERE `CreatureID` = 2692  AND `Idx` = 0; -- Highvale Scout
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6546  WHERE `CreatureID` = 2693  AND `Idx` = 0; -- Highvale Marksman
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6548  WHERE `CreatureID` = 2694  AND `Idx` = 0; -- Highvale Ranger
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9752  WHERE `CreatureID` = 2888  AND `Idx` = 0; -- Garek
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6303  WHERE `CreatureID` = 2914  AND `Idx` = 1; -- Snake
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2957  WHERE `CreatureID` = 2914  AND `Idx` = 2; -- Snake
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2958  WHERE `CreatureID` = 2914  AND `Idx` = 3; -- Snake
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11418 WHERE `CreatureID` = 2926  AND `Idx` = 0; -- Silvermane Stalker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 12238 WHERE `CreatureID` = 2929  AND `Idx` = 0; -- Savage Owlbeast
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7244  WHERE `CreatureID` = 2976  AND `Idx` = 0; -- Venture Co. Laborer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 355   WHERE `CreatureID` = 2976  AND `Idx` = 1; -- Venture Co. Laborer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 1122  WHERE `CreatureID` = 2976  AND `Idx` = 2; -- Venture Co. Laborer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3903  WHERE `CreatureID` = 2976  AND `Idx` = 3; -- Venture Co. Laborer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7246  WHERE `CreatureID` = 2977  AND `Idx` = 0; -- Venture Co. Taskmaster
UPDATE `creature_template_model` SET `CreatureDisplayID` = 355   WHERE `CreatureID` = 2977  AND `Idx` = 1; -- Venture Co. Taskmaster
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3908  WHERE `CreatureID` = 2977  AND `Idx` = 3; -- Venture Co. Taskmaster
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7247  WHERE `CreatureID` = 2978  AND `Idx` = 0; -- Venture Co. Worker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 355   WHERE `CreatureID` = 2978  AND `Idx` = 2; -- Venture Co. Worker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3909  WHERE `CreatureID` = 2978  AND `Idx` = 3; -- Venture Co. Worker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7245  WHERE `CreatureID` = 2979  AND `Idx` = 0; -- Venture Co. Supervisor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3904  WHERE `CreatureID` = 2979  AND `Idx` = 1; -- Venture Co. Supervisor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3905  WHERE `CreatureID` = 2979  AND `Idx` = 2; -- Venture Co. Supervisor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3906  WHERE `CreatureID` = 2979  AND `Idx` = 3; -- Venture Co. Supervisor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2864  WHERE `CreatureID` = 3281  AND `Idx` = 0; -- Sarkoth
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7237  WHERE `CreatureID` = 3282  AND `Idx` = 0; -- Venture Co. Mercenary
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3912  WHERE `CreatureID` = 3282  AND `Idx` = 2; -- Venture Co. Mercenary
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7234  WHERE `CreatureID` = 3283  AND `Idx` = 0; -- Venture Co. Enforcer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 1122  WHERE `CreatureID` = 3283  AND `Idx` = 2; -- Venture Co. Enforcer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3911  WHERE `CreatureID` = 3283  AND `Idx` = 3; -- Venture Co. Enforcer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3918  WHERE `CreatureID` = 3284  AND `Idx` = 0; -- Venture Co. Drudger
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3919  WHERE `CreatureID` = 3284  AND `Idx` = 1; -- Venture Co. Drudger
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7233  WHERE `CreatureID` = 3284  AND `Idx` = 2; -- Venture Co. Drudger
UPDATE `creature_template_model` SET `CreatureDisplayID` = 355   WHERE `CreatureID` = 3284  AND `Idx` = 3; -- Venture Co. Drudger
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7241  WHERE `CreatureID` = 3285  AND `Idx` = 0; -- Venture Co. Peon
UPDATE `creature_template_model` SET `CreatureDisplayID` = 355   WHERE `CreatureID` = 3285  AND `Idx` = 2; -- Venture Co. Peon
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3917  WHERE `CreatureID` = 3285  AND `Idx` = 3; -- Venture Co. Peon
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7238  WHERE `CreatureID` = 3286  AND `Idx` = 0; -- Venture Co. Overseer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3913  WHERE `CreatureID` = 3286  AND `Idx` = 1; -- Venture Co. Overseer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3915  WHERE `CreatureID` = 3286  AND `Idx` = 2; -- Venture Co. Overseer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4602  WHERE `CreatureID` = 3296  AND `Idx` = 2; -- Orgrimmar Grunt
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4601  WHERE `CreatureID` = 3296  AND `Idx` = 3; -- Orgrimmar Grunt
UPDATE `creature_template_model` SET `CreatureDisplayID` = 1986  WHERE `CreatureID` = 3300  AND `Idx` = 0; -- Adder
UPDATE `creature_template_model` SET `CreatureDisplayID` = 1206  WHERE `CreatureID` = 3300  AND `Idx` = 1; -- Adder
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4244  WHERE `CreatureID` = 3465  AND `Idx` = 0; -- Gilthares Firebough
UPDATE `creature_template_model` SET `CreatureDisplayID` = 1643  WHERE `CreatureID` = 3727  AND `Idx` = 0; -- Dark Strand Enforcer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10857 WHERE `CreatureID` = 3728  AND `Idx` = 1; -- Dark Strand Adept
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9751  WHERE `CreatureID` = 3730  AND `Idx` = 0; -- Dark Strand Excavator
UPDATE `creature_template_model` SET `CreatureDisplayID` = 1643  WHERE `CreatureID` = 3730  AND `Idx` = 1; -- Dark Strand Excavator
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2572  WHERE `CreatureID` = 3794  AND `Idx` = 0; -- Druid of the Talon
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2572  WHERE `CreatureID` = 3795  AND `Idx` = 0; -- Druid of the Claw
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6388  WHERE `CreatureID` = 3879  AND `Idx` = 2; -- Dark Strand Assassin
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2080  WHERE `CreatureID` = 4045  AND `Idx` = 0; -- JEFF CHOW TEST
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2238  WHERE `CreatureID` = 4166  AND `Idx` = 1; -- Gazelle
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2237  WHERE `CreatureID` = 4166  AND `Idx` = 2; -- Gazelle
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2240  WHERE `CreatureID` = 4198  AND `Idx` = 0; -- Braelyn Firehand
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2352  WHERE `CreatureID` = 4274  AND `Idx` = 0; -- Fenrus the Devourer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11315 WHERE `CreatureID` = 4356  AND `Idx` = 0; -- Bloodfen Razormaw
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2573  WHERE `CreatureID` = 4357  AND `Idx` = 0; -- Bloodfen Lashtail
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2539  WHERE `CreatureID` = 4377  AND `Idx` = 0; -- Darkmist Hatchling
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2602  WHERE `CreatureID` = 4388  AND `Idx` = 0; -- Young Murk Thresher
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4691  WHERE `CreatureID` = 4456  AND `Idx` = 0; -- Fiora Longears
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6508  WHERE `CreatureID` = 4465  AND `Idx` = 0; -- Vilebranch Warrior
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6509  WHERE `CreatureID` = 4465  AND `Idx` = 1; -- Vilebranch Warrior
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6512  WHERE `CreatureID` = 4466  AND `Idx` = 0; -- Vilebranch Scalper
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6513  WHERE `CreatureID` = 4466  AND `Idx` = 1; -- Vilebranch Scalper
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6535  WHERE `CreatureID` = 4467  AND `Idx` = 0; -- Vilebranch Soothsayer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6536  WHERE `CreatureID` = 4467  AND `Idx` = 1; -- Vilebranch Soothsayer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4678  WHERE `CreatureID` = 4834  AND `Idx` = 2; -- Theramore Infiltrator
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4681  WHERE `CreatureID` = 4834  AND `Idx` = 3; -- Theramore Infiltrator
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2970  WHERE `CreatureID` = 4968  AND `Idx` = 0; -- Lady Jaina Proudmoore
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4680  WHERE `CreatureID` = 5184  AND `Idx` = 2; -- Theramore Sentry
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4682  WHERE `CreatureID` = 5184  AND `Idx` = 3; -- Theramore Sentry
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4494  WHERE `CreatureID` = 5353  AND `Idx` = 0; -- Itharius
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3293  WHERE `CreatureID` = 5498  AND `Idx` = 0; -- Elsharin
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3976  WHERE `CreatureID` = 5680  AND `Idx` = 0; -- Male Human Captive
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3975  WHERE `CreatureID` = 5680  AND `Idx` = 1; -- Male Human Captive
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3974  WHERE `CreatureID` = 5680  AND `Idx` = 2; -- Male Human Captive
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3973  WHERE `CreatureID` = 5680  AND `Idx` = 3; -- Male Human Captive
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3980  WHERE `CreatureID` = 5681  AND `Idx` = 0; -- Female Human Captive
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3979  WHERE `CreatureID` = 5681  AND `Idx` = 1; -- Female Human Captive
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3978  WHERE `CreatureID` = 5681  AND `Idx` = 2; -- Female Human Captive
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3977  WHERE `CreatureID` = 5681  AND `Idx` = 3; -- Female Human Captive
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4591  WHERE `CreatureID` = 5936  AND `Idx` = 0; -- Orca
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5611  WHERE `CreatureID` = 6113  AND `Idx` = 0; -- Vejrek
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7922  WHERE `CreatureID` = 6198  AND `Idx` = 0; -- Blood Elf Surveyor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7923  WHERE `CreatureID` = 6199  AND `Idx` = 0; -- Blood Elf Reclaimer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5585  WHERE `CreatureID` = 6368  AND `Idx` = 0; -- Cat
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5555  WHERE `CreatureID` = 6368  AND `Idx` = 1; -- Cat
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5556  WHERE `CreatureID` = 6368  AND `Idx` = 2; -- Cat
UPDATE `creature_template_model` SET `CreatureDisplayID` = 158   WHERE `CreatureID` = 6412  AND `Idx` = 0; -- Skeleton
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2240  WHERE `CreatureID` = 6647  AND `Idx` = 0; -- Magister Hawkhelm
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5448  WHERE `CreatureID` = 6728  AND `Idx` = 2; -- Narnie
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5510  WHERE `CreatureID` = 6789  AND `Idx` = 0; -- Thistle Cub
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6630  WHERE `CreatureID` = 7505  AND `Idx` = 0; -- Bloodmage Drazial
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6631  WHERE `CreatureID` = 7506  AND `Idx` = 0; -- Bloodmage Lynnore
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6380  WHERE `CreatureID` = 7624  AND `Idx` = 0; -- Slim's Test Death Knight
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6994  WHERE `CreatureID` = 7801  AND `Idx` = 0; -- Gilveradin Sunchaser
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6512  WHERE `CreatureID` = 7809  AND `Idx` = 0; -- Vilebranch Ambusher
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7006  WHERE `CreatureID` = 7937  AND `Idx` = 0; -- High Tinker Mekkatorque
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7114  WHERE `CreatureID` = 7977  AND `Idx` = 0; -- Gammerita
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4731  WHERE `CreatureID` = 8214  AND `Idx` = 0; -- Jalinde Summerdrake
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6512  WHERE `CreatureID` = 8216  AND `Idx` = 0; -- Retherokk the Berserker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6512  WHERE `CreatureID` = 8217  AND `Idx` = 0; -- Mith'rethis the Enchanter
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6479  WHERE `CreatureID` = 8218  AND `Idx` = 0; -- Witherheart the Stalker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6479  WHERE `CreatureID` = 8219  AND `Idx` = 0; -- Zul'arek Hatefowler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7604  WHERE `CreatureID` = 8395  AND `Idx` = 0; -- Sanath Lim-yo
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10955 WHERE `CreatureID` = 8548  AND `Idx` = 1; -- Vile Tutor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10954 WHERE `CreatureID` = 8548  AND `Idx` = 2; -- Vile Tutor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10382 WHERE `CreatureID` = 8563  AND `Idx` = 0; -- Woodsman
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10379 WHERE `CreatureID` = 8564  AND `Idx` = 0; -- Ranger
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10381 WHERE `CreatureID` = 8565  AND `Idx` = 0; -- Pathstrider
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7872  WHERE `CreatureID` = 8578  AND `Idx` = 0; -- Magus Rimtori
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7874  WHERE `CreatureID` = 8581  AND `Idx` = 0; -- Blood Elf Defender
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9733  WHERE `CreatureID` = 9237  AND `Idx` = 0; -- War Master Voone
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9709  WHERE `CreatureID` = 9239  AND `Idx` = 0; -- Smolderthorn Mystic
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9710  WHERE `CreatureID` = 9239  AND `Idx` = 1; -- Smolderthorn Mystic
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9728  WHERE `CreatureID` = 9240  AND `Idx` = 0; -- Smolderthorn Shadow Priest
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9729  WHERE `CreatureID` = 9240  AND `Idx` = 1; -- Smolderthorn Shadow Priest
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9682  WHERE `CreatureID` = 9241  AND `Idx` = 0; -- Smolderthorn Headhunter
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9683  WHERE `CreatureID` = 9241  AND `Idx` = 1; -- Smolderthorn Headhunter
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9724  WHERE `CreatureID` = 9265  AND `Idx` = 0; -- Smolderthorn Shadow Hunter
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9725  WHERE `CreatureID` = 9265  AND `Idx` = 1; -- Smolderthorn Shadow Hunter
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9719  WHERE `CreatureID` = 9266  AND `Idx` = 0; -- Smolderthorn Witch Doctor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9720  WHERE `CreatureID` = 9266  AND `Idx` = 1; -- Smolderthorn Witch Doctor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9674  WHERE `CreatureID` = 9267  AND `Idx` = 0; -- Smolderthorn Axe Thrower
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9675  WHERE `CreatureID` = 9267  AND `Idx` = 1; -- Smolderthorn Axe Thrower
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9715  WHERE `CreatureID` = 9269  AND `Idx` = 0; -- Smolderthorn Seer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9716  WHERE `CreatureID` = 9269  AND `Idx` = 1; -- Smolderthorn Seer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9149  WHERE `CreatureID` = 9836  AND `Idx` = 0; -- Mathredis Firestar
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11657 WHERE `CreatureID` = 10181 AND `Idx` = 0; -- Lady Sylvanas Windrunner
UPDATE `creature_template_model` SET `CreatureDisplayID` = 9754  WHERE `CreatureID` = 10304 AND `Idx` = 0; -- Aurora Skycaller
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2582  WHERE `CreatureID` = 10403 AND `Idx` = 0; -- [UNUSED] Devouring Wight
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2582  WHERE `CreatureID` = 10404 AND `Idx` = 0; -- Pustulating Horror
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11069 WHERE `CreatureID` = 10505 AND `Idx` = 0; -- Instructor Malicia
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10357 WHERE `CreatureID` = 10540 AND `Idx` = 0; -- Vol'jin
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10225 WHERE `CreatureID` = 10758 AND `Idx` = 1; -- Grimtotem Bandit
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10224 WHERE `CreatureID` = 10758 AND `Idx` = 2; -- Grimtotem Bandit
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10240 WHERE `CreatureID` = 10759 AND `Idx` = 1; -- Grimtotem Stomper
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10239 WHERE `CreatureID` = 10759 AND `Idx` = 2; -- Grimtotem Stomper
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10230 WHERE `CreatureID` = 10760 AND `Idx` = 1; -- Grimtotem Geomancer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10228 WHERE `CreatureID` = 10760 AND `Idx` = 2; -- Grimtotem Geomancer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10375 WHERE `CreatureID` = 10824 AND `Idx` = 0; -- Ranger Lord Hawkspear
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10199 WHERE `CreatureID` = 10929 AND `Idx` = 0; -- Haleh
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11394 WHERE `CreatureID` = 10976 AND `Idx` = 0; -- Jeziba
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10909 WHERE `CreatureID` = 11064 AND `Idx` = 1; -- Darrowshire Spirit
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10908 WHERE `CreatureID` = 11064 AND `Idx` = 2; -- Darrowshire Spirit
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11223 WHERE `CreatureID` = 11340 AND `Idx` = 1; -- Hakkari Blood Priest
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11222 WHERE `CreatureID` = 11340 AND `Idx` = 2; -- Hakkari Blood Priest
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11160 WHERE `CreatureID` = 11346 AND `Idx` = 1; -- Hakkari Oracle
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11159 WHERE `CreatureID` = 11346 AND `Idx` = 2; -- Hakkari Oracle
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11076 WHERE `CreatureID` = 11350 AND `Idx` = 1; -- Gurubashi Axe Thrower
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11075 WHERE `CreatureID` = 11350 AND `Idx` = 2; -- Gurubashi Axe Thrower
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11111 WHERE `CreatureID` = 11351 AND `Idx` = 1; -- Gurubashi Headhunter
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11110 WHERE `CreatureID` = 11351 AND `Idx` = 2; -- Gurubashi Headhunter
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11082 WHERE `CreatureID` = 11353 AND `Idx` = 1; -- Gurubashi Blood Drinker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11081 WHERE `CreatureID` = 11353 AND `Idx` = 2; -- Gurubashi Blood Drinker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11169 WHERE `CreatureID` = 11355 AND `Idx` = 1; -- Gurubashi Warrior
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11168 WHERE `CreatureID` = 11355 AND `Idx` = 2; -- Gurubashi Warrior
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11327 WHERE `CreatureID` = 11388 AND `Idx` = 0; -- Witherbark Speaker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11320 WHERE `CreatureID` = 11391 AND `Idx` = 0; -- Vilebranch Speaker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11668 WHERE `CreatureID` = 11704 AND `Idx` = 0; -- Kriss Goldenlight
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11669 WHERE `CreatureID` = 11705 AND `Idx` = 0; -- Rayan Dawnrisen
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11671 WHERE `CreatureID` = 11706 AND `Idx` = 0; -- Adon
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11672 WHERE `CreatureID` = 11707 AND `Idx` = 0; -- Joy Ar'nareth
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11760 WHERE `CreatureID` = 11830 AND `Idx` = 1; -- Hakkari Priest
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11759 WHERE `CreatureID` = 11830 AND `Idx` = 2; -- Hakkari Priest
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11764 WHERE `CreatureID` = 11831 AND `Idx` = 1; -- Hakkari Witch Doctor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11763 WHERE `CreatureID` = 11831 AND `Idx` = 2; -- Hakkari Witch Doctor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11650 WHERE `CreatureID` = 11874 AND `Idx` = 0; -- Masat T'andr
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10375 WHERE `CreatureID` = 12322 AND `Idx` = 0; -- Quel'Lithien Protector
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7923  WHERE `CreatureID` = 12457 AND `Idx` = 0; -- Blackwing Spellbinder
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6630  WHERE `CreatureID` = 12457 AND `Idx` = 1; -- Blackwing Spellbinder
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2281  WHERE `CreatureID` = 12678 AND `Idx` = 0; -- Ursangous
UPDATE `creature_template_model` SET `CreatureDisplayID` = 8842  WHERE `CreatureID` = 12819 AND `Idx` = 0; -- Ruul Snowhoof Bear Form
UPDATE `creature_template_model` SET `CreatureDisplayID` = 13174 WHERE `CreatureID` = 13256 AND `Idx` = 0; -- Lokholar the Ice Lord
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6297  WHERE `CreatureID` = 13321 AND `Idx` = 0; -- Frog
UPDATE `creature_template_model` SET `CreatureDisplayID` = 901   WHERE `CreatureID` = 13321 AND `Idx` = 3; -- Frog
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14362 WHERE `CreatureID` = 14304 AND `Idx` = 1; -- Kor'kron Elite
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14361 WHERE `CreatureID` = 14304 AND `Idx` = 2; -- Kor'kron Elite
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14378 WHERE `CreatureID` = 14327 AND `Idx` = 0; -- Lethtendris
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14394 WHERE `CreatureID` = 14348 AND `Idx` = 0; -- Earthcaller Franzahl
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6630  WHERE `CreatureID` = 14387 AND `Idx` = 0; -- Lothos Riftwaker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 13069 WHERE `CreatureID` = 14495 AND `Idx` = 0; -- Invisible Trigger One
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14694 WHERE `CreatureID` = 14688 AND `Idx` = 0; -- Prince Sandoval
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14760 WHERE `CreatureID` = 14730 AND `Idx` = 0; -- Revantusk Watcher
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14762 WHERE `CreatureID` = 14730 AND `Idx` = 1; -- Revantusk Watcher
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14761 WHERE `CreatureID` = 14730 AND `Idx` = 2; -- Revantusk Watcher
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14763 WHERE `CreatureID` = 14730 AND `Idx` = 3; -- Revantusk Watcher
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14764 WHERE `CreatureID` = 14734 AND `Idx` = 0; -- Revantusk Drummer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14765 WHERE `CreatureID` = 14734 AND `Idx` = 1; -- Revantusk Drummer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14766 WHERE `CreatureID` = 14734 AND `Idx` = 2; -- Revantusk Drummer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14770 WHERE `CreatureID` = 14738 AND `Idx` = 0; -- Otho Moji'ko
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14772 WHERE `CreatureID` = 14740 AND `Idx` = 0; -- Katoom the Angler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14773 WHERE `CreatureID` = 14741 AND `Idx` = 0; -- Huntsman Markhor
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6512  WHERE `CreatureID` = 14748 AND `Idx` = 0; -- Vilebranch Kidnapper
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14786 WHERE `CreatureID` = 14757 AND `Idx` = 0; -- Elder Torntusk
UPDATE `creature_template_model` SET `CreatureDisplayID` = 16081 WHERE `CreatureID` = 14824 AND `Idx` = 0; -- GGOODMAN
UPDATE `creature_template_model` SET `CreatureDisplayID` = 3956  WHERE `CreatureID` = 14965 AND `Idx` = 1; -- Frenzied Bloodseeker Bat
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15242 WHERE `CreatureID` = 14990 AND `Idx` = 1; -- Defilers Emissary
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15240 WHERE `CreatureID` = 14990 AND `Idx` = 2; -- Defilers Emissary
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15253 WHERE `CreatureID` = 14991 AND `Idx` = 1; -- League of Arathor Emissary
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15252 WHERE `CreatureID` = 14991 AND `Idx` = 2; -- League of Arathor Emissary
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6811  WHERE `CreatureID` = 15111 AND `Idx` = 0; -- Mad Servant
UPDATE `creature_template_model` SET `CreatureDisplayID` = 568   WHERE `CreatureID` = 15111 AND `Idx` = 1; -- Mad Servant
UPDATE `creature_template_model` SET `CreatureDisplayID` = 12345 WHERE `CreatureID` = 15111 AND `Idx` = 2; -- Mad Servant
UPDATE `creature_template_model` SET `CreatureDisplayID` = 1015  WHERE `CreatureID` = 15111 AND `Idx` = 3; -- Mad Servant
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15286 WHERE `CreatureID` = 15128 AND `Idx` = 1; -- Defiler Elite
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15285 WHERE `CreatureID` = 15128 AND `Idx` = 2; -- Defiler Elite
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15325 WHERE `CreatureID` = 15193 AND `Idx` = 0; -- The Banshee Queen
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15435 WHERE `CreatureID` = 15214 AND `Idx` = 1; -- Invisible Stalker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11686 WHERE `CreatureID` = 15218 AND `Idx` = 0; -- Faire Cannon Trigger
UPDATE `creature_template_model` SET `CreatureDisplayID` = 13069 WHERE `CreatureID` = 15222 AND `Idx` = 0; -- Rutgar Invisible Trigger
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15382 WHERE `CreatureID` = 15349 AND `Idx` = 0; -- RC Blimp <PH>
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15389 WHERE `CreatureID` = 15351 AND `Idx` = 0; -- Alliance Brigadier General
UPDATE `creature_template_model` SET `CreatureDisplayID` = 525   WHERE `CreatureID` = 15352 AND `Idx` = 0; -- Greater Earth Elemental
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11686 WHERE `CreatureID` = 15384 AND `Idx` = 0; -- OLDWorld Trigger (DO NOT DELETE)
UPDATE `creature_template_model` SET `CreatureDisplayID` = 13069 WHERE `CreatureID` = 15454 AND `Idx` = 0; -- Anachronos Quest Trigger Invisible
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15467 WHERE `CreatureID` = 15475 AND `Idx` = 1; -- Beetle
UPDATE `creature_template_model` SET `CreatureDisplayID` = 8971  WHERE `CreatureID` = 15475 AND `Idx` = 2; -- Beetle
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15469 WHERE `CreatureID` = 15476 AND `Idx` = 0; -- Scorpion
UPDATE `creature_template_model` SET `CreatureDisplayID` = 5905  WHERE `CreatureID` = 15476 AND `Idx` = 1; -- Scorpion
UPDATE `creature_template_model` SET `CreatureDisplayID` = 1991  WHERE `CreatureID` = 15524 AND `Idx` = 0; -- Temporary Reindeer
UPDATE `creature_template_model` SET `CreatureDisplayID` = 13    WHERE `CreatureID` = 15608 AND `Idx` = 0; -- Medivh
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15474 WHERE `CreatureID` = 15628 AND `Idx` = 0; -- Eranikus the Redeemed
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15294 WHERE `CreatureID` = 15730 AND `Idx` = 0; -- Pat's Snowcloud Guy
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15737 WHERE `CreatureID` = 15777 AND `Idx` = 0; -- Christmas War Master Voone
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15744 WHERE `CreatureID` = 15780 AND `Idx` = 0; -- Human Male Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15745 WHERE `CreatureID` = 15781 AND `Idx` = 0; -- Human Female Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15746 WHERE `CreatureID` = 15782 AND `Idx` = 0; -- Dwarf Male Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15747 WHERE `CreatureID` = 15783 AND `Idx` = 0; -- Dwarf Female Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15748 WHERE `CreatureID` = 15784 AND `Idx` = 0; -- Night Elf Female Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15749 WHERE `CreatureID` = 15785 AND `Idx` = 0; -- Troll Female Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15751 WHERE `CreatureID` = 15786 AND `Idx` = 0; -- Orc Female Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15752 WHERE `CreatureID` = 15787 AND `Idx` = 0; -- Goblin Female Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15753 WHERE `CreatureID` = 15788 AND `Idx` = 0; -- Undead Female Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15754 WHERE `CreatureID` = 15789 AND `Idx` = 0; -- Tauren Female Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15755 WHERE `CreatureID` = 15790 AND `Idx` = 0; -- Undead Male Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15756 WHERE `CreatureID` = 15791 AND `Idx` = 0; -- Orc Male Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15757 WHERE `CreatureID` = 15792 AND `Idx` = 0; -- Troll Male Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15759 WHERE `CreatureID` = 15793 AND `Idx` = 0; -- Tauren Male Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15758 WHERE `CreatureID` = 15794 AND `Idx` = 0; -- Night Elf Male Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15750 WHERE `CreatureID` = 15795 AND `Idx` = 0; -- Goblin Male Winter Reveler
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14501 WHERE `CreatureID` = 15902 AND `Idx` = 0; -- Giant Spotlight
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11686 WHERE `CreatureID` = 15925 AND `Idx` = 0; -- Toxic Slime
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6952  WHERE `CreatureID` = 15983 AND `Idx` = 1; -- [PH] Valentine Reveler, Female
UPDATE `creature_template_model` SET `CreatureDisplayID` = 6852  WHERE `CreatureID` = 16081 AND `Idx` = 0; -- Spectral Gryphon
UPDATE `creature_template_model` SET `CreatureDisplayID` = 163   WHERE `CreatureID` = 16089 AND `Idx` = 0; -- Omar the Test Dragon
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10747 WHERE `CreatureID` = 16096 AND `Idx` = 0; -- Steamwheedle Bruiser
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11375 WHERE `CreatureID` = 16096 AND `Idx` = 1; -- Steamwheedle Bruiser
UPDATE `creature_template_model` SET `CreatureDisplayID` = 7102  WHERE `CreatureID` = 16096 AND `Idx` = 2; -- Steamwheedle Bruiser
UPDATE `creature_template_model` SET `CreatureDisplayID` = 11686 WHERE `CreatureID` = 16137 AND `Idx` = 0; -- Naxxramas Military Sub-Boss Trigger
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10627 WHERE `CreatureID` = 16141 AND `Idx` = 0; -- Ghoul Berserker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14551 WHERE `CreatureID` = 16225 AND `Idx` = 2; -- Pack Mule
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14549 WHERE `CreatureID` = 16225 AND `Idx` = 3; -- Pack Mule
UPDATE `creature_template_model` SET `CreatureDisplayID` = 16108 WHERE `CreatureID` = 16284 AND `Idx` = 0; -- Argent Medic
UPDATE `creature_template_model` SET `CreatureDisplayID` = 16107 WHERE `CreatureID` = 16284 AND `Idx` = 1; -- Argent Medic
UPDATE `creature_template_model` SET `CreatureDisplayID` = 732   WHERE `CreatureID` = 16390 AND `Idx` = 0; -- Deathchill Servant
UPDATE `creature_template_model` SET `CreatureDisplayID` = 8469  WHERE `CreatureID` = 16509 AND `Idx` = 0; -- Argent Warhorse
UPDATE `creature_template_model` SET `CreatureDisplayID` = 14584 WHERE `CreatureID` = 16510 AND `Idx` = 0; -- Argent Charger
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10005 WHERE `CreatureID` = 16698 AND `Idx` = 0; -- Corpse Scarab
UPDATE `creature_template_model` SET `CreatureDisplayID` = 15435 WHERE `CreatureID` = 16995 AND `Idx` = 0; -- Herald of the Lich King
UPDATE `creature_template_model` SET `CreatureDisplayID` = 13069 WHERE `CreatureID` = 17066 AND `Idx` = 0; -- Ribbon Pole Debug Target
UPDATE `creature_template_model` SET `CreatureDisplayID` = 2467  WHERE `CreatureID` = 17313 AND `Idx` = 0; -- Slim's Unkillable Test Dummy
UPDATE `creature_template_model` SET `CreatureDisplayID` = 12956 WHERE `CreatureID` = 17598 AND `Idx` = 0; -- Renn'az
UPDATE `creature_template_model` SET `CreatureDisplayID` = 17328 WHERE `CreatureID` = 17660 AND `Idx` = 0; -- Skeletal Gryphon
