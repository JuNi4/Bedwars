execute as @e[tag=sponge] at @s unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run tag @s add misplaced_sponge
execute as @e[tag=sponge] at @s if entity @a[distance=..1] run tag @s add misplaced_sponge
execute as @e[tag=misplaced_sponge] at @s run playsound minecraft:block.sponge.break block @a ~ ~ ~
execute as @e[tag=misplaced_sponge] at @s run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:marker",Tags:["sponge"]},"minecraft:item_model":"minecraft:sponge","minecraft:item_name":{"italic":false,"text":"Sponge"},"minecraft:lore":[{"italic":false,"text":"Water be gone!"}]}}}
kill @e[tag=misplaced_sponge]

execute at @e[tag=sponge] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace water
execute at @e[tag=sponge] run setblock ~ ~ ~ sponge
execute at @e[tag=sponge] run playsound minecraft:block.sponge.place block @a ~ ~ ~
execute as @e[tag=sponge] run tag @s add primed_sponge
execute as @e[tag=sponge] run scoreboard players add @s item_deathtime 0
execute as @e[tag=sponge,tag=primed_sponge] run tag @s remove sponge
execute as @e[tag=primed_sponge] at @s if block ~ ~ ~ wet_sponge run setblock ~ ~ ~ sponge
execute as @e[tag=primed_sponge] at @s unless block ~ ~ ~ sponge run kill @s

# clear water
execute as @e[tag=primed_sponge,scores={item_deathtime=0..40}] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace water
execute as @e[tag=primed_sponge,scores={item_deathtime=41..60}] at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace water
execute as @e[tag=primed_sponge,scores={item_deathtime=61..80}] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace water

# particles
execute as @e[tag=primed_sponge,scores={item_deathtime=0}] at @s run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0 100
execute as @e[tag=primed_sponge,scores={item_deathtime=20}] at @s run particle minecraft:cloud ~ ~ ~ 0.75 0.75 0.75 0 200
execute as @e[tag=primed_sponge,scores={item_deathtime=40}] at @s run particle minecraft:cloud ~ ~ ~ 1.5 1.5 1.5 0 400
execute as @e[tag=primed_sponge,scores={item_deathtime=60}] at @s run particle minecraft:cloud ~ ~ ~ 2 2 2 0 800

# sounds
execute as @e[tag=primed_sponge,scores={item_deathtime=0}] at @s run playsound minecraft:block.lever.click block @a ~ ~ ~ 100 1.9
execute as @e[tag=primed_sponge,scores={item_deathtime=20}] at @s run playsound minecraft:block.lever.click block @a ~ ~ ~ 100 1.9
execute as @e[tag=primed_sponge,scores={item_deathtime=40}] at @s run playsound minecraft:block.lever.click block @a ~ ~ ~ 100 1.9
execute as @e[tag=primed_sponge,scores={item_deathtime=60}] at @s run playsound minecraft:block.lever.click block @a ~ ~ ~ 100 1.9

execute as @e[tag=primed_sponge] run scoreboard players add @s item_deathtime 1

execute as @e[tag=primed_sponge,scores={item_deathtime=80..}] run tag @s add remove_sponge
execute at @e[tag=remove_sponge] run setblock ~ ~ ~ air
kill @e[tag=remove_sponge]