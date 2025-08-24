# set amount of rotary items
scoreboard players set rotary_items_size data 11
# set the amount 
scoreboard players set rotary_items_count data 3

# create tempoary values
data merge storage bedwars:rotary_items {items:[], args:{i:0}, indecies:[]}
execute store result storage bedwars:rotary_items args.count int 1 run scoreboard players get rotary_items_count data
execute store result storage bedwars:rotary_items args.size int 1 run scoreboard players get rotary_items_size data
scoreboard players set rotary_items_i data 0

# call the indecie generator
function bedwars:shop/rotary_items_gen_indecies with storage bedwars:rotary_items args