# player bases #
execute positioned 6 0 50 run function bedwars:maps/api/create_base_island {structure:"bedwars:snow_globe_map/base", rotation:"CLOCKWISE_180", facing:"north", team:"red"}
execute if score teams data matches 3.. positioned 50 0 -6 run function bedwars:maps/api/create_base_island {structure:"bedwars:snow_globe_map/base", rotation:"CLOCKWISE_90", facing:"west", team:"yellow"}
execute positioned -6 0 -50 run function bedwars:maps/api/create_base_island {structure:"bedwars:snow_globe_map/base", rotation:"NONE", facing:"south", team:"lime"}
execute if score teams data matches 4.. positioned -50 0 6 run function bedwars:maps/api/create_base_island {structure:"bedwars:snow_globe_map/base", rotation:"COUNTERCLOCKWISE_90", facing:"east", team:"blue"}

# middle island
execute positioned -11 0 -14 run function bedwars:maps/snow_globe/create_middle_island {structure:"bedwars:snow_globe_map/center"}

# reset spawner cooldown
function bedwars:maps/snow_globe/reset_cooldown

# set time of day
time set noon