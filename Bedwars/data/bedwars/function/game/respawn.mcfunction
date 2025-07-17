# remove score
gamemode spectator @a[scores={deaths=1}]
tp @a[scores={deaths=1}] 0 50 0

# make everyone respawn, even if their bed got destroyed mid respawn
tag @a[scores={deaths=1}, tag=has_bed] add will_spawn

# remove from game those who can't respawn
execute as @a[scores={deaths=1..},tag=!will_spawn] run tag @s remove ingame
execute as @a[scores={deaths=1..},tag=!will_spawn] run scoreboard players reset @s deaths

# increment time after death & display time remaining
execute as @a[tag=will_spawn] run function bedwars:game/respawn_display

# respawn
execute as @a[scores={deaths=1..}] if score @s deaths >= respawn_time data run tag @s add spawn
execute as @a[scores={deaths=1..}] if score @s deaths >= respawn_time data run tag @s remove will_spawn
tag @a[tag=spawn] add equipp
execute as @e[tag=spawn] run scoreboard players reset @s deaths
function bedwars:game/spawn {team:red}
function bedwars:game/spawn {team:lime}
function bedwars:game/spawn {team:yellow}
function bedwars:game/spawn {team:blue}