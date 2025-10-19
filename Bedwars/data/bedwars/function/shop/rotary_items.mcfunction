# set amount of rotary items
execute store result score rotary_items_size data run scoreboard players get rotary_item_count data
# set the amount
scoreboard players set rotary_items_in_shop data 3
#execute store result score rotary_items_in_shop data run scoreboard players get rotary_item_count data

# create tempoary values
data merge storage bedwars:rotary_items {items:[], args:{i:0}, indecies:[]}
execute store result storage bedwars:rotary_items args.count int 1 run scoreboard players get rotary_items_in_shop data
execute store result storage bedwars:rotary_items args.size int 1 run scoreboard players get rotary_items_size data
scoreboard players set rotary_items_i data 0

# call the indecie generator
function bedwars:shop/rotary_items_gen_indecies with storage bedwars:rotary_items args