# mod-worgoblin-high-elf
## F-092_racial-mount-merchant

### Features
- Adds Zaz Gearhandle, a Racial Mount Dealer in Booty Bay, on the Booty Bay faction, so he trades with both Alliance and Horde
- He sells the racial mounts of every race modpak in the manifest, to any race, with no reputation requirement
- Prices and riding skill requirements are those of the items themselves

### Requirements
- List it after every race modpak in the manifest, so that their mount items exist when it runs

### Adding a race
Add the race's `@<Race>Mount<N>Item` variables to the list in `sql/db-world/base/[F-092]_racial_mount_merchant.sql`.
