# mod-worgoblin-high-elf
## F-088_mod-two-names

### Features
- Supports [mod-two-names](https://github.com/AlsoNotMehh/mod-two-names) by AlsoNotMehh: character names with a first and a last name, e.g. `John Doe`
- No DBC changes and nothing applied by build-dbc.sh, only the patches the module needs and one manual SQL extra

### Core patch
`patches/core/name-hooks.patch` adds the `CanNormalizePlayerName` and `OnCheckPlayerName` hooks the module needs to compile. With no handler, the original name checks run. build-patch.sh includes the patch in combined-core.patch while F-088 is in the manifest. The default branch of [azerothcore-wotlk-32-bit](https://github.com/Medviten/azerothcore-wotlk-32-bit) already includes these hooks.

`patches/core/whisper-names-with-spaces.patch` handles `/w John Doe hello` typed without quotes, which the client sends as a whisper to `John` saying `Doe hello`. If no `John` is online, the core tries the first words of the message as the rest of the name, up to three words. A player actually named `John` keeps priority.

### Client patch
`patches/client/names-with-spaces.patch` lets the client's name check accept spaces and hyphens, any character set it knows, and names of up to 47 bytes. It applies to wowdecomp as it was before this project's changes; the wowdecomp client already includes it. On a stock `Wow.exe`, use the module's `patch_wow.bat` instead.

### Interface patch
Accepting a name with a space doesn't make the client send it. Stock `ChatFrame.lua` shortens a whisper target to its first word unless the full name is on the autocomplete list (friends, guild, group and so on), so `John Doe` becomes `John`.

`patches/interface/chat-names-with-spaces.patch` fixes that in `Interface/FrameXML/ChatFrame.lua`:
- Clicking a name in chat, and Whisper in menus, whisper the whole name
- `/w "John Doe" hello` and `/friend "John Doe" note` accept quoted names
- Chat history recalls these whispers correctly

Typing `/w John Doe hello` without quotes is handled by the core patch, since the client can't tell where the name ends. The chat box's sticky target still says `John` afterwards, so quote the name to keep whispering that player.

To install it, extract the stock `Interface/FrameXML/ChatFrame.lua` from your client (`Data/enUS/patch-enUS-3.MPQ` on a patched client), put it in the same path in your patch folder, and apply the patch from that folder's root:

```text
git apply --ignore-space-change --ignore-whitespace chat-names-with-spaces.patch
```

### Installing the module
Clone mod-two-names into your `modules` folder and follow its readme, but skip its hook patch if you use the patch here or the fork. You still need these two steps from its readme:
- Widen the name columns: the `name` column only holds 12 characters by default, and the module's `TwoNames.MaxNameLength` defaults to 25. AzerothCore runs the module's `01_two_names_table_size.sql` by itself at startup, if `Updates.EnableDatabases` includes the characters database. That file also changes the columns' collations, so run `sql/db-characters/extra/[F-088]_name_length.sql` on your characters database yourself afterwards. It sets the same lengths and restores them.
- Add the module's `client/GlueXML` files to your client. They raise the name box's 12-letter typing limit and add two-part random names. Its `GlueXML.toc` replaces the stock file, so merge it if your client already changes that file.
