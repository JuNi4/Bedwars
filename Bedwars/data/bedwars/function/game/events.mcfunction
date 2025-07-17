# tick them
scoreboard players add event data 1

# upgrade diamond spawner
execute if score event data matches 6000 as @e[tag=diamond_spawner] run scoreboard players set @s spawn_cooldown_max 750
execute if score event data matches 6000 run tellraw @a ["",{"text":"Diamond Spawners","color":"aqua"},{"text":" upgraded to level ","color":"gold"},{"text":"II","color":"yellow"},{"text":".","color":"gold"}]
execute if score event data matches 18000 as @e[tag=diamond_spawner] run scoreboard players set @s spawn_cooldown_max 500
execute if score event data matches 18000 run tellraw @a ["",{"text":"Diamond Spawners","color":"aqua"},{"text":" upgraded to level ","color":"gold"},{"text":"III","color":"yellow"},{"text":".","color":"gold"}]
execute if score event data matches 12000 as @e[tag=emerald_spawner] run scoreboard players set @s spawn_cooldown_max 1500
execute if score event data matches 12000 run tellraw @a ["",{"text":"Emerald Spawners","color":"green"},{"text":" upgraded to level ","color":"gold"},{"text":"II","color":"yellow"},{"text":".","color":"gold"}]
execute if score event data matches 24000 as @e[tag=emerald_spawner] run scoreboard players set @s spawn_cooldown_max 750
execute if score event data matches 24000 run tellraw @a ["",{"text":"Emerald Spawners","color":"green"},{"text":" upgraded to level ","color":"gold"},{"text":"III","color":"yellow"},{"text":".","color":"gold"}]

# bed gone
execute if score event data matches 36000 run function bedwars:game/clear_bed {team:"red"}
execute if score event data matches 36000 run function bedwars:game/clear_bed {team:"lime"}
execute if score event data matches 36000 run function bedwars:game/clear_bed {team:"yellow"}
execute if score event data matches 36000 run function bedwars:game/clear_bed {team:"blue"}
execute if score event data matches 36000 run tellraw @a ["",{"text":"---","color":"blue"},{"text":" Bed Gone! ","color":"gold"},{"text":"---","color":"blue"},{"text":"\n"},{"text":"All beds were destroyed!","color":"yellow"},{"text":"\n"},{"text":"----------------","color":"blue"}]

# game end
execute if score event data matches 60000 run tellraw @a ["",{"text":"Game Over!, Time ran out!","color":"red"},{"text":"\n"},{"text":"It is a Draw!","color":"yellow"}]

execute if score event data matches 60001 run gamemode spectator @a

# reset 10 seconds later
execute if score event data matches 60200 run function bedwars:reset