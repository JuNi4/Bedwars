function bedwars:setup/spawn_platform_clear

clear @a
function bedwars:setup/enderchest
function bedwars:setup/reset_attributes
scoreboard players set event data 0
function bedwars:maps/load
function bedwars:game/teams_setup

# clear deaths that happened between rounds
scoreboard players set @a deaths 0

# trigger rotary itemshop
function bedwars:shop/rotary_items

# give everyone their armor
tag @a add equipp

# give everyone the ingame tag
tag @a add ingame

# worldborder setup
worldborder center 0 0
worldborder set 250

# enable ticking
scoreboard players set is_running data 1

# enable reset
scoreboard players enable @a reset