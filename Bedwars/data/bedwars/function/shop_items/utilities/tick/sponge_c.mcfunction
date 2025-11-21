execute if block ~ ~ ~ wet_sponge run setblock ~ ~ ~ sponge
execute unless block ~ ~ ~ sponge run kill @s

# clear water
execute as @s[scores={item_deathtime=0..40}] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace water
execute as @s[scores={item_deathtime=41..60}] at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace water
execute as @s[scores={item_deathtime=61..80}] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace water

# particles
execute as @s[scores={item_deathtime=0}] at @s run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0 100
execute as @s[scores={item_deathtime=20}] at @s run particle minecraft:cloud ~ ~ ~ 0.75 0.75 0.75 0 200
execute as @s[scores={item_deathtime=40}] at @s run particle minecraft:cloud ~ ~ ~ 1.5 1.5 1.5 0 400
execute as @s[scores={item_deathtime=60}] at @s run particle minecraft:cloud ~ ~ ~ 2 2 2 0 800

# sounds
execute as @s[scores={item_deathtime=0}] at @s run playsound minecraft:block.lever.click block @a ~ ~ ~ 100 1.9
execute as @s[scores={item_deathtime=20}] at @s run playsound minecraft:block.lever.click block @a ~ ~ ~ 100 1.9
execute as @s[scores={item_deathtime=40}] at @s run playsound minecraft:block.lever.click block @a ~ ~ ~ 100 1.9
execute as @s[scores={item_deathtime=60}] at @s run playsound minecraft:block.lever.click block @a ~ ~ ~ 100 1.9

scoreboard players add @s item_deathtime 1

execute as @s[scores={item_deathtime=80..}] run tag @s add remove_sponge