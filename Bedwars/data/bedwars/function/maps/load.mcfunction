# get number of maps
scoreboard players remove map_count data 1
execute store result storage bedwars:maps count int 1 run scoreboard players get map_count data
scoreboard players add map_count data 1
# pick map
execute if score map_count data matches ..0 run return run say ERROR: no maps supplied for map loading

# pick a map
execute if score random_map data matches 1 run function bedwars:maps/load_sub1 with storage bedwars:maps

#data modify storage bedwars:maps id set value 1

# load the map information
function bedwars:maps/load_sub2 with storage bedwars:maps

# run the loading file of the map
function bedwars:maps/load_sub3 with storage bedwars:maps selected_map