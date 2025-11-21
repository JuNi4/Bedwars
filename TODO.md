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

- [x] fix multiplayer raycast
- [x] bedrock sourrunding
- [x] death selection fix
- [x] animatronic head movement
- [ ] hearing system
- [x] increasing animatronic speed
- [ ] animatronic chases

# BUGS / FIXES / POLISH

- [ ] optimise datapack
    - [x] Popuptowe8r
    - [ ] team upgrades
          Function name                                                         | calls | @e
    - [ ] bedwars:shop_items/utilities/tick/popuptower_place/-1171923746 size=7 | 16    | 112
    - [ ] bedwars:shop/team_upgrades/3555964 size=62                            | 4     | 56
    - [x] bedwars:shop_items/utilities/tick/sponge size=28                      | 1     | 28
    - [ ] bedwars:shop_items/utilities/tick/popuptower_dir/3555964 size=9       | 4     | 20
    - [ ] bedwars:rotary_items/default_items/tick/proximitymine size=16         | 1     | 17
    - [ ] bedwars:rotary_items/default_items/tick/remotedetonator size=13       | 1     | 16
    - [ ] bedwars:rotary_items/default_items/tick/smokebomb size=15             | 1     | 15
    - [ ] bedwars:game/alarm_trap/3555964 size=11                               | 4     | 13
    - [ ] bedwars:rotary_items/default_items/tick/jumpscare size=17             | 1     | 13
    - [ ] bedwars:game/spawn/3555964 size=7                                     | 4     | 12
    - [ ] bedwars:shop/healpool/3555964 size=2                                  | 4     | 12
    - [ ] bedwars:rotary_items/default_items/tick/slimeplatform size=12         | 1     | 12
    - [ ] bedwars:shop_items/utilities/tick/eggbridge size=13                   | 1     | 10
    - [ ] bedwars:rotary_items/default_items/tick/poisongranade size=9          | 1     | 10
    - [ ] bedwars:rotary_items/default_items/tick/emeticgranade size=9          | 1     | 10
    - [ ] bedwars:rotary_items/default_items/tick/timewarppearl size=8          | 1     | 9
- [x] Protection does not work somehow (on leather armor)
- [x] allow map to set spawner cooldown
- [x] Curse of vanishing does not work on iron armor
- [x] cabooms block poisons
- [x] jumpscare trap does not work
- [x] make fell out of world damage instead of /kill
- [x] grenade arrows don't have owners
- [x] grenade arrows don't cause the hit person to have the effect
- [x] make caboom thingy destruction thingy at y level of tnt
- [x] make respawn time not show -1
- [ ] make start happen after an amount of time with a countdown
- [x] set spawn on join
- [x] spectators can trigger alarm traps
- [x] check if at least 2 players are present before starting the game
- [?] bed gone message flickers
- [ ] anounce team eliminated
- [ ] not have spawners spawn more than necessary (diamond spawners 8 max, ...)
- [x] disable friendly fire
- [x] remove armor recipes
- [ ] make shops immovable
- [ ] armor is not refunded when already having one

# ToDo (Bonus)

- [x] abstract & simple map
- [x] popup tower arrow (like avm)
- [x] quicker unalive when falling down
- [x] rotary item shop api
- [x] regular item shop api
- [ ] team upgrade api
- [ ] make pickaxes, axes, shears permanent
- [ ] make most items not drop, like tools, armor, etc
- [1] add traps
- [x] have between 2 and 5 maps total
- [ ] add triggers for the most essential functions
- [ ] a bit of balancing at the end
- [ ] balance healpool
- ~~[ ] make blast resistance upgrades~~ (impossible)
- [ ] ability to not partake in a match at all and spectate from the beginning


# IDEAS


- item that freezes projectiles
- block zapper
- (for traps) magic milk
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
- explosive sheep

- sudden death
- disable the locator bar
- show your teamates position on the locator bar
- map specific bed blocks?
- countdown when starting the game

- seperate the default content from the game itself
- documentation of apis

- make the team chest locked (i don't know if it is possible)
- dialogs instead of villagers for shops