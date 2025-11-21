tag @s remove raycast_last

execute unless block ~ ~1 ~ air run return run function bedwars_extras:raycast/fail
execute as @p[distance=..1, gamemode=!spectator] at @s run return run function bedwars_extras:raycast/success

summon marker ^ ^ ^1 {Tags:["raycast", "raycast_last"]}
