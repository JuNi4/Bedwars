# check for more than 1 player
function bedwars:setup/playercount
execute if score playercount data matches ..1 run scoreboard players enable @a start
execute if score playercount data matches ..1 run return run tellraw @a {text:"Can't start the game with less than 2 people.", color:"red"}

execute unless entity @e[tag=clear_from_tick] run return run function bedwars:setup/start
tellraw @a {"text":"Can't start a game whilest map clear is in progress.","color":"red"}
scoreboard players enable @a start