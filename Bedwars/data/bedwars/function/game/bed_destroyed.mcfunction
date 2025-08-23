$title @a[team=$(team)] times 20 100 20
$title @a[team=$(team)] subtitle {"text":"You will no longer respawn...","color":"yellow"}
$title @a[team=$(team)] title {"text":"Bed Destroyed","color":"red"}
$tag @a[team=$(team)] remove has_bed
$tellraw @a ["",{"text":"$(team_name)","color":"$(team_col)"},{"text":" bed destroyed.","color":"gold"}]
$execute as @a[team=$(team)] at @s run playsound minecraft:entity.wither.death ambient @s
kill @s