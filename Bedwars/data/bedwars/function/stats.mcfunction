tellraw @s [\
    {"text":"---","color":"blue"},{"text":" Statistics","color":"gold"},{"text":" ---","color":"blue"},\
    {"text":"\nRounds played: ","color":"white"},{"score":{"name":"@s","objective":"statistic_played_games"},"color":"yellow"},\
    {"text":"\nRounds won: ","color":"white"},{"score":{"name":"@s","objective":"statistic_wins"},"color":"yellow"},\
    {"text":"\nBeds destroyed: ","color":"white"},{"score":{"name":"@s","objective":"statistic_beds_destroyed"},"color":"yellow"},\
    {"text":"\nKills: ","color":"white"},{"score":{"name":"@s","objective":"statistic_kills"},"color":"yellow"},\
    {"text":"\nDeaths: ","color":"white"},{"score":{"name":"@s","objective":"statistic_deaths"},"color":"yellow"},\
    {"text":"\n"},{"text":"---------------","color":"blue"}]