execute if score map_count data matches 1.. run data modify storage bedwars:maps map_selector append value {"text":"\n"}
$data modify storage bedwars:maps map_selector append value {\
    "text":"- [$(name)]", "color":"green",\
    "click_event":{"action":"run_command","command":"function bedwars:maps/api/select_map {id:$(id)}"},\
    "hover_event":{"action":"show_text","value":"Select the map '$(name)'"}\
}