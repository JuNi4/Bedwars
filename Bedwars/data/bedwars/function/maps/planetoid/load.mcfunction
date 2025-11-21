# player bases #
execute positioned 18 0 -75 run function bedwars:maps/api/create_base_island {structure:"bedwars:planetoid_map/satelite", rotation:"CLOCKWISE_90", facing:"west", team:"red"}
execute if score teams data matches 3.. positioned 75 0 18 run function bedwars:maps/api/create_base_island {structure:"bedwars:planetoid_map/satelite", rotation:"CLOCKWISE_180", facing:"north", team:"yellow"}
execute positioned -18 0 75 run function bedwars:maps/api/create_base_island {structure:"bedwars:planetoid_map/satelite", rotation:"COUNTERCLOCKWISE_90", facing:"east", team:"lime"}
execute if score teams data matches 4.. positioned -75 0 -18 run function bedwars:maps/api/create_base_island {structure:"bedwars:planetoid_map/satelite", rotation:"NONE", facing:"south", team:"blue"}

# diamond islands
execute positioned 33 0 -72 run function bedwars:maps/api/create_diamond_island {structure:"bedwars:planetoid_map/moon", rotation:"NONE"}
execute if score teams data matches 3.. positioned 33 0 29 run function bedwars:maps/api/create_diamond_island {structure:"bedwars:planetoid_map/moon", rotation:"NONE"}
execute positioned -68 0 29 run function bedwars:maps/api/create_diamond_island {structure:"bedwars:planetoid_map/moon", rotation:"NONE"}
execute if score teams data matches 4.. positioned -68 0 -72 run function bedwars:maps/api/create_diamond_island {structure:"bedwars:planetoid_map/moon", rotation:"NONE"}

# middle island
execute positioned -24 0 -24 run function bedwars:maps/api/create_middle_island {structure:"bedwars:planetoid_map/planet"}

# reset spawner cooldown
function bedwars:maps/default/reset_cooldown

# set time of day
time set midnight