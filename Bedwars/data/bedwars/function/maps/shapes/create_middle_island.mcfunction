$setblock ~ ~ ~ structure_block{name:"$(structure)",rotation:"NONE",mirror:"NONE",mode:"LOAD", ignoreEntities:0b, posX:0,posY:1,posZ:0} replace
setblock ~1 ~ ~ redstone_block replace
setblock ~1 ~ ~ air replace
setblock ~ ~ ~ air replace

execute as @e[type=furnace_minecart] at @s run function bedwars:spawners/new {spawner:"emerald", team:"all"}
execute as @e[type=furnace_minecart] at @s run summon text_display ~ ~2.75 ~ {billboard:"vertical",text:[{"color":"green","text":"Emerald Spawner"}]}
execute as @e[type=furnace_minecart] at @s run summon text_display ~ ~2.5 ~ {Tags:["emerald_spawner_time"],billboard:"vertical",text:[]}
execute as @e[type=furnace_minecart] at @s run kill @s