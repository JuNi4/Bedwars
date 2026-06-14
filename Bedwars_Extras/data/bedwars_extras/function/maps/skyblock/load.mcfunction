execute store result score #rand data run random value 1..2

# chance to load the version where you have to play skyblock
execute if score #rand data matches 1 run return run function bedwars:maps/skyblock/load
execute if score #rand data matches 2 run return run function bedwars_extras:maps/skyblock/load_hard