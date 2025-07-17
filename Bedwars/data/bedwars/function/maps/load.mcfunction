# get number of maps
scoreboard players remove map_count data 1
execute store result storage bedwars:maps count int 1 run scoreboard players get map_count data
scoreboard players add map_count data 1
# pick map
execute if score map_count data matches 1.. run function bedwars:maps/load_sub1 with storage bedwars:maps
execute if score map_count data matches ..0 run say ERROR: no maps supplied for map loading

# load the map information
execute if score map_count data matches 1.. run function bedwars:maps/load_sub2 with storage bedwars:maps

# run the loading file of the map
execute if score map_count data matches 1.. run function bedwars:maps/load_sub3 with storage bedwars:maps selected_map

# reset spawner cooldown
function bedwars:spawners/reset_cooldown