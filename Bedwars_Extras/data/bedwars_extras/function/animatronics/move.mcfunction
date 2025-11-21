# freddy
execute store result score rand animatronics_data run random value 0..100
execute if score rand animatronics_data matches ..50 as @e[tag=freddy] at @s run function bedwars_extras:animatronics/freddy_movement

# bonny
execute store result score rand animatronics_data run random value 0..100
execute if score rand animatronics_data matches ..40 as @e[tag=bonny] at @s run function bedwars_extras:animatronics/bonny_movement

# chica
execute store result score rand animatronics_data run random value 0..100
execute if score rand animatronics_data matches ..50 as @e[tag=chica] at @s run function bedwars_extras:animatronics/chica_movement