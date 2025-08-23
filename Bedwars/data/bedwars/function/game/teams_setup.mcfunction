team leave @a
tag @a add sorting_none
tag @a add spawn
tag @a add has_bed
# calculate amount of people for each team
function bedwars:setup/playercount
scoreboard players operation playercount data /= teams data
# add one player to make sure everyone is in a team
#scoreboard players add playercount data 1
# store it for macro usage
execute store result storage bedwars:teams playercount int 1 run scoreboard players get playercount data

# assign everyone to a team
function bedwars:game/teams_picker with storage bedwars:teams

data modify storage bedwars:teams playercount set value 1
function bedwars:game/teams_picker with storage bedwars:teams