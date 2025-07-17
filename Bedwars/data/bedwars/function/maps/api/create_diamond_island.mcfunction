$setblock ~ ~ ~ structure_block{name:"bedwars:diamond_spawner",rotation:"$(rotation)",mirror:"NONE",mode:"LOAD", ignoreEntities:0b} replace
setblock ~ ~1 ~ redstone_block replace
setblock ~ ~ ~ air replace

execute as @e[type=furnace_minecart] at @s run function bedwars:spawners/new {spawner:"diamond", team:"all"}
execute as @e[type=furnace_minecart] at @s run summon text_display ~ ~3.75 ~ {billboard:"vertical",text:[{"color":"aqua","text":"Diamond Spawner"}]}
execute as @e[type=furnace_minecart] at @s run summon text_display ~ ~3.5 ~ {Tags:["diamond_spawner_time"],billboard:"vertical",text:[]}
execute as @e[type=furnace_minecart] at @s run kill @s