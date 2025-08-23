# ToDo (MVP)

- [x] make win detection work properly
- [x] fix protection pricing
- [x] add sharpness upgrade
- [x] make egg bridge care about team color
- [x] add bed gone
- [x] add smoke grenade to rotary item shop + make it work with team colors
- [x] add healpool
- [x] add one last respawn, if you died before bed was destroyed
- [x] respawn info if died
- [x] play sound on team upgrade bought
- [x] Sponges & Water in shop
- [x] map api
- [x] reduce attack damage of axes & tridents
- [x] make bed not destructable by explosions (check if bed is sourrounded by blocks & a player (of a different team) must be nearby)
- [x] fortress map
- [x] cleaner map clear
- [x] move the lobby to 0 0 instead of at 500 500
- [x] add ranged weapons to shop
- [x] add potions to shop (invis, jumpboost, speed)
- [x] improve team player picker, to support not divisible team counts
- [x] add settings menu
- [x] fix bed gone
- [x] integrate map registry with load function
- [x] playtest with 4+ people
- [x] ice map (small)


# BUGS / FIXES / POLISH

- [x] Curse of vanishing does not work on iron armor
- [x] cabooms block poisenss
- [ ] jumpscare trap does not work
- [x] make fell out of world damage instead of /kill
- ~~[ ] make team chests locked~~ (impossible to my current knowledge)
- [ ] grenade arrows don't have owners
- [x] grenade arrows don't cause the hit person to have the effect
- [ ] make caboom thingy destruction thingy at y level of tnt
- [ ] make respawn time not show -1
- [ ] Protection does not work somehow
- [ ] protection removes blast protection
- [ ] allow map to set spawner cooldown


# ToDo (Bonus)

- [x] quicker unalive when falling down
- [ ] rotary item shop api
- [x] regular item shop api
- [ ] team upgrade api
- [ ] make most items not drop, like tools, armor, etc
- [x] add traps
- [ ] have between 2 and 5 maps total
- [ ] a bit of balancing at the end
- [ ] optimise datapack
- [ ] use dialogs for the shops?
- [ ] make pickaxes, axes, shears permanent
- ~~[ ] make blast resistance upgrades~~ (impossible)


# IDEAS

- abstract & simple map

- item that freezes projectiles
- block zapper
- (for traps) magic milk
- popup tower arrow (like avm)
- player shuffle (with someone from your own team?)
- player locator
- bundles
- rocket that launches you up
- portable enderchest?
- shulker box
- flint and steel
- instant bed protection. can be placed near a bed to cover it with basic protection
- unignited tnt
- bed mover. moves a bed up to 5 blocks. might have to be anounced globally and only be usable once per team.

- sudden death
- disable the locator bar
- show your teamates position on the locator bar
- map specific bed blocks?
- countdown when starting the game

- seperate the default content from the game itself
- documentation of apis


# Other

- [x] Upload to GitHub
- [ ] Publish
- [ ] Video????


# Changelogs

## Beta v0.1
baseic game functionallity with one map, most items from the item shop, some upgrades and in generall a functional but basic version

## Beta v0.2
- fully added fortress map
- added snow globe map
- added item shop api
- fixed curse of vanishing not being on some armor
- fixed bed gone
- moved the spawn to 0 0 with a proper lobby
- prohibited the start of a new game while the clear is still running
- made ematic and poisen grenade arrows cause the effect upon hitting a player instead of being wasted
- quicker death for people who fell out of the world
- added bows to the item shop
- added potions to the item shop
- added a settings menu for changing the team count
- improved player picker
- added alarm trap