# transfer kill count
execute as @a run scoreboard players operation @s statistic_kills += @s statistic_kills_counter
execute as @a run scoreboard players reset @s statistic_kills_counter
# transfer beds
execute as @a run scoreboard players operation @s statistic_beds_destroyed_unchecked += @s statistic_beds_red
scoreboard players reset @a statistic_beds_red
execute as @a run scoreboard players operation @s statistic_beds_destroyed_unchecked += @s statistic_beds_yellow
scoreboard players reset @a statistic_beds_yellow
execute as @a run scoreboard players operation @s statistic_beds_destroyed_unchecked += @s statistic_beds_lime
scoreboard players reset @a statistic_beds_lime
execute as @a run scoreboard players operation @s statistic_beds_destroyed_unchecked += @s statistic_beds_blue
scoreboard players reset @a statistic_beds_blue

# game mechanics
function bedwars:game/events
function bedwars:game/respawn
function bedwars:game/bed_destroyed_check_initiator {team:"red", team_name: "Red", team_col: "red"}
function bedwars:game/bed_destroyed_check_initiator {team:"yellow", team_name: "Yellow", team_col: "yellow"}
function bedwars:game/bed_destroyed_check_initiator {team:"lime", team_name: "Lime", team_col: "green"}
function bedwars:game/bed_destroyed_check_initiator {team:"blue", team_name: "Blue", team_col: "blue"}
function bedwars:game/game_over
function bedwars:shop/team_upgrades {team:"red"}
function bedwars:shop/team_upgrades {team:"yellow"}
function bedwars:shop/team_upgrades {team:"lime"}
function bedwars:shop/team_upgrades {team:"blue"}

# spawners
scoreboard players remove @e[ tag = item_spawner ] spawn_cooldown 1
function bedwars:spawners/spawn {spawner:iron, item:"minecraft:iron_ingot", count:3, age:5000}
function bedwars:spawners/spawn {spawner:gold, item:"minecraft:gold_ingot", count:1, age:5500}
function bedwars:spawners/spawn {spawner:diamond, item:"minecraft:diamond", count:1, age:0}
function bedwars:spawners/spawn {spawner:emerald, item:"minecraft:emerald", count:1, age:0}
function bedwars:spawners/update_time {spawner:diamond, name:"Diamond"}
function bedwars:spawners/update_time {spawner:emerald, name:"Emerald"}

# (shop) items
function #bedwars:item_tick

function bedwars:game/alarm_trap

# move shops
function bedwars:shop/anchor_shops {team:"red"}
function bedwars:shop/anchor_shops {team:"yellow"}
function bedwars:shop/anchor_shops {team:"lime"}
function bedwars:shop/anchor_shops {team:"blue"}


# effects
effect give @a[nbt=!{foodLevel:20}] saturation 1 0 true

# no entitys
kill @e[type=experience_orb]
kill @e[type=endermite]

# don't allow removal of enderchest
execute as @e[type=item, nbt={Item:{id:"minecraft:ender_chest"}}] at @s run function bedwars:game/replace_enderchest

# quickly kill players
execute as @a[x=-300,z=-300,y=-128,dx=600,dy=64,dz=600,gamemode=!creative,gamemode=!spectator] run damage @s 10000 minecraft:out_of_world

# disable certain recipes
execute if score disable_recipes data matches 1 run function bedwars:game/disable_recipes

# reset bed count unchcecked
scoreboard players reset @a statistic_beds_destroyed_unchecked