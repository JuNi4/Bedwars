# player bases #
execute positioned 2 0 -75 run \
    function bedwars:maps/api/create_base_island {structure:"bedwars:skyblock_map/skyblock_island", rotation:"CLOCKWISE_180", facing:"south", team:"red"}
execute positioned 0 0 -68 run \
    function bedwars:maps/api/create_base_island {structure:"bedwars:skyblock_map/bed_island", rotation:"CLOCKWISE_90", facing:"north", team:"red"}

execute if score teams data matches 3.. positioned 75 0 2 run \
    function bedwars:maps/api/create_base_island {structure:"bedwars:skyblock_map/skyblock_island", rotation:"COUNTERCLOCKWISE_90", facing:"west", team:"yellow"}
execute if score teams data matches 3.. positioned 65 0 -2 run \
    function bedwars:maps/api/create_base_island {structure:"bedwars:skyblock_map/bed_island", rotation:"NONE", facing:"west", team:"yellow"}

execute positioned -3 0 75 run \
    function bedwars:maps/api/create_base_island {structure:"bedwars:skyblock_map/skyblock_island", rotation:"NONE", facing:"north", team:"lime"}
execute positioned -1 0 68 run \
    function bedwars:maps/api/create_base_island {structure:"bedwars:skyblock_map/bed_island", rotation:"COUNTERCLOCKWISE_90", facing:"south", team:"lime"}

execute if score teams data matches 4.. positioned -75 0 -3 run \
    function bedwars:maps/api/create_base_island {structure:"bedwars:skyblock_map/skyblock_island", rotation:"CLOCKWISE_90", facing:"east", team:"blue"}
execute if score teams data matches 4.. positioned -65 0 1 run \
    function bedwars:maps/api/create_base_island {structure:"bedwars:skyblock_map/bed_island", rotation:"CLOCKWISE_180", facing:"east", team:"blue"}