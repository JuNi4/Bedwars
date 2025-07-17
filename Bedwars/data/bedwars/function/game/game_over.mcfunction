# get how many teams still exist
scoreboard players set teamsalive data 0
execute if entity @a[team=red,tag=ingame] run scoreboard players add teamsalive data 1
execute if entity @a[team=lime,tag=ingame] run scoreboard players add teamsalive data 1
execute if entity @a[team=yellow,tag=ingame] run scoreboard players add teamsalive data 1
execute if entity @a[team=blue,tag=ingame] run scoreboard players add teamsalive data 1

# game over
execute if score teamsalive data matches 1 if score event data matches ..60000 run function bedwars:game/announce_winner

# draw
execute if score teamsalive data matches 0 if score event data matches ..60000 run say It's a Draw!
execute if score teamsalive data matches 0 if score event data matches ..60000 run scoreboard players set event data 60000