# award bed destroyed statistic
$scoreboard players add @a[team=!$(team), distance=..7.5, limit=1,sort=nearest, scores={statistic_beds_destroyed_unchecked=1..}] statistic_beds_destroyed 1

$title @a[team=$(team), tag=has_bed] times 20 100 20
$title @a[team=$(team), tag=has_bed] subtitle {"text":"You will no longer respawn...","color":"yellow"}
$title @a[team=$(team), tag=has_bed] title {"text":"Bed Destroyed","color":"red"}
$tag @a[team=$(team)] remove has_bed
$tellraw @a ["",{"text":"$(team_name)","color":"$(team_col)"},{"text":" bed destroyed.","color":"gold"}]
$execute as @a[team=$(team)] at @s run playsound minecraft:entity.wither.death ambient @s
kill @s