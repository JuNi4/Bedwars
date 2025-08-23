$execute as @e[tag=jumpscare,tag=$(team), gamemode=!spectator] at @s if entity @p[distance=..3,team=!$(team)] run tag @s add jumpscare_play
$execute as @e[tag=jumpscare_play,tag=$(team), gamemode=!spectator] at @s run playsound minecraft:entity.wither.death master @p[team=!$(team)] ~ ~ ~ 200
$execute at @e[tag=jumpscare_play,tag=$(team), gamemode=!spectator] run title @p[team=!$(team)] @a times 20 100 20
$execute at @e[tag=jumpscare_play,tag=$(team), gamemode=!spectator] run title @p[team=!$(team)] title "Bed Destroyed!"