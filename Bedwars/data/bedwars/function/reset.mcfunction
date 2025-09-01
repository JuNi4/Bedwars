# game reset
scoreboard players set is_running data 0

# reset worldborder
worldborder set 9999999

# reset world
function bedwars:setup/delete_islands

# tags
tag @a remove diamond_armor
tag @a remove iron_armor
tag @a remove prot_1
tag @a remove prot_2
tag @a remove prot_3
tag @a remove prot_4
tag @a remove sharp_1

# create spawn platform
function bedwars:setup/spawn_platform_place
# reset players
team leave @a
clear @a
tp @a 0 132 0
spawnpoint @a 0 132 0
gamemode adventure @a

# reset time of day
time set noon

# reset player attributes
function bedwars:setup/reset_attributes

# call reset function triggers
function #bedwars:on_reset