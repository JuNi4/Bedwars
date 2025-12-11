# random number for path choosing
execute store result score #rand animatronics_data run random value -50..100

# pose
function bedwars_extras:animatronics/assign_pose
tp @s ~ ~ ~ facing entity @p[gamemode=!spectator, gamemode=!creative]
function bedwars_extras:animatronics/movement_extras

# stage
execute if entity @e[tag=animatronic_path_node_stage_freddy, distance=...5] run return run function bedwars_extras:animatronics/movement_stage_l
# general armor stands
execute store result score #moved animatronics_data run function bedwars_extras:animatronics/freddy_movement_team {team:red, team_l:yellow}
execute if score #moved animatronics_data matches 0 store result score #moved animatronics_data run function bedwars_extras:animatronics/freddy_movement_team {team:yellow, team_l:lime}
execute if score #moved animatronics_data matches 0 store result score #moved animatronics_data run function bedwars_extras:animatronics/freddy_movement_team {team:lime, team_l:blue}
execute if score #moved animatronics_data matches 0 store result score #moved animatronics_data run function bedwars_extras:animatronics/freddy_movement_team {team:blue, team_l:red}

execute if score #moved animatronics_data matches 0 run tp @s @e[tag=animatronic_path_node_stage_freddy, limit=1]