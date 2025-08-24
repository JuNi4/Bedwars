# player bases #
execute positioned -11 0 -110 run function bedwars:maps/api/create_base_island {structure:"bedwars:fortress_map/base", rotation:"NONE", facing:"south", team:"red"}
execute if score teams data matches 3.. positioned 110 0 -11 run function bedwars:maps/api/create_base_island {structure:"bedwars:fortress_map/base", rotation:"CLOCKWISE_90", facing:"west", team:"yellow"}
execute positioned 11 0 110 run function bedwars:maps/api/create_base_island {structure:"bedwars:fortress_map/base", rotation:"CLOCKWISE_180", facing:"north", team:"lime"}
execute if score teams data matches 4.. positioned -110 0 11 run function bedwars:maps/api/create_base_island {structure:"bedwars:fortress_map/base", rotation:"COUNTERCLOCKWISE_90", facing:"east", team:"blue"}

# diamond islands
execute positioned 59 -5 -87 run function bedwars:maps/api/create_diamond_island {structure:"bedwars:fortress_map/diamond_spawner_a", rotation:"NONE"}
execute positioned 88 -5 59 run function bedwars:maps/api/create_diamond_island  {structure:"bedwars:fortress_map/diamond_spawner_b", rotation:"CLOCKWISE_90"}
execute positioned -59 -5 87 run function bedwars:maps/api/create_diamond_island  {structure:"bedwars:fortress_map/diamond_spawner_a", rotation:"CLOCKWISE_180"}
execute positioned -88 -5 -59 run function bedwars:maps/api/create_diamond_island  {structure:"bedwars:fortress_map/diamond_spawner_b", rotation:"COUNTERCLOCKWISE_90"}

# middle island
execute positioned 22 -13 22 run function bedwars:maps/api/create_middle_island {structure:"bedwars:fortress_map/middle_1_1"}
execute positioned -22 -13 22 run function bedwars:maps/api/create_middle_island {structure:"bedwars:fortress_map/middle_0_1"}
execute positioned -66 -13 22 run function bedwars:maps/api/create_middle_island {structure:"bedwars:fortress_map/middle_-1_1"}

execute positioned 22 -13 -22 run function bedwars:maps/api/create_middle_island {structure:"bedwars:fortress_map/middle_1_0"}
execute positioned -22 -13 -22 run function bedwars:maps/api/create_middle_island {structure:"bedwars:fortress_map/middle_0_0"}
execute positioned -22 -27 -22 run function bedwars:maps/api/create_middle_island {structure:"bedwars:fortress_map/middle_0_0_low"}
execute positioned -66 -13 -22 run function bedwars:maps/api/create_middle_island {structure:"bedwars:fortress_map/middle_-1_0"}

execute positioned 22 -13 -66 run function bedwars:maps/api/create_middle_island {structure:"bedwars:fortress_map/middle_1_-1"}
execute positioned -22 -13 -66 run function bedwars:maps/api/create_middle_island {structure:"bedwars:fortress_map/middle_0_-1"}
execute positioned -66 -13 -66 run function bedwars:maps/api/create_middle_island {structure:"bedwars:fortress_map/middle_-1_-1"}

# remove a stray structure block
setblock 21 -13 21 air

# reset spawner cooldown
function bedwars:maps/fortress/reset_cooldown

# set time of day
time set night