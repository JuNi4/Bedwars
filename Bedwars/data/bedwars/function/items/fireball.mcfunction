# summon fireball
execute as @e[type=minecraft:snowball,nbt={Item: {components: {"minecraft:item_model": "minecraft:fire_charge"}}}] at @s run summon fireball ~ ~ ~ {ExplosionPower: 2d}
# copy momentum
execute as @e[type=minecraft:snowball,nbt={Item: {components: {"minecraft:item_model": "minecraft:fire_charge"}}},sort=nearest,limit=1] at @s run data modify entity @e[type=minecraft:fireball,sort=nearest,limit=1] Motion set from entity @s Motion
# delete snowball
kill @e[type=minecraft:snowball,nbt={Item: {components: {"minecraft:item_model": "minecraft:fire_charge"}}}]