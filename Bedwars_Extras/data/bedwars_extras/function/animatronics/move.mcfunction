# freddy
execute store result score #rand animatronics_data run random value 0..100
execute if score #rand animatronics_data matches ..50 as @e[tag=freddy] at @s run data modify storage bedwars_extras:animatronic current_movement.paths set from storage bedwars_extras:animatronic freddy_path_nodes
execute if score #rand animatronics_data matches ..50 as @e[tag=freddy] at @s run scoreboard players operation #direction animatronics_data = freddy_direction animatronics_data
execute if score #rand animatronics_data matches ..50 as @e[tag=freddy] at @s run function bedwars_extras:animatronics/new_movement/move

# bonny
execute store result score #rand animatronics_data run random value 0..100
execute if score #rand animatronics_data matches ..40 as @e[tag=bonny] at @s run data modify storage bedwars_extras:animatronic current_movement.paths set from storage bedwars_extras:animatronic bonny_path_nodes
execute if score #rand animatronics_data matches ..40 as @e[tag=bonny] at @s run scoreboard players operation #direction animatronics_data = bonny_direction animatronics_data
execute if score #rand animatronics_data matches ..40 as @e[tag=bonny] at @s run function bedwars_extras:animatronics/new_movement/move

# chica
execute store result score #rand animatronics_data run random value 0..100
execute if score #rand animatronics_data matches ..50 as @e[tag=chica] at @s run data modify storage bedwars_extras:animatronic current_movement.paths set from storage bedwars_extras:animatronic chica_path_nodes
execute if score #rand animatronics_data matches ..50 as @e[tag=chica] at @s run scoreboard players operation #direction animatronics_data = chica_direction animatronics_data
execute if score #rand animatronics_data matches ..50 as @e[tag=chica] at @s run function bedwars_extras:animatronics/new_movement/move

# foxy
execute store result score #rand animatronics_data run random value 0..100
execute if score #rand animatronics_data matches ..10 as @e[tag=foxy] at @s run function bedwars_extras:animatronics/foxy_movement
execute if score #rand animatronics_data matches ..50 as @e[tag=foxy] at @s run function bedwars_extras:animatronics/movement_extras