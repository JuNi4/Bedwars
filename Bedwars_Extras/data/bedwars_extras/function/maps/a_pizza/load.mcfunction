# load structures
execute positioned -48 -6 -49 run function bedwars_extras:maps/a_pizza/load_structure {structure: "bedwars_extras:a_pizza_map/fnaf_1"}
execute positioned 0 -6 -49 run function bedwars_extras:maps/a_pizza/load_structure_base {structure: "bedwars_extras:a_pizza_map/fnaf_2", team:red, facing:south}
execute positioned 48 -6 -4 run function bedwars_extras:maps/a_pizza/load_structure_base {structure: "bedwars_extras:a_pizza_map/fnaf_3", team:blue, facing:west}
execute positioned 0 -6 -1 run function bedwars_extras:maps/a_pizza/load_structure {structure: "bedwars_extras:a_pizza_map/fnaf_4"}
execute positioned -48 -6 -1 run function bedwars_extras:maps/a_pizza/load_structure_base {structure: "bedwars_extras:a_pizza_map/fnaf_5", team:yellow, facing:west}
execute positioned -3 -6 47 run function bedwars_extras:maps/a_pizza/load_structure_base {structure: "bedwars_extras:a_pizza_map/fnaf_6", team:lime, facing:south}

setblock -1 1 -1 air
setblock -4 1 47 air

# diamond spawners
tag @e[type=oak_boat, limit=1, sort=random] add ds
kill @e[type=oak_boat, tag=!ds]

tag @e[type=bamboo_raft, limit=1, sort=random] add ds
kill @e[type=bamboo_raft, tag=!ds]

tag @e[type=spruce_boat, limit=1, sort=random] add ds
kill @e[type=spruce_boat, tag=!ds]

tag @e[type=acacia_boat, limit=1, sort=random] add ds
kill @e[type=acacia_boat, tag=!ds]

execute as @e[tag=ds] at @s run function bedwars:spawners/new {spawner:"diamond", team:"all"}
execute as @e[tag=ds] at @s run summon text_display ~ ~2.5 ~ {billboard:"vertical",text:[{"color":"aqua","text":"Diamond Spawner"}]}
execute as @e[tag=ds] at @s run summon text_display ~ ~2.25 ~ {Tags:["diamond_spawner_time"],billboard:"vertical",text:["-"]}
execute as @e[tag=ds] at @s run setblock ~ ~-1 ~ diamond_block
execute as @e[tag=ds] at @s run kill @s

# emerald spawners
tag @e[type=cherry_boat, limit=2, sort=random] add ems
kill @e[type=cherry_boat, tag=!ems]
execute as @e[tag=ems] at @s run function bedwars:spawners/new {spawner:"emerald", team:"all"}
execute as @e[tag=ems] at @s run summon text_display ~ ~2.5 ~ {billboard:"vertical",text:[{"color":"green","text":"Emerald Spawner"}]}
execute as @e[tag=ems] at @s run summon text_display ~ ~2.25 ~ {Tags:["emerald_spawner_time"],billboard:"vertical",text:["-"]}
execute as @e[tag=ems] at @s run setblock ~ ~-1 ~ emerald_block
execute as @e[tag=ems] at @s run kill @s


# create the movement nodes for the animatronics
function bedwars_extras:maps/a_pizza/create_path_nodes
function bedwars_extras:animatronics/create_animatronics

function bedwars_extras:maps/a_pizza/reset_cooldown

# animatronic settings
scoreboard players set animatronic_enabled animatronics_data 1
scoreboard players set animatronic_move_speed animatronics_data 600
scoreboard players set animatronic_move_in animatronics_data 0
scoreboard players set @e[tag=animatronic] animatronics_visible 0