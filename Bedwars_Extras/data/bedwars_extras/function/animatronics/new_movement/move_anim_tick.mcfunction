scoreboard players add @s animatronics_move 1
execute if score @s animatronics_move matches ..8 run fill ~-5 ~-1 ~-5 ~5 ~7 ~5 coal_block replace redstone_lamp[lit=true]

execute if score @s animatronics_move matches 40 run fill ~-5 ~-1 ~-5 ~5 ~7 ~5 redstone_lamp[lit=true] replace coal_block
execute if score @s animatronics_move matches 42 run fill ~-5 ~-1 ~-5 ~5 ~7 ~5 coal_block replace redstone_lamp[lit=true]
execute if score @s animatronics_move matches 45 run fill ~-5 ~-1 ~-5 ~5 ~7 ~5 redstone_lamp[lit=true] replace coal_block
execute if score @s animatronics_move matches 48 run fill ~-5 ~-1 ~-5 ~5 ~7 ~5 coal_block replace redstone_lamp[lit=true]

execute if score @s animatronics_move matches 60 run fill ~-5 ~-1 ~-5 ~5 ~7 ~5 redstone_lamp[lit=true] replace coal_block
execute if score @s animatronics_move matches 64 run fill ~-5 ~-1 ~-5 ~5 ~7 ~5 coal_block replace redstone_lamp[lit=true]

execute if score @s animatronics_move matches 70 run fill ~-5 ~-1 ~-5 ~5 ~7 ~5 redstone_lamp[lit=true] replace coal_block
execute if score @s animatronics_move matches 71.. run tag @s remove animatronic_move
execute if score @s animatronics_move matches 71.. run scoreboard players reset @s animatronics_move