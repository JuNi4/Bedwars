execute as @e[tag=mine] at @s unless block ~ ~ ~ air run tag @s add misplaced_mine
execute as @e[tag=misplaced_mine] at @s run playsound minecraft:block.leaf_litter.break block @a ~ ~ ~
execute as @e[tag=misplaced_mine] at @s run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:iron_golem_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:marker",Tags:["mine"]},"minecraft:item_model":"minecraft:stone_pressure_plate","minecraft:item_name":{"italic":false,"text":"Proximity Mine"},"minecraft:lore":[{"italic":false,"text":"Do not step on it"}]}}}
kill @e[tag=misplaced_mine]

execute at @e[tag=mine] run setblock ~ ~ ~ minecraft:stone_pressure_plate
execute at @e[tag=mine] run playsound minecraft:block.grass.place block @a ~ ~ ~
tag @e[tag=mine] add primed_mine
tag @e[tag=mine,tag=primed_mine] remove mine
execute as @e[tag=primed_mine] at @s if block ~ ~ ~ minecraft:stone_pressure_plate[powered=true] run tag @s add exploding_mine
execute at @e[tag=exploding_mine] run summon tnt ~ ~ ~ {fuse: 0b, explosion_power:3b}
execute as @e[tag=exploding_mine] run tag @s add exploded_mine
execute as @e[tag=exploding_mine] at @s run tag @e[tag=primed_mine, distance=0..5] add exploding_mine
execute as @e[tag=exploding_mine, tag=primed_mine] run tag @s remove primed_mine
kill @e[tag=exploded_mine]
execute at @e[tag=primed_mine] unless block ~ ~ ~ minecraft:stone_pressure_plate run kill @s

# do not drop stone preassure plates
kill @e[type=item,nbt={Item: {id: "minecraft:stone_pressure_plate"}}]

# /give @p iron_golem_spawn_egg[entity_data={id:"minecraft:marker",Tags:["mine"]},item_name={"italic":false,"text":"Proximity Mine"},lore=[{"italic":false,"text":"Do not step on it"}],item_model="minecraft:stone_pressure_plate"] 1