# don't do anything while the hunt is active
execute if score foxy_hunt animatronics_data matches 1 run return fail

# hunt start
execute if entity @s[tag=hunt] run return run scoreboard players set foxy_hunt animatronics_data 1

# pose
function bedwars_extras:animatronics/assign_pose
tp @s ~ ~ ~ facing entity @p[gamemode=!spectator, gamemode=!creative]
function bedwars_extras:animatronics/movement_extras

# stage
execute store result score #rand animatronics_data run random value 0..100
execute if entity @e[type=marker, tag=animatronic_path_node_stage_foxy, distance=...5] run return run function bedwars_extras:animatronics/movement_stage_l

# the hunt
tag @s add hunt
execute at @e[tag=animatronic_path_node_foxy_hunt_start, sort=nearest, limit=1] run tp @s ~ ~ ~ facing entity @e[tag=animatronic_path_node_foxy_hunt_end, sort=nearest, limit=1]