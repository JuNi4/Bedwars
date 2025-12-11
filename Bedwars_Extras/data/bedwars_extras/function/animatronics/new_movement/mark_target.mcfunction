$execute as @e[tag=$(target)] at @s if entity @e[tag=animatronic, distance=..1] run return fail
$execute as @e[tag=$(target)] at @s unless entity @s[tag=animatronic_move_target] run return run tag @s add animatronic_move_target
return 1