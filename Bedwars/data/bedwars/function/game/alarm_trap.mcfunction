$execute as @e[tag=$(team)_spawnpoint, tag=alarm_trap] at @s as @a[team=!$(team), gamemode=!spectator, gamemode=!creative, distance=..20, sort=nearest, limit=1] run tag @s add trap_$(team)_triggered
$execute as @a[tag=trap_$(team)_triggered] run effect clear @s minecraft:invisibility
# play triggered sound
$execute as @a[tag=trap_$(team)_triggered] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 1 .5
$execute if entity @a[tag=trap_$(team)_triggered] as @a[team=$(team)] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 1 .5
# play message
$execute if entity @a[tag=trap_$(team)_triggered] run tellraw @a[team=$(team)] {"text":"Alarm Trap triggered.","color":"red"}
$execute if entity @a[tag=trap_$(team)_triggered] run title @a[team=$(team)] times 5 5 5
$execute if entity @a[tag=trap_$(team)_triggered] run title @a[team=$(team)] title {text:"Alarm Trap triggered",color:"red"}
$tellraw @a[tag=trap_$(team)_triggered] {"text":"Your triggered an Alarm Trap.","color":"red"}
# clean trap
$execute if entity @a[tag=trap_$(team)_triggered] as @e[tag=$(team)_spawnpoint, tag=alarm_trap] run tag @s remove alarm_trap
# restock trap
$execute if entity @a[tag=trap_$(team)_triggered] run data modify entity @e[tag=$(team)_teamupgrades,limit=1] Offers.Recipes[4] set value {maxUses:1,xp:0,buy:{id:"minecraft:diamond",count:1},sell:{id:"minecraft:redstone_torch",count:1, components:{"minecraft:item_name":"Alarm Trap", "custom_data":{"team":"$(team)"}}}}
$tag @a remove trap_$(team)_triggered