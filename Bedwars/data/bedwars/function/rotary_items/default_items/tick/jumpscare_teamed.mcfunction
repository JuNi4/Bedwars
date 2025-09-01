$execute at @s if entity @p[distance=..3,team=!$(team)] run tag @s add jumpscare_play
$execute as @s[tag=jumpscare_play] at @s run playsound minecraft:entity.wither.death master @p[team=!$(team)] ~ ~ ~ 200
$execute as @s[tag=jumpscare_play] at @s run title @p[team=!$(team)] times 20 100 20
$execute as @s[tag=jumpscare_play] at @s run title @p[team=!$(team)] title "Bed Destroyed!"