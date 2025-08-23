# reset map list
data merge storage bedwars:shop_items {red_shop_items:[], lime_shop_items:[], yellow_shop_items:[], blue_shop_items:[]}
scoreboard players set shop_item_count data 0

function #bedwars:shop_item_registry