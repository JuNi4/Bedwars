team leave @a
tag @a add sorting_none
tag @a add spawn
tag @a add has_bed
# calculate amount of people for each team
function bedwars:setup/playercount
scoreboard players operation playercount data /= teams data
execute store result storage bedwars:teams playercount int 1 run scoreboard players get playercount data

function bedwars:game/teams_picker with storage bedwars:teams