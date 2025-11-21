# player bases #
execute positioned -3 2 -29 run function bedwars:maps/api/create_base_island {structure:"bedwars:resin_rush_map/base", rotation:"NONE", facing:"south", team:"red"}
execute if score teams data matches 3.. positioned 29 2 -3 run function bedwars:maps/api/create_base_island {structure:"bedwars:resin_rush_map/base", rotation:"CLOCKWISE_90", facing:"west", team:"yellow"}
execute positioned 3 2 29 run function bedwars:maps/api/create_base_island {structure:"bedwars:resin_rush_map/base", rotation:"CLOCKWISE_180", facing:"north", team:"lime"}
execute if score teams data matches 4.. positioned -29 2 3 run function bedwars:maps/api/create_base_island {structure:"bedwars:resin_rush_map/base", rotation:"COUNTERCLOCKWISE_90", facing:"east", team:"blue"}

# diamond islands
execute positioned 15 2 -20 run function bedwars:maps/api/create_diamond_island {structure:"bedwars:resin_rush_map/diamond_island", rotation:"NONE"}
execute if score teams data matches 3.. positioned 19 2 15 run function bedwars:maps/api/create_diamond_island {structure:"bedwars:resin_rush_map/diamond_island", rotation:"CLOCKWISE_90"}
execute positioned -16 2 19 run function bedwars:maps/api/create_diamond_island {structure:"bedwars:resin_rush_map/diamond_island", rotation:"CLOCKWISE_180"}
execute if score teams data matches 4.. positioned -20 2 -16 run function bedwars:maps/api/create_diamond_island {structure:"bedwars:resin_rush_map/diamond_island", rotation:"COUNTERCLOCKWISE_90"}

# middle island
execute positioned -12 0 -12 run function bedwars:maps/api/create_middle_island {structure:"bedwars:resin_rush_map/center"}

# reset spawner cooldown
function bedwars:maps/default/reset_cooldown

# set time of day
time set noon

execute as @e[tag=item_shop] run data modify entity @s Offers.Recipes[0] set value {maxUses:9999999,buy:{id:"iron_ingot",count:1},sell:{id:"resin_block",count:8}}