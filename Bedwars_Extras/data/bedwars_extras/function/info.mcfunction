execute unless score no_welcome_message animatronics_data matches 1 run \
    tellraw @a [\
        "It looks like you have the ",\
        {"color":"gold","text":"Bedwars Extras"},\
        {"text":" datapack installed.\n"},\
        {"color":"yellow","text":"Note:"},\
        " This datapack contains maps with flashing lights and horror elements. If you don't feel comfortable playing with these, consider removing / disabeling this datapack.\n",\
        {"text":"[Disable this message]", "click_event":{"action":"run_command","command":"scoreboard players set no_welcome_message animatronics_data 1"}, "hover_event":{"action":"show_text","value":"Disables this message"}}\
    ]