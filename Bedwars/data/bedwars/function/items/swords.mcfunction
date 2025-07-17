execute as @a \
    unless items entity @s container.* #minecraft:swords \
    unless items entity @s weapon.* #minecraft:swords \
    unless items entity @s inventory.* #minecraft:swords \
    unless items entity @s player.cursor #minecraft:swords \
    unless items entity @s player.crafting.* #minecraft:swords run give @s wooden_sword[unbreakable={}]

execute as @a \
    unless items entity @s container.* minecraft:wooden_sword \
    unless items entity @s weapon.* minecraft:wooden_sword \
    unless items entity @s inventory.* minecraft:wooden_sword \
    unless items entity @s player.cursor minecraft:wooden_sword \
    unless items entity @s player.crafting.* minecraft:wooden_sword run clear @s wooden_sword[unbreakable={}]

kill @e[type=item, nbt={Item:{id:"minecraft:wooden_sword"}}]