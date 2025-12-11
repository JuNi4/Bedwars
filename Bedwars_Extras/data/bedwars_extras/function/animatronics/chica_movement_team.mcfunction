# from r1
#  ...to stage
$execute if score #rand animatronics_data matches ..35 if entity @e[tag=animatronic_path_node_$(team)_r1, distance=..1] at @e[tag=animatronic_path_node_stage_chica, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to c1
$execute if score #rand animatronics_data matches 36..64 if entity @e[tag=animatronic_path_node_$(team)_r1, distance=..1] at @e[tag=animatronic_path_node_$(team)_c1, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to r2
$execute if score #rand animatronics_data matches 65.. if entity @e[tag=animatronic_path_node_$(team)_r1, distance=..1] at @e[tag=animatronic_path_node_$(team)_r2, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from r2
#  ...to r1
$execute if score #rand animatronics_data matches ..25 if entity @e[tag=animatronic_path_node_$(team)_r2, distance=..1] at @e[tag=animatronic_path_node_$(team)_r1, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to c1
$execute if score #rand animatronics_data matches 26..50 if entity @e[tag=animatronic_path_node_$(team)_r2, distance=..1] at @e[tag=animatronic_path_node_$(team)_c1, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to r3
$execute if score #rand animatronics_data matches 51..75 if entity @e[tag=animatronic_path_node_$(team)_r2, distance=..1] at @e[tag=animatronic_path_node_$(team)_r3, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to r4
$execute if score #rand animatronics_data matches 76.. if entity @e[tag=animatronic_path_node_$(team)_r2, distance=..1] at @e[tag=animatronic_path_node_$(team)_r4, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from c1
#  ...to r1
$execute if score #rand animatronics_data matches ..49 if entity @e[tag=animatronic_path_node_$(team)_c1, distance=..1] at @e[tag=animatronic_path_node_$(team)_r1, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to r2
$execute if score #rand animatronics_data matches 50.. if entity @e[tag=animatronic_path_node_$(team)_c1, distance=..1] at @e[tag=animatronic_path_node_$(team)_r2, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from r3
#  ...to r2
$execute if score #rand animatronics_data matches ..49 if entity @e[tag=animatronic_path_node_$(team)_r3, distance=..1] at @e[tag=animatronic_path_node_$(team)_r2, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to r4
$execute if score #rand animatronics_data matches 50.. if entity @e[tag=animatronic_path_node_$(team)_r3, distance=..1] at @e[tag=animatronic_path_node_$(team)_r4, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~

# from r4
$execute if entity @e[tag=animatronic_path_node_$(team)_r4, distance=..1] run scoreboard players set chica_direction animatronics_data -1
#  ...to r2
$execute if score #rand animatronics_data matches ..60 if entity @e[tag=animatronic_path_node_$(team)_r4, distance=..1] at @e[tag=animatronic_path_node_$(team)_r2, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~
#  ...to r3
$execute if score #rand animatronics_data matches 61.. if entity @e[tag=animatronic_path_node_$(team)_r4, distance=..1] at @e[tag=animatronic_path_node_$(team)_r3, limit=1] unless entity @e[tag=animatronic, distance=..1] run return run tp @s ~ ~ ~


return fail