# make sure that the armor is not there if anyone drank invis
execute as @a[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run tag @s add invis
execute as @a[tag=invis] run function bedwars:shop_items/potions/dearmor
# check for anyone who got punched and now should have no invis
execute as @a[tag=invis,scores={damage_received=1..}] at @s unless entity @s[scores={fall_distance=400..}] run effect clear @s
scoreboard players reset @a damage_received
scoreboard players reset @a fall_distance
# regive a now visible person armor
execute as @a[nbt=!{active_effects:[{id:"minecraft:invisibility"}]}, tag=invis] run tag @s add equipp
execute as @a[nbt=!{active_effects:[{id:"minecraft:invisibility"}]}, tag=invis] run tag @s remove invis
