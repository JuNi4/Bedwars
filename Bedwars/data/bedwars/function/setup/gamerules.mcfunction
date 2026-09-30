# gamerules
## Before 1.21.11
#:if version::isBelow("1.21.11")
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doFireTick false
gamerule doMobSpawning false
#gamerule keepInventory true
gamerule doInsomnia false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false
gamerule announceAdvancements false
gamerule commandModificationBlockLimit 999999999
gamerule randomTickSpeed 0
gamerule doLimitedCrafting true
gamerule doImmediateRespawn true
gamerule locatorBar false

# spawn
gamerule spawnRadius 0

## After 1.21.11
#:else
#::line("gamerule advance_time false")
#::line("gamerule advance_weather false")
#::line("gamerule fire_spread_radius_around_player 0")
#::line("gamerule spawn_mobs false")
#::line("gamerule spawn_phantoms false")
#::line("gamerule spawn_wandering_traders false")
#::line("gamerule spawn_patrols false")
#::line("gamerule show_advancement_messages false")
#::line("gamerule max_block_modifications 999999999")
#::line("gamerule random_tick_speed 0")
#::line("gamerule limited_crafting true")
#::line("gamerule immediate_respawn true")
#::line("gamerule locator_bar false")
#::line("gamerule respawn_radius 0")

#:endif