scoreboard players set clear data 0
$summon armor_stand -$(size) 0 -$(size) {NoGravity:1b,Silent:1b,Tags:["clear","clear_a"]}
$execute positioned -1 0 0 run setblock ~$(size) 0 ~$(size) repeating_command_block[conditional=false]{Command:"function bedwars:setup/clear_area_tick {size:$(size)}"} replace
$execute positioned -1 0 0 run setblock ~$(size) 1 ~$(size) redstone_block replace