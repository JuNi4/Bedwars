tellraw @a [\
    {"text":"---- ","color":"blue"},{"text":"Settings","color":"gold"},{"text":" ----","color":"blue"},\
    {"text":"\n\nTeams: "},\
        {"text":"[2]","color":"green",\
            "click_event":{"action":"run_command","command":"scoreboard players set teams data 2"},\
            "hover_event":{"action":"show_text","value":"2 Teams"}},\
        {"text":" "},\
        {"text":"[3]","color":"yellow",\
            "click_event":{"action":"run_command","command":"scoreboard players set teams data 3"},\
            "hover_event":{"action":"show_text","value":"3 Teams"}},\
        {"text":" "},\
        {"text":"[4]","color":"blue",\
            "click_event":{"action":"run_command","command":"scoreboard players set teams data 4"},\
            "hover_event":{"action":"show_text","value":"4 Teams"}},\
    {"text":"\n\n"},{"text":"----------------","color":"blue"}]

#tellraw @p {"click_event":{"action":"run_command","command":"/tellraw @a \"HI\""},"text":"text"}
#tellraw @p {"hover_event":{"action":"show_text","value":[{"text":"text"}]},"text":"text"}