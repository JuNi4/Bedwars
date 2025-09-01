tellraw @a [{"text":"---- ","color":"blue"},{"text":"Map Selector","color":"gold"},{"text":" ----","color":"blue"}]
function bedwars:maps/api/print_selected_map with storage bedwars:maps selected_map
tellraw @a [{"text":"\n[Random Map]\n","color":"dark_green",\
        "click_event":{"action":"run_command","command":"scoreboard players set random_map data 1"},\
        "hover_event":{"action":"show_text","value":"Pick a random map each round"}}]

# map list
$tellraw @a $(map_selector)

tellraw @a [\
    {"text":"\n--------------------","color":"blue"}\
]