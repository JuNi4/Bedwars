tag @a[gamemode=!spectator, gamemode=!creative, tag=raycast_hit, distance=..10] add jumpscared
execute at @a[tag=jumpscared] run playsound minecraft:entity.enderman.death ambient @p ~ ~ ~ 1 1
tp @a[tag=jumpscared] ^ ^ ^1 facing entity @s
gamemode spectator @a[tag=jumpscared]