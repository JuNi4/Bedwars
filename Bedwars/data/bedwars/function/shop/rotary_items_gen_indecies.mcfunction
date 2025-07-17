# void generateIndecies(size, count)
# {
#     if (i < count)
#     {
#         i++;
#         ilist.push_back(random(size--));
#         generateIndecies();
#     }
# }

# generate the random value
execute if score rotary_items_i data < rotary_items_count data run data modify storage bedwars:rotary_items indecies insert -1 value 0
$execute if score rotary_items_i data < rotary_items_count data store result storage bedwars:rotary_items indecies[-1] int 1 run random value 0..$(size)
# decrement list size
execute if score rotary_items_i data < rotary_items_count data run scoreboard players remove rotary_items_size data 1
execute if score rotary_items_i data < rotary_items_count data store result storage bedwars:rotary_items args.size int 1 run scoreboard players get rotary_items_size data
# increment i
execute if score rotary_items_i data <= rotary_items_count data run scoreboard players add rotary_items_i data 1
# call itself
execute if score rotary_items_i data <= rotary_items_count data run function bedwars:shop/rotary_items_gen_indecies with storage bedwars:rotary_items args