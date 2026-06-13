# decrement alive timer
scoreboard players remove @s item_deathtime 1
execute if score @s item_deathtime matches ..0 run kill @s

# summon tnt in an area
scoreboard players operation #tnt_rain_test item_deathtime = @s item_deathtime
scoreboard players operation #tnt_rain_test item_deathtime %= tnt_rain_mod data
execute unless score #tnt_rain_test item_deathtime matches 0 run return 1

execute store result storage bedwars:tnt_rain x int 1 run random value -10..10
execute store result storage bedwars:tnt_rain y int 1 run random value -10..10
function bedwars:rotary_items/default_items/tick/tnt_rain_summon with storage bedwars:tnt_rain
