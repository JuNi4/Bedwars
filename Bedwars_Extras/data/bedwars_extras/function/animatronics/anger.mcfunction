tag @a remove raycast_hit

execute as @a[gamemode=!spectator, gamemode=!creative, distance=..10] run function bedwars_extras:raycast/cast

execute if entity @a[tag=raycast_hit, distance=..10] as @e[tag=animatronic, distance=..1] run execute unless score @s animatronics_visible matches 100.. run scoreboard players add @s animatronics_visible 1
execute unless entity @a[tag=raycast_hit, distance=..10] unless score @s animatronics_visible matches ..0 run scoreboard players remove @s animatronics_visible 1

# rotate head
execute if score @s animatronics_visible matches 25 if entity @a[tag=raycast_hit, distance=..10] run tp @s ~ ~ ~ facing entity @p[tag=raycast_hit, distance=..10]
execute if score @s animatronics_visible matches 25 if entity @a[tag=raycast_hit, distance=..10] run function bedwars_extras:animatronics/assign_pose


execute if score @s animatronics_visible matches 50 run function bedwars_extras:animatronics/jumpscare
execute if score @s animatronics_visible matches 50 run scoreboard players set @s animatronics_visible 0