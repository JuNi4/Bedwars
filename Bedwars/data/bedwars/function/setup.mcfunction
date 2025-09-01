# gamerules
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
setworldspawn 0 131 0

# teams
function bedwars:setup/create_teams

# scoreboards
function bedwars:setup/create_scoreboards

# default values
scoreboard players set tps data 20
scoreboard players set respawn_time data 120

# setup the world
function bedwars:reset

function bedwars:_load

# set random map = true
scoreboard players set random_map data 1