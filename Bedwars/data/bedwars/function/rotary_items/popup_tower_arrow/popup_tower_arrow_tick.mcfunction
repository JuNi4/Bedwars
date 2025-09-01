execute as @e[type=minecraft:spectral_arrow, nbt={inGround:0b}, tag=!put_shot] at @s run function bedwars:rotary_items/popup_tower_arrow/initialize_shot_arrow

# arrows that hit the ground
execute unless entity @e[type=minecraft:spectral_arrow, limit=1, sort=nearest, nbt={inGround:1b}, tag=!popupprocessed] run return fail
tag @e[type=minecraft:spectral_arrow, limit=1, sort=nearest, nbt={inGround:1b}, tag=!popupprocessed] add popupprocessed_init

data modify storage bedwars:compare arrow_pos set from entity @e[tag=popupprocessed_init, limit=1] Pos

# x
execute store result storage bedwars:compare arrow_b int 100 run data get storage bedwars:compare arrow_pos[0]
execute store result score arrow_b data run data get storage bedwars:compare arrow_b
execute store result score arrow_v data run data get storage bedwars:compare arrow_pos[0] 100
scoreboard players operation arrow_v data -= arrow_b data

execute if score arrow_v data matches 5 run return run function bedwars:rotary_items/popup_tower_arrow/place {fx: 90, fy: -90}
execute if score arrow_v data matches 94 run return run function bedwars:rotary_items/popup_tower_arrow/place {fx: -90, fy: -90}

# z
execute store result storage bedwars:compare arrow_b int 100 run data get storage bedwars:compare arrow_pos[2]
execute store result score arrow_b data run data get storage bedwars:compare arrow_b
execute store result score arrow_v data run data get storage bedwars:compare arrow_pos[2] 100
scoreboard players operation arrow_v data -= arrow_b data

execute if score arrow_v data matches 5 run return run function bedwars:rotary_items/popup_tower_arrow/place {fx: -180, fy: -90}
execute if score arrow_v data matches 94 run return run function bedwars:rotary_items/popup_tower_arrow/place {fx: 0, fy: -90}

# y
execute store result storage bedwars:compare arrow_b int 100 run data get storage bedwars:compare arrow_pos[1]
execute store result score arrow_b data run data get storage bedwars:compare arrow_b
execute store result score arrow_v data run data get storage bedwars:compare arrow_pos[1] 100
scoreboard players operation arrow_v data -= arrow_b data

execute if score arrow_v data matches 5 run return run function bedwars:rotary_items/popup_tower_arrow/place {fx: 0, fy: 0}
#execute if score arrow_v data matches 94 run return run function bedwars:rotary_items/popup_tower_arrow/place {fx: 0, fy: -180}
kill @e[tag=popupprocessed_init]
