# dereference the genrated index array
$execute store result storage bedwars:rotary_items args.i int 1 run data get storage bedwars:rotary_items indecies[$(i)]
# hand that to the next step
function bedwars:shop/rotary_items_gen_add with storage bedwars:rotary_items args