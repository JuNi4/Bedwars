# make size an argument
execute store result storage bedwars:rotary_items args.size long 1 run scoreboard players get rotary_items data
# call the generator with size
function bedwars:shop/rotary_items_pick_gen with storage bedwars:rotary_items args
# decrease size
scoreboard players remove rotary_items data 1