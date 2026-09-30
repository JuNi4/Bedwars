# gamerules
function bedwars:setup/gamerules

# spawn
setworldspawn 0 131 0

# teams
function bedwars:setup/create_teams

# scoreboards
function bedwars:setup/create_scoreboards

# default values
scoreboard players set tps data 20
scoreboard players set respawn_time data 120
scoreboard players set random_map data 1
scoreboard players set start_in data 0

# call reset hooks
function #bedwars:on_setup

# setup the world
function bedwars:reset

function bedwars:setup/_load