# mod-worgoblin-high-elf
## F-018_squished_client

### Features
- Supports the squished client, whose sounds were converted from `.wav` to `.ogg` to save about 7 GB
- Points every `.wav` in `SoundEntries.dbc` and `SoundEntriesAdvanced.dbc` at the `.ogg` file of the same name, so sounds play in the squished client

### Client patch
`patches/client/ogg-sound-fallback.patch` makes the client itself fall back to the other extension when a sound file is missing: a `.wav` that isn't there is opened as `.ogg`, and an `.ogg` as `.wav`. This works like models, where the client loads `.m2` when asked for `.mdx`. The fallback is tried only after the normal open fails, so clients that have the file pay nothing.

With the patch applied, this modpak is no longer needed: the stock DBCs play the squished client's `.ogg` files, and the same client still works with a standard client's `.wav` files. Keep F-018 in the manifest only for clients without the patch.

The patch applies to wowdecomp as it was before this project's changes. The wowdecomp client already includes it. There is no equivalent for a stock `Wow.exe`, which needs this modpak.
