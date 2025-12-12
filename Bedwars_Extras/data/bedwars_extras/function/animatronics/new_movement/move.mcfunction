# moves the entity that is currently executing this command to a connecting path node
# takes
#  `in bedwars_extras:animatronic.current_movement.paths` as all path nodes with their connections
#  `@s` the entity to move

# somehow get the name of the closest path node in bedwars_extras:animatronic.current_movement.name
data modify storage bedwars_extras:animatronic current_movement.arg.name set from entity @e[type=marker,tag=animatronic_path_node,sort=nearest,limit=1] CustomName
# this will deposit the nodes an animatronic can move to in bedwars_extras:animatronic.current_movement.connections
execute store success score #result animatronics_data run function bedwars_extras:animatronics/new_movement/get_connections with storage bedwars_extras:animatronic current_movement.arg
execute if score #result animatronics_data matches 0 run return run say NEW MOVEMENT DEBUG: failed to get connections for current node

# get the length
execute store result score #length animatronics_data run data get storage bedwars_extras:animatronic current_movement.connections
scoreboard players operation #length_h animatronics_data = #length animatronics_data
scoreboard players operation #length_h animatronics_data /= #2 animatronics_data
scoreboard players remove #length animatronics_data 1
# check if there are nodes
execute if score #length animatronics_data matches ..-1 run return run say NEW MOVEMENT DEBUG: no length of target array

# get oddity
scoreboard players operation #odity animatronics_data = #length animatronics_data
scoreboard players operation #odity animatronics_data %= #2 animatronics_data

execute if score #odity animatronics_data matches 0 run scoreboard players remove #length_h animatronics_data 1

# generate the index
#  lower half
data modify storage bedwars_extras:animatronic current_movement.arg.min set value 0
execute if score #direction animatronics_data matches -1 store result storage bedwars_extras:animatronic current_movement.arg.max int 1 run scoreboard players get #length_h animatronics_data
execute if score #direction animatronics_data matches -1 if score #length_h animatronics_data matches 0 store result storage bedwars_extras:animatronic current_movement.arg.max int 1 run scoreboard players get #length animatronics_data
#  upper half
execute if score #direction animatronics_data matches 1 store result storage bedwars_extras:animatronic current_movement.arg.min int 1 run scoreboard players get #length_h animatronics_data
execute if score #direction animatronics_data matches 1 store result storage bedwars_extras:animatronic current_movement.arg.max int 1 run scoreboard players get #length animatronics_data
#  get the value
execute store result storage bedwars_extras:animatronic current_movement.arg.i int 1 run function bedwars_extras:animatronics/new_movement/random with storage bedwars_extras:animatronic current_movement.arg

# get the target
#  puts the name into bedwars_extras:animatronic.current_movement.args.target
function bedwars_extras:animatronics/new_movement/get_target with storage bedwars_extras:animatronic current_movement.arg
execute store success score #result animatronics_data run function bedwars_extras:animatronics/new_movement/mark_target with storage bedwars_extras:animatronic current_movement.arg
execute if score #result animatronics_data matches 0 run return run say NEW MOVEMENT DEBUG: no target found

# check if the target is free & teleport
execute as @e[tag=animatronic_move_target] at @s if entity @e[tag=animatronic, distance=...5] run return run function bedwars_extras:animatronics/new_movement/unmark_target
execute as @e[type=marker,tag=animatronic_path_node,sort=nearest,limit=1] at @s run function bedwars_extras:animatronics/new_movement/mark_start
kill @e[tag=glowing_eyes, distance=..1.5]
execute at @e[tag=animatronic_move_target, limit=1] run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator, gamemode=!creative]
function bedwars_extras:animatronics/assign_pose
execute at @e[tag=animatronic_move_target, limit=1] run function bedwars_extras:animatronics/glowing_eyes
execute as @e[tag=animatronic_move_target] store result score @s animatronics_move run random value -5..7
execute as @e[tag=animatronic_move_target] at @s run function bedwars_extras:animatronics/movement_extras
tag @e[tag=animatronic_move_target] add animatronic_move
tag @e[tag=animatronic_move_target] remove animatronic_move_target
