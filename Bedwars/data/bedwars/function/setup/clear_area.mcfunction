scoreboard players set clear data 0
$summon armor_stand -$(size) 0 -$(size) {NoGravity:1b,Silent:1b,Tags:["clear","clear_a"]}

$data modify storage bedwars:maps clear_data set value {size:$(size)}
scoreboard players set run_clear data 1

kill @e[tag=clear_from_tick]
summon armor_stand -1 0 0 {NoGravity:1b,Silent:1b,Tags:["clear_from_tick"]}
$execute as @e[tag=clear_from_tick] at @s run tp @s ~$(size) ~ ~$(size)

#$execute positioned -1 0 0 run setblock ~$(size) 0 ~$(size) repeating_command_block[conditional=false]{Command:"function bedwars:setup/clear_area_tick {size:$(size)}"} replace
#$execute positioned -1 0 0 run setblock ~$(size) 1 ~$(size) redstone_block replace