execute as @e[tag=sponge] at @s run function bedwars:shop_items/utilities/tick/sponge_a
execute as @e[tag=misplaced_sponge] at @s run playsound minecraft:block.sponge.break block @a ~ ~ ~
execute as @e[tag=misplaced_sponge] at @s run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:marker",Tags:["sponge"]},"minecraft:item_model":"minecraft:sponge","minecraft:item_name":{"italic":false,"text":"Sponge"},"minecraft:lore":[{"italic":false,"text":"Water be gone!"}]}}}
kill @e[tag=misplaced_sponge]

execute as @e[tag=sponge] at @s run function bedwars:shop_items/utilities/tick/sponge_b

execute as @e[tag=primed_sponge] at @s run function bedwars:shop_items/utilities/tick/sponge_c

execute at @e[tag=remove_sponge] run setblock ~ ~ ~ air
kill @e[tag=remove_sponge]