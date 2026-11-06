-- Goblin start position (Kezan, the patio of the KTC villa, next to Sassy Hardwrench)
SET @GoblinStartX                       = -8956.5;
SET @GoblinStartY                       = -11429.5;
SET @GoblinStartZ                       = 104.82;
SET @GoblinStartO                       = 4.562;

-- Factions
SET @PygmyFaction                       = 1157; -- Cataclysm ID

-- Faction templates (Cataclysm IDs, except Orgrimmar's: Cataclysm's 2238 is @GoblinFactionTemplate here)
SET @BilgewaterCivilianFactionTemplate  = 2159; -- Bilgewater goblins with no enemies of their own
SET @BilgewaterCivilian2FactionTemplate = 2160;
SET @PredatorFactionTemplate            = 2200; -- Wildlife
SET @BilgewaterFighterFactionTemplate   = 2227; -- Bilgewater goblins that fight the Oomlot
SET @OomlotFactionTemplate              = 2228; -- Hostile to players and Bilgewater goblins. Pygmy Helmet pacifies them
SET @TownInABoxFactionTemplate          = 2231; -- Town-In-A-Box residents, who fight the Oomlot
SET @OrgrimmarAlliedFactionTemplate     = 2400; -- Orgrimmar-aligned, hostile to Monster

-- Spell visual effects that are 90110 and 90111 in Zeppelin-Craft, which are F-063's altered form effects here
SET @ZepEffect90110                     = 90112;
SET @ZepEffect90111                     = 90113;
