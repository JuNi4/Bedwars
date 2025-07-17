$execute as @e[tag=$(team)_item_shop] run data modify entity @s Offers.Recipes insert -1 from storage bedwars:rotary_items items[$(i)]
$data remove storage bedwars:rotary_items items[$(i)]