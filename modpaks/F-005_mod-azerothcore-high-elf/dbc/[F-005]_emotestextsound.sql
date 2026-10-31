-- [F-005] mod-azerothcore-high-elf: emotestextsound: 68 inserts, 0 updates, 0 deletes
-- High Elf voices from Turtle WoW (optional, needs [F-005]_soundentries.sql); replaces the BASE rows.
-- Turtle (race 10) also voices Agree, Greet, Hail, Introduce, Tired, Victory and Roar, which no stock race does.
-- Not taken from Turtle: the laugh/cry/chicken/kiss emotes (the shared Blood Elf model plays those through its
-- animations, so they'd sound twice), its 1.12 Welcome/YW mix-up and its Dwarf Bored/Whistle sounds.

-- New entries
DELETE FROM `emotestextsound` WHERE `race_id` = @HighElf;
SET @EmotesTextSoundID = (SELECT COALESCE(MAX(id), 0) FROM `emotestextsound`);
INSERT INTO `emotestextsound` (`id`, `emotes_text_id`, `race_id`, `sex_id`, `sound_id`) VALUES
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteBored,          @HighElf, @Female,  10025), -- Blood Elf (no High Elf version)
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteBored,          @HighElf, @Male,    10026), -- Blood Elf (no High Elf version)
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteBye,            @HighElf, @Female, 200095),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteBye,            @HighElf, @Male,   200105),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteCheer,          @HighElf, @Female, 200091),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteCheer,          @HighElf, @Male,   200107),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteCongratulate,   @HighElf, @Female, 200100),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteCongratulate,   @HighElf, @Male,   200108),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteHello,          @HighElf, @Female, 200094),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteHello,          @HighElf, @Male,   200113),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteNo,             @HighElf, @Female, 200097),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteNo,             @HighElf, @Male,   200116),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteNod,            @HighElf, @Female, 200096),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteNod,            @HighElf, @Male,   200117),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteSigh,           @HighElf, @Female, 200126),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteSigh,           @HighElf, @Male,   200128),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteThank,          @HighElf, @Female, 200098),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteThank,          @HighElf, @Male,   200122),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteWelcome,        @HighElf, @Female, 200094),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteWelcome,        @HighElf, @Male,   200113),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteWhistle,        @HighElf, @Female,  10032), -- Blood Elf (no High Elf version)
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteWhistle,        @HighElf, @Male,    10033), -- Blood Elf (no High Elf version)
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteYawn,           @HighElf, @Female, 200127),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteYawn,           @HighElf, @Male,   200129),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteRasp,           @HighElf, @Female, 200093),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteRasp,           @HighElf, @Male,   200120),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteTrain,          @HighElf, @Female, 200103),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteTrain,          @HighElf, @Male,   200123),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteHelpme,         @HighElf, @Female, 200082),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteHelpme,         @HighElf, @Male,   200114),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteIncoming,       @HighElf, @Female, 200083),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteIncoming,       @HighElf, @Male,   200115),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteCharge,         @HighElf, @Female, 200084),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteCharge,         @HighElf, @Male,   200106),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteFlee,           @HighElf, @Female, 200085),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteFlee,           @HighElf, @Male,   200109),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteAttackmytarget, @HighElf, @Female, 200086),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteAttackmytarget, @HighElf, @Male,   200104),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteOom,            @HighElf, @Female, 200087),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteOom,            @HighElf, @Male,   200118),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteFollow,         @HighElf, @Female, 200088),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteFollow,         @HighElf, @Male,   200111),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteWait,           @HighElf, @Female, 200089),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteWait,           @HighElf, @Male,   200124),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteHealme,         @HighElf, @Female, 200090),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteHealme,         @HighElf, @Male,   200112),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteOpenfire,       @HighElf, @Female, 200092),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteOpenfire,       @HighElf, @Male,   200119),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteFlirt,          @HighElf, @Female, 200101),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteFlirt,          @HighElf, @Male,   200110),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteJoke,           @HighElf, @Female, 200102),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteJoke,           @HighElf, @Male,   200121),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteYw,             @HighElf, @Female, 200099),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteYw,             @HighElf, @Male,   200125),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteAgree,          @HighElf, @Female, 200096),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteAgree,          @HighElf, @Male,   200117),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteGreet,          @HighElf, @Female, 200094),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteGreet,          @HighElf, @Male,   200113),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteHail,           @HighElf, @Female, 200094),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteHail,           @HighElf, @Male,   200113),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteIntroduce,      @HighElf, @Female, 200094),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteIntroduce,      @HighElf, @Male,   200113),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteTired,          @HighElf, @Female, 200127),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteTired,          @HighElf, @Male,   200129),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteVictory,        @HighElf, @Female, 200091),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteVictory,        @HighElf, @Male,   200107),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteRoar,           @HighElf, @Female, 200133),
(@EmotesTextSoundID := @EmotesTextSoundID +1, @EmoteRoar,           @HighElf, @Male,   200132);
