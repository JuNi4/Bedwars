# init
execute as @e[type=snowball,nbt={Item: {components: {"minecraft:item_name": "Remote Detonator","minecraft:item_model":"minecraft:tnt"}}}] unless entity @s[tag=remote_detonator] run tag @s add remote_detonator_init
execute as @e[tag=remote_detonator_init] run data modify entity @s NoGravity set value 1b
execute as @e[tag=remote_detonator_init] run data modify entity @s Motion set value [0d,0d,0d]
execute as @e[tag=remote_detonator_init] at @s run summon minecraft:slime ~ ~ ~ {Tags:["detonator_slime"],Size:0,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b,show_icon:0b}],PersistenceRequired:1b}
#execute as @e[tag=remote_detonator_init] at @s run ride @s mount @e[type=slime,sort=nearest,limit=1,tag=detonator_slime]
execute as @e[tag=remote_detonator] at @s unless entity @e[tag=detonator_slime,distance=..0.7,sort=nearest] run kill @s
execute as @e[tag=remote_detonator_init] at @s as @a[sort=nearest,limit=1] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:snowball", components:{"minecraft:item_model":"minecraft:redstone_block"}}]}] run give @a[sort=nearest,limit=1] snowball[item_model="minecraft:redstone_block",item_name={"color":"red","italic":false,"text":"Remote Detonator"},lore=[{"italic":false,"text":"Press for KABOOM!"}],max_stack_size=1] 1
execute as @e[tag=remote_detonator_init] run tag @s add remote_detonator
execute as @e[tag=remote_detonator_init,tag=remote_detonator] run tag @s remove remote_detonator_init

# activate
execute as @e[type=snowball,nbt={Item:{components: {"minecraft:item_name":{text:"Remote Detonator"},"minecraft:item_model":"minecraft:redstone_block"}}}] run tag @s add remote_detonator_igniter
execute as @e[tag=remote_detonator_igniter] at @e[tag=remote_detonator] run summon tnt ~ ~ ~ {fuse:20b}
execute if entity @e[tag=remote_detonator_igniter] as @e[tag=detonator_slime] run kill @s
execute as @e[tag=remote_detonator_igniter] run clear @a snowball[item_model="minecraft:redstone_block",item_name={"color":"red","italic":false,"text":"Remote Detonator"}]
kill @e[tag=remote_detonator_igniter]