# game reset
scoreboard players set is_running data 0

# reset worldborder
worldborder set 9999999
# reset players
gamemode adventure @a
tp @a 520.5 1 503.5
spawnpoint @a 520 1 503
clear @a

team leave @a

# tags
tag @a remove diamond_armor
tag @a remove iron_armor
tag @a remove prot_1
tag @a remove prot_2
tag @a remove prot_3
tag @a remove prot_4
tag @a remove sharp_1

# chunkloading
tag @r add chunkloader
gamemode spectator @a[tag=chunkloader]
tp @a[tag=chunkloader] 0 0 0
tag @a remove chunkloader

function bedwars:setup/delete_islands