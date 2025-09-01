# reset map list
data merge storage bedwars:rotary_items {red_rotary_items:[], lime_rotary_items:[], yellow_rotary_items:[], blue_rotary_items:[]}
scoreboard players set rotary_item_count data 0
scoreboard players set rotary_item_team_specific_count data 0

function #bedwars:rotary_item_registry