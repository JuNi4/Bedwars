# iron armor #
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate"}]}, tag=iron_armor] run give @s gold_ingot 12
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate"}]}, tag=diamond_armor] run give @s gold_ingot 12
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate"}]}, tag=!diamond_armor, tag=!iron_armor] run tag @s add equipp
execute as @a[nbt={Inventory:[{id:"minecraft:iron_chestplate"}]}, tag=!diamond_armor, tag=!iron_armor] run tag @s add iron_armor
clear @a[tag=iron_armor] iron_chestplate 1
# diamond armor
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_chestplate"}]}, tag=diamond_armor] run give @s emerald 6
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_chestplate"}]}, tag=!diamond_armor] run tag @s add equipp
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_chestplate"}]}, tag=!diamond_armor] run tag @s add diamond_armor
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_chestplate"}]}] run tag @s remove iron_armor

clear @a[tag=diamond_armor] diamond_chestplate 1

# give armor #
# base
function bedwars:shop_items/armor/armor_base {team:"red", tint:16711680}
function bedwars:shop_items/armor/armor_base {team:"yellow", tint:16776960}
function bedwars:shop_items/armor/armor_base {team:"lime", tint:65280}
function bedwars:shop_items/armor/armor_base {team:"blue", tint:255}

function bedwars:shop_items/armor/armor_base_prot {team:"red", tint:16711680, protlvl:1}
function bedwars:shop_items/armor/armor_base_prot {team:"yellow", tint:16776960, protlvl:1}
function bedwars:shop_items/armor/armor_base_prot {team:"lime", tint:65280, protlvl:1}
function bedwars:shop_items/armor/armor_base_prot {team:"blue", tint:255, protlvl:1}

function bedwars:shop_items/armor/armor_base_prot {team:"red", tint:16711680, protlvl:2}
function bedwars:shop_items/armor/armor_base_prot {team:"yellow", tint:16776960, protlvl:2}
function bedwars:shop_items/armor/armor_base_prot {team:"lime", tint:65280, protlvl:2}
function bedwars:shop_items/armor/armor_base_prot {team:"blue", tint:255, protlvl:2}

function bedwars:shop_items/armor/armor_base_prot {team:"red", tint:16711680, protlvl:3}
function bedwars:shop_items/armor/armor_base_prot {team:"yellow", tint:16776960, protlvl:3}
function bedwars:shop_items/armor/armor_base_prot {team:"lime", tint:65280, protlvl:3}
function bedwars:shop_items/armor/armor_base_prot {team:"blue", tint:255, protlvl:3}

function bedwars:shop_items/armor/armor_base_prot {team:"red", tint:16711680, protlvl:4}
function bedwars:shop_items/armor/armor_base_prot {team:"yellow", tint:16776960, protlvl:4}
function bedwars:shop_items/armor/armor_base_prot {team:"lime", tint:65280, protlvl:4}
function bedwars:shop_items/armor/armor_base_prot {team:"blue", tint:255, protlvl:4}

# iron
execute as @a[tag=iron_armor,tag=equipp] run item replace entity @s armor.legs with iron_leggings[unbreakable={},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}]
execute as @a[tag=iron_armor,tag=equipp] run item replace entity @s armor.feet with iron_boots[unbreakable={},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}]
function bedwars:shop_items/armor/armor_extra {tier:iron, protlvl:1}
function bedwars:shop_items/armor/armor_extra {tier:iron, protlvl:2}
function bedwars:shop_items/armor/armor_extra {tier:iron, protlvl:3}
function bedwars:shop_items/armor/armor_extra {tier:iron, protlvl:4}
# diamond
execute as @a[tag=diamond_armor,tag=equipp] run item replace entity @s armor.legs with diamond_leggings[unbreakable={},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}]
execute as @a[tag=diamond_armor,tag=equipp] run item replace entity @s armor.feet with diamond_boots[unbreakable={},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}]
function bedwars:shop_items/armor/armor_extra {tier:diamond, protlvl:1}
function bedwars:shop_items/armor/armor_extra {tier:diamond, protlvl:2}
function bedwars:shop_items/armor/armor_extra {tier:diamond, protlvl:3}
function bedwars:shop_items/armor/armor_extra {tier:diamond, protlvl:4}
execute as @a[tag=equipp] run tag @s remove equipp

# sharpness
execute as @a[tag=sharp_1] run enchant @s sharpness