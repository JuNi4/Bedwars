# random number for path choosing
execute if score bonny_direction animatronics_data matches 0 store result score rand animatronics_data run random value 0..100
execute if score bonny_direction animatronics_data matches 1 store result score rand animatronics_data run random value 35..100
execute if score bonny_direction animatronics_data matches -1 store result score rand animatronics_data run random value 0..65

execute if score rand animatronics_data matches ..40 run scoreboard players set bonny_direction animatronics_data -1
execute if score rand animatronics_data matches 60.. run scoreboard players set bonny_direction animatronics_data 1

# pose
function bedwars_extras:animatronics/assign_pose
tp @s ~ ~ ~ facing entity @p

# stage
execute if entity @e[tag=animatronic_path_node_stage_bonny, distance=...5] run return run function bedwars_extras:animatronics/movement_stage
# general armor stands
execute store result score moved animatronics_data run function bedwars_extras:animatronics/bonny_movement_team {team:red, team_l:yellow, team_r:blue}
execute if score moved animatronics_data matches 0 store result score moved animatronics_data run function bedwars_extras:animatronics/bonny_movement_team {team:yellow, team_l:lime, team_r:red}
execute if score moved animatronics_data matches 0 store result score moved animatronics_data run function bedwars_extras:animatronics/bonny_movement_team {team:lime, team_l:blue, team_r:yellow}
execute if score moved animatronics_data matches 0 store result score moved animatronics_data run function bedwars_extras:animatronics/bonny_movement_team {team:blue, team_l:red, team_r:lime}

execute if score moved animatronics_data matches 0 run tp @s @e[tag=animatronic_path_node_stage_bonny, limit=1]