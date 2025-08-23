# summon fireball
#execute at @e[type=minecraft:snowball,nbt={Item: {components: {"minecraft:item_model": "minecraft:fire_charge"}}}] 
execute as @e[type=minecraft:snowball,nbt={Item: {components: {"minecraft:item_model": "minecraft:fire_charge"}}}] at @s run summon fireball ~ ~ ~ {ExplosionPower: 2d, Tags:["fireball_init"]}
# copy owner
execute as @e[tag=fireball_init] at @s run data modify entity @s Owner set from entity @p UUID
tag @e remove fireball_init
# copy momentum
execute as @e[type=minecraft:snowball,nbt={Item: {components: {"minecraft:item_model": "minecraft:fire_charge"}}},sort=nearest,limit=1] at @s run data modify entity @e[type=minecraft:fireball,sort=nearest,limit=1] Motion set from entity @s Motion
# delete snowball
kill @e[type=minecraft:snowball,nbt={Item: {components: {"minecraft:item_model": "minecraft:fire_charge"}}}]