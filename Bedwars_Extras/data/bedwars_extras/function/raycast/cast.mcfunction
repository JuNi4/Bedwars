# at start as target

summon marker ~ ~ ~ {Tags:["raycast", "raycast_last"]}
tp @e[tag=raycast_last] ~ ~ ~ facing entity @s

scoreboard players set #raycast animatronics_data 0

execute as @e[tag=raycast_last] at @s run function bedwars_extras:raycast/step
execute at @e[tag=raycast_last] run tp @e[tag=raycast_last] ~ ~ ~ facing entity @s
execute as @e[tag=raycast_last] at @s run function bedwars_extras:raycast/step
execute at @e[tag=raycast_last] run tp @e[tag=raycast_last] ~ ~ ~ facing entity @s
execute as @e[tag=raycast_last] at @s run function bedwars_extras:raycast/step
execute at @e[tag=raycast_last] run tp @e[tag=raycast_last] ~ ~ ~ facing entity @s
execute as @e[tag=raycast_last] at @s run function bedwars_extras:raycast/step
execute at @e[tag=raycast_last] run tp @e[tag=raycast_last] ~ ~ ~ facing entity @s
execute as @e[tag=raycast_last] at @s run function bedwars_extras:raycast/step
execute at @e[tag=raycast_last] run tp @e[tag=raycast_last] ~ ~ ~ facing entity @s
execute as @e[tag=raycast_last] at @s run function bedwars_extras:raycast/step
execute at @e[tag=raycast_last] run tp @e[tag=raycast_last] ~ ~ ~ facing entity @s
execute as @e[tag=raycast_last] at @s run function bedwars_extras:raycast/step
execute at @e[tag=raycast_last] run tp @e[tag=raycast_last] ~ ~ ~ facing entity @s
execute as @e[tag=raycast_last] at @s run function bedwars_extras:raycast/step
execute at @e[tag=raycast_last] run tp @e[tag=raycast_last] ~ ~ ~ facing entity @s
execute as @e[tag=raycast_last] at @s run function bedwars_extras:raycast/step
execute at @e[tag=raycast_last] run tp @e[tag=raycast_last] ~ ~ ~ facing entity @s
execute as @e[tag=raycast_last] at @s run function bedwars_extras:raycast/step
execute at @e[tag=raycast_last] run tp @e[tag=raycast_last] ~ ~ ~ facing entity @s

kill @e[tag=raycast]