# gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doFireTick false
gamerule keepInventory true
gamerule doInsomnia false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false
gamerule announceAdvancements false
gamerule commandModificationBlockLimit 999999999
gamerule randomTickSpeed 0

# teams (existing function)

# scoreboards (change to existing function)
scoreboard objectives add spawn_cooldown_display dummy
scoreboard objectives add item_deathtime dummy
scoreboard objectives add spawn_cooldown_max dummy
scoreboard objectives add spawn_cooldown dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add deathTimeInS dummy
scoreboard objectives add data dummy

# default values
scoreboard players set tps data 20
scoreboard players set respawn_time data 120