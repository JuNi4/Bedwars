# from l1...
#  ...to stage
$execute if score #rand animatronics_data matches ..33 if entity @e[tag=animatronic_path_node_$(team)_l1, distance=..1] at @e[tag=animatronic_path_node_stage_freddy, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to l2
$execute if score #rand animatronics_data matches 34..66 if entity @e[tag=animatronic_path_node_$(team)_l1, distance=..1] at @e[tag=animatronic_path_node_$(team)_l2, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to l3
$execute if score #rand animatronics_data matches 67..100 if entity @e[tag=animatronic_path_node_$(team)_l1, distance=..1] at @e[tag=animatronic_path_node_$(team)_l3, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from l2
#  ...to l1
$execute if score #rand animatronics_data matches ..49 if entity @e[tag=animatronic_path_node_$(team)_l2, distance=..1] at @e[tag=animatronic_path_node_$(team)_l1, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to l3
$execute if score #rand animatronics_data matches 50..100 if entity @e[tag=animatronic_path_node_$(team)_l2, distance=..1] at @e[tag=animatronic_path_node_$(team)_l3, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from l3
#  ...to l1
$execute if score #rand animatronics_data matches ..20 if entity @e[tag=animatronic_path_node_$(team)_l3, distance=..1] at @e[tag=animatronic_path_node_$(team)_l1, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to l2
$execute if score #rand animatronics_data matches 21..40 if entity @e[tag=animatronic_path_node_$(team)_l3, distance=..1] at @e[tag=animatronic_path_node_$(team)_l2, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to l4
$execute if score #rand animatronics_data matches 41..60 if entity @e[tag=animatronic_path_node_$(team)_l3, distance=..1] at @e[tag=animatronic_path_node_$(team)_l4, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to l5
$execute if score #rand animatronics_data matches 61..80 if entity @e[tag=animatronic_path_node_$(team)_l3, distance=..1] at @e[tag=animatronic_path_node_$(team)_l5, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to team_l_d
$execute if score #rand animatronics_data matches 81..100 if entity @e[tag=animatronic_path_node_$(team)_l3, distance=..1] at @e[tag=animatronic_path_node_$(team_l)_d, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from l4
#  ...to l3
$execute if score #rand animatronics_data matches ..49 if entity @e[tag=animatronic_path_node_$(team)_l4, distance=..1] at @e[tag=animatronic_path_node_$(team)_l3, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to l5
$execute if score #rand animatronics_data matches 50..100 if entity @e[tag=animatronic_path_node_$(team)_l4, distance=..1] at @e[tag=animatronic_path_node_$(team)_l5, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from l5
#  ...to l3
$execute if score #rand animatronics_data matches ..49 if entity @e[tag=animatronic_path_node_$(team)_l5, distance=..1] at @e[tag=animatronic_path_node_$(team)_l3, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to l4
$execute if score #rand animatronics_data matches 50..100 if entity @e[tag=animatronic_path_node_$(team)_l5, distance=..1] at @e[tag=animatronic_path_node_$(team)_l4, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from d to r2
$execute if entity @e[tag=animatronic_path_node_$(team)_d, distance=..1] at @e[tag=animatronic_path_node_$(team)_r2, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from r2 to r1
$execute if entity @e[tag=animatronic_path_node_$(team)_r2, distance=..1] at @e[tag=animatronic_path_node_$(team)_r1, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from r1
#  ...to stage
$execute if score #rand animatronics_data matches ..49 if entity @e[tag=animatronic_path_node_$(team)_r1, distance=..1] at @e[tag=animatronic_path_node_stage_freddy, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to l1
$execute if score #rand animatronics_data matches 50.. if entity @e[tag=animatronic_path_node_$(team)_r1, distance=..1] at @e[tag=animatronic_path_node_$(team)_l1, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

return fail