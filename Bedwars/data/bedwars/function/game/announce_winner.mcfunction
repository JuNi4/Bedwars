tellraw @a {"text":"Game Over!","color":"gold"}
# announce winner
execute if entity @a[team=red,tag=ingame] run function bedwars:game/win_message {team:"red", display:"Red", color:"red"}
execute if entity @a[team=lime,tag=ingame] run function bedwars:game/win_message {team:"lime", display:"Lime", color:"green"}
execute if entity @a[team=yellow,tag=ingame] run function bedwars:game/win_message {team:"yellow", display:"Yellow", color:"yellow"}
execute if entity @a[team=blue,tag=ingame] run function bedwars:game/win_message {team:"blue", display:"Blue", color:"blue"}
scoreboard players set event data 60000

