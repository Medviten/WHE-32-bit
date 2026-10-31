/* Ensures that race-restricted items include Quillboar (as Tauren) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @QuillboarMask WHERE `allowablerace` & @TaurenMask AND `allowablerace` != -1;
