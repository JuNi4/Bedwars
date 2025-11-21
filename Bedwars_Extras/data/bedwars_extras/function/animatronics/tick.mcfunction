# check if it should be running
execute if score animatronic_enabled animatronics_data matches 0 run return fail

# reset the countdown
execute if score animatronic_move_in animatronics_data matches ..0 run function bedwars_extras:animatronics/move
execute if score animatronic_move_in animatronics_data matches ..0 if score animatronic_move_speed animatronics_data matches 40.. run scoreboard players remove animatronic_move_speed animatronics_data 6
execute if score animatronic_move_in animatronics_data matches ..0 store result score animatronic_move_in animatronics_data run scoreboard players get animatronic_move_speed animatronics_data
scoreboard players remove animatronic_move_in animatronics_data 1

execute if score alert_cooldown animatronics_data matches 1.. run scoreboard players remove alert_cooldown animatronics_data 1

execute as @e[tag=animatronic] at @s run function bedwars_extras:animatronics/anger

# kill jumpscared
scoreboard players add @a[tag=jumpscared] animatronics_death 1
gamemode adventure @a[scores={animatronics_death=19..}]
execute as @a[scores={animatronics_death=20..}] run damage @s 1000 minecraft:cramming
tag @a[scores={animatronics_death=20..}] remove jumpscared
scoreboard players reset @a[scores={animatronics_death=20..}] animatronics_death