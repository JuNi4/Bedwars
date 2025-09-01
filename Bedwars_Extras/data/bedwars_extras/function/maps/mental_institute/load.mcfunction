# right side
execute positioned -75 0 0 run function bedwars_extras:maps/mental_institute/load_structure {structure:"bedwars_extras:mental_institute_map/0", rotation:"NONE", facing:"west", team:"lime"}
# entrance
execute positioned -27 0 -22 run function bedwars_extras:maps/mental_institute/load_structure {structure:"bedwars_extras:mental_institute_map/1", rotation:"NONE", facing:"south", team:"yellow"}
execute positioned 21 0 26 run function bedwars_extras:maps/mental_institute/load_structure {structure:"bedwars_extras:mental_institute_map/3", rotation:"NONE", facing:"south", team:"yellow"}
# kitchen
execute positioned -27 0 26 run function bedwars_extras:maps/mental_institute/load_structure {structure:"bedwars_extras:mental_institute_map/2", rotation:"NONE", facing:"south", team:"blue"}
execute positioned 21 0 -22 run function bedwars_extras:maps/mental_institute/load_structure {structure:"bedwars_extras:mental_institute_map/4", rotation:"NONE", facing:"south", team:"blue"}

# red - left side
execute positioned 69 0 0 run function bedwars_extras:maps/mental_institute/load_structure {structure:"bedwars_extras:mental_institute_map/5", rotation:"NONE", facing:"west", team:"red"}

## diamond spawner things ##

tag @e[type=mangrove_boat, limit=1, sort=random] add ds
kill @e[type=mangrove_boat, tag=!ds]

tag @e[type=cherry_boat, limit=1, sort=random] add ds
kill @e[type=cherry_boat, tag=!ds]

tag @e[type=pale_oak_boat, limit=1, sort=random] add ds
kill @e[type=pale_oak_boat, tag=!ds]

tag @e[type=acacia_boat, limit=1, sort=random] add ds
kill @e[type=acacia_boat, tag=!ds]

execute as @e[tag=ds] at @s run function bedwars:spawners/new {spawner:"diamond", team:"all"}
execute as @e[tag=ds] at @s run summon text_display ~ ~2.5 ~ {billboard:"vertical",text:[{"color":"aqua","text":"Diamond Spawner"}]}
execute as @e[tag=ds] at @s run summon text_display ~ ~2.25 ~ {Tags:["diamond_spawner_time"],billboard:"vertical",text:[]}
execute as @e[tag=ds] at @s run setblock ~ ~-1 ~ diamond_block
execute as @e[tag=ds] at @s run kill @s

## emerald spawner things

tag @e[type=oak_boat, limit=2, sort=random] add ems
kill @e[type=oak_boat, tag=!ems]
execute as @e[tag=ems] at @s run function bedwars:spawners/new {spawner:"emerald", team:"all"}
execute as @e[tag=ems] at @s run summon text_display ~ ~2.5 ~ {billboard:"vertical",text:[{"color":"green","text":"Emerald Spawner"}]}
execute as @e[tag=ems] at @s run summon text_display ~ ~2.25 ~ {Tags:["emerald_spawner_time"],billboard:"vertical",text:[]}
execute as @e[tag=ems] at @s run setblock ~ ~-1 ~ emerald_block
execute as @e[tag=ems] at @s run kill @s

# reset spawner cooldowns
function bedwars_extras:maps/mental_institute/reset_cooldown

time set midnight

# set player attributes for a more phasmo like experience
execute as @a run attribute @s minecraft:scale base set 0.8
execute as @a run attribute @s minecraft:movement_speed base set 0.05
execute as @a run attribute @s minecraft:jump_strength base set 0
#0.38
execute as @a run attribute @s minecraft:step_height base set 1


# disable popuptower teleports
scoreboard players set enable_popup_teleport data 0