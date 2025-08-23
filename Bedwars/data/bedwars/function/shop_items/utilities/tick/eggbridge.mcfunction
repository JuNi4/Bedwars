# init
execute at @e[type=egg, tag=!eggbridge] as @a[sort=nearest,limit=1] if entity @s[team=red] run tag @e[type=egg, tag=!eggbridge] add red
execute at @e[type=egg, tag=!eggbridge] as @a[sort=nearest,limit=1] if entity @s[team=yellow] run tag @e[type=egg, tag=!eggbridge] add yellow
execute at @e[type=egg, tag=!eggbridge] as @a[sort=nearest,limit=1] if entity @s[team=blue] run tag @e[type=egg, tag=!eggbridge] add blue
execute at @e[type=egg, tag=!eggbridge] as @a[sort=nearest,limit=1] if entity @s[team=lime] run tag @e[type=egg, tag=!eggbridge] add lime

execute as @e[type=egg, tag=!eggbridge] run tag @s add eggbridge

# sound
execute as @e[type=egg, nbt={Item: {components: {"minecraft:item_name": {text: "Bridge Egg"}}}}] at @s run playsound minecraft:entity.chicken.egg ambient @a
# blocks
function bedwars:shop_items/utilities/tick/eggbridge_place {team:"red"}
function bedwars:shop_items/utilities/tick/eggbridge_place {team:"lime"}
function bedwars:shop_items/utilities/tick/eggbridge_place {team:"yellow"}
function bedwars:shop_items/utilities/tick/eggbridge_place {team:"blue"}
# destroy after 40 ticks
scoreboard players add @e[type=egg, nbt={Item: {components: {"minecraft:item_name": {text: "Bridge Egg"}}}}] item_deathtime 1
kill @e[type=egg, nbt={Item: {components: {"minecraft:item_name": {text: "Bridge Egg"}}}},scores={item_deathtime=40..}]
# no chickens
kill @e[type=chicken]