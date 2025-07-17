scoreboard players add @s deaths 1
execute as @s store result score @s deathTimeInS run scoreboard players get respawn_time data
scoreboard players remove @s deathTimeInS 1
scoreboard players operation @s deathTimeInS -= @s deaths
scoreboard players operation @s deathTimeInS /= tps data
# display that time
title @s actionbar ["",{"text":"Respawn in ","color":"gray"},{"score":{"name":"@s","objective":"deathTimeInS"},"color":"gray"}]