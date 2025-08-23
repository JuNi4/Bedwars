$execute as @a[tag=$(tier)_armor,tag=equipp, tag=prot_$(protlvl)] run item replace entity @s armor.legs with $(tier)_leggings[unbreakable={},enchantments={\
    "minecraft:protection":$(protlvl),\
    "minecraft:binding_curse":1,\
    "minecraft:vanishing_curse":1\
}]
$execute as @a[tag=$(tier)_armor,tag=equipp, tag=prot_$(protlvl)] run item replace entity @s armor.feet with $(tier)_boots[unbreakable={},enchantments={\
    "minecraft:protection":$(protlvl),\
    "minecraft:binding_curse":1,\
    "minecraft:vanishing_curse":1\
}]