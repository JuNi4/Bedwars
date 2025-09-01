$data modify storage bedwars:maps maps append value {name:"$(name)", function:"$(function)"}
$data modify storage bedwars:maps selected_map set value {name:"$(name)", function:"$(function)"}
execute store result storage bedwars:maps selected_map.id int 1 run scoreboard players get map_count data
function bedwars:maps/api/create_selector_entry with storage bedwars:maps selected_map
scoreboard players add map_count data 1
