# freddy
execute store result score #rand animatronics_data run random value 0..100
execute if score #rand animatronics_data matches ..50 as @e[tag=freddy] at @s run function bedwars_extras:animatronics/freddy_movement
execute if score #rand animatronics_data matches ..50 as @e[tag=freddy] at @s run function bedwars_extras:animatronics/movement_extras

# bonny
execute store result score #rand animatronics_data run random value 0..100
execute if score #rand animatronics_data matches ..40 as @e[tag=bonny] at @s run function bedwars_extras:animatronics/new_movement/prepare_move
execute if score #rand animatronics_data matches ..40 as @e[tag=bonny] at @s run function bedwars_extras:animatronics/new_movement/move

# chica
execute store result score #rand animatronics_data run random value 0..100
execute if score #rand animatronics_data matches ..50 as @e[tag=chica] at @s run function bedwars_extras:animatronics/chica_movement
execute if score #rand animatronics_data matches ..50 as @e[tag=chica] at @s run function bedwars_extras:animatronics/movement_extras

# foxy
execute store result score #rand animatronics_data run random value 0..100
execute if score #rand animatronics_data matches ..10 as @e[tag=foxy] at @s run function bedwars_extras:animatronics/foxy_movement
execute if score #rand animatronics_data matches ..50 as @e[tag=foxy] at @s run function bedwars_extras:animatronics/movement_extras