# init / wait
execute as @e[type=minecraft:snowball,nbt={Item: {components: {"minecraft:item_name": {text: "Bouncy Platform"}}}}] run tag @s add platform
execute at @e[tag=platform] run fill ~2 ~-10 ~2 ~-2 ~-10 ~-2 minecraft:slime_block replace air
execute at @e[tag=platform] run summon minecraft:marker ~ ~-10 ~ {Tags:["slime"]}
scoreboard players add @e[tag=slime] item_deathtime 0
tag @e[tag=slime] add slime_wait
tag @e[tag=slime, tag=slime_wait] remove slime
tag @e[scores={item_deathtime=220..}] add slime_erase
tag @e[tag=slime_erase, tag=slime_wait] remove slime_wait
execute at @e[tag=slime_erase] run fill ~-2 ~ ~-2 ~2 ~ ~2 air replace minecraft:slime_block
kill @e[tag=slime_erase]
kill @e[tag=platform]

# tick
scoreboard players add @e[tag=slime_wait] item_deathtime 1