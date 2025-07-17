execute as @e[tag=clear] run tag @s add clear_now
execute as @e[tag=clear] at @s run fill ~ -64 ~ ~ 319 ~ air
$kill @e[tag=clear, x=$(size), z=-$(size), dx=1, dz=$(size)]
$kill @e[tag=clear, x=$(size), z=0, dx=1, dz=$(size)]
$kill @e[tag=clear, x=-$(size), dx=$(size), dz=1]
$kill @e[tag=clear, x=0, dx=$(size), dz=1]
execute as @e[tag=clear_a, tag=clear_now] at @s run summon armor_stand ~1 ~ ~ {NoGravity:1b,Silent:1b,Tags:["clear","clear_a"]}
execute as @e[tag=clear, tag=clear_now] at @s run summon armor_stand ~ ~ ~1 {NoGravity:1b,Silent:1b,Tags:["clear"]}
execute as @e[tag=clear_now] run kill @s