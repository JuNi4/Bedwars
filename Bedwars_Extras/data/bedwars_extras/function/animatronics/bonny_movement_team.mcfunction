# from r1
#  ...to c1
$execute if score rand animatronics_data matches ..35 if entity @e[tag=animatronic_path_node_$(team)_r1, distance=..1] at @e[tag=animatronic_path_node_$(team)_c1, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to stage
$execute if score rand animatronics_data matches 36..64 if entity @e[tag=animatronic_path_node_$(team)_r1, distance=..1] at @e[tag=animatronic_path_node_stage_bonny, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to r2
$execute if score rand animatronics_data matches 65.. if entity @e[tag=animatronic_path_node_$(team)_r1, distance=..1] at @e[tag=animatronic_path_node_$(team)_r2, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from r2
#  ...to c1
$execute if score rand animatronics_data matches ..35 if entity @e[tag=animatronic_path_node_$(team)_r2, distance=..1] at @e[tag=animatronic_path_node_$(team)_c1, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to r1
$execute if score rand animatronics_data matches 36..64 if entity @e[tag=animatronic_path_node_$(team)_r2, distance=..1] at @e[tag=animatronic_path_node_$(team)_r1, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to d
$execute if score rand animatronics_data matches 65.. if entity @e[tag=animatronic_path_node_$(team)_r2, distance=..1] at @e[tag=animatronic_path_node_$(team)_d, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from c1
#  ...to team_l d
$execute if score rand animatronics_data matches ..49 if entity @e[tag=animatronic_path_node_$(team)_c1, distance=..1] at @e[tag=animatronic_path_node_$(team_l)_d, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to r2
$execute if score rand animatronics_data matches 50.. if entity @e[tag=animatronic_path_node_$(team)_c1, distance=..1] at @e[tag=animatronic_path_node_$(team)_r2, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from d
#  ...to r2
$execute if score rand animatronics_data matches ..49 if entity @e[tag=animatronic_path_node_$(team)_d, distance=..1] at @e[tag=animatronic_path_node_$(team)_r2, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to ream_r c1
$execute if score rand animatronics_data matches 50.. if entity @e[tag=animatronic_path_node_$(team)_d, distance=..1] at @e[tag=animatronic_path_node_$(team_r)_c1, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

return fail