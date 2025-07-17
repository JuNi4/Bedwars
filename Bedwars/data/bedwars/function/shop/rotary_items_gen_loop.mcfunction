# void generateItems(count)
# {
#     if (i < count)
#     {
#         i++;
#         shops.push_back(items[ilist[i]]);
#         generateItems(count);
#     }
# }

# retrieve index variable
execute if score rotary_items_i data < rotary_items_count data store result storage bedwars:rotary_items args.i int 1 run scoreboard players get rotary_items_i data

# call the next function that derefrences the index to another index for the shop item
execute if score rotary_items_i data < rotary_items_count data run function bedwars:shop/rotary_items_gen_pick with storage bedwars:rotary_items args

# increment index
execute if score rotary_items_i data <= rotary_items_count data run scoreboard players add rotary_items_i data 1

# call itself to complete the for loop
execute if score rotary_items_i data <= rotary_items_count data run function bedwars:shop/rotary_items_gen_loop