# player bases #
execute positioned 11 0 -50 run function bedwars:maps/api/create_base_island {structure:"bedwars:shapes_map/triangle", rotation:"CLOCKWISE_180", facing:"north", team:"red"}
execute if score teams data matches 3.. positioned 50 0 11 run function bedwars:maps/api/create_base_island {structure:"bedwars:shapes_map/triangle", rotation:"COUNTERCLOCKWISE_90", facing:"east", team:"yellow"}
execute positioned -11 0 50 run function bedwars:maps/api/create_base_island {structure:"bedwars:shapes_map/triangle", rotation:"NONE", facing:"south", team:"lime"}
execute if score teams data matches 4.. positioned -50 0 -11 run function bedwars:maps/api/create_base_island {structure:"bedwars:shapes_map/triangle", rotation:"CLOCKWISE_90", facing:"west", team:"blue"}

# diamond islands
execute positioned 30 0 -50 run function bedwars:maps/shapes/create_diamond_island {structure:"bedwars:shapes_map/circle", rotation:"NONE"}
execute if score teams data matches 3.. positioned 50 0 30 run function bedwars:maps/shapes/create_diamond_island {structure:"bedwars:shapes_map/circle", rotation:"CLOCKWISE_90"}
execute positioned -30 0 50 run function bedwars:maps/shapes/create_diamond_island {structure:"bedwars:shapes_map/circle", rotation:"CLOCKWISE_180"}
execute if score teams data matches 4.. positioned -50 0 -30 run function bedwars:maps/shapes/create_diamond_island {structure:"bedwars:shapes_map/circle", rotation:"COUNTERCLOCKWISE_90"}

# middle island
execute positioned -11 0 -11 run function bedwars:maps/shapes/create_middle_island {structure:"bedwars:shapes_map/square"}

# reset spawner cooldown
function bedwars:maps/default/reset_cooldown

# set time of day
time set day