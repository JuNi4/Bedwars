# player bases #
execute positioned 0 0 -75 run function bedwars:maps/api/create_base_island {rotation:"NONE", facing:"south", team:"red"}
execute if score teams data matches 3.. positioned 75 0 0 run function bedwars:maps/api/create_base_island {rotation:"CLOCKWISE_90", facing:"west", team:"yellow"}
execute positioned 0 0 75 run function bedwars:maps/api/create_base_island {rotation:"CLOCKWISE_180", facing:"north", team:"lime"}
execute if score teams data matches 4.. positioned -75 0 0 run function bedwars:maps/api/create_base_island {rotation:"COUNTERCLOCKWISE_90", facing:"east", team:"blue"}

# diamond islands
execute positioned 50 0 -50 run function bedwars:maps/api/create_diamond_island {rotation:"NONE"}
execute if score teams data matches 3.. positioned 50 0 50 run function bedwars:maps/api/create_diamond_island  {rotation:"CLOCKWISE_90"}
execute positioned -50 0 50 run function bedwars:maps/api/create_diamond_island  {rotation:"CLOCKWISE_180"}
execute if score teams data matches 4.. positioned -50 0 -50 run function bedwars:maps/api/create_diamond_island  {rotation:"COUNTERCLOCKWISE_90"}

# middle island
execute positioned 0 0 0 run function bedwars:maps/api/create_middle_island