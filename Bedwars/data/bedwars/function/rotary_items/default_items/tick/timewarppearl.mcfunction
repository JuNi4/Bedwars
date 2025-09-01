# init
execute as @e[type=ender_pearl,nbt={Item: {components: {"minecraft:item_name": {text: "Time Warp Pearl"}}}}] unless entity @s[tag=time_warp_pearl] run tag @s add time_warp_pearl_init
execute at @e[tag=time_warp_pearl_init] run summon ender_pearl ~ ~ ~ {NoGravity:1b,Tags:["warp_pearl_marker"]}
execute as @e[tag=time_warp_pearl_init] run data modify entity @e[tag=warp_pearl_marker,sort=nearest,limit=1] Owner set from entity @s Owner
execute as @e[tag=time_warp_pearl_init] run tag @s add time_warp_pearl
execute as @e[tag=time_warp_pearl,tag=time_warp_pearl_init] run tag @s remove time_warp_pearl_init
scoreboard players add @e[tag=warp_pearl_marker] item_deathtime 0
data modify entity @e[tag=warp_pearl_marker,scores={item_deathtime=200..},limit=1] NoGravity set value 0b

# tick
scoreboard players add @e[tag=warp_pearl_marker] item_deathtime 1