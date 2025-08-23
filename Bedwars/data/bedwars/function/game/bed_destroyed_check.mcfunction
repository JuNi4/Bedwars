scoreboard players set bed_air data 0

# check for air blocks
execute if block ^-1 ^ ^1 air run scoreboard players add bed_air data 1
execute if block ^-1 ^ ^-1 air run scoreboard players add bed_air data 1
execute if block ^-1 ^1 ^ air run scoreboard players add bed_air data 1
execute if block ^ ^ ^1 air run scoreboard players add bed_air data 1
execute if block ^ ^ ^-1 air run scoreboard players add bed_air data 1
execute if block ^ ^1 ^ air run scoreboard players add bed_air data 1
execute if block ^-2 ^ ^ air run scoreboard players add bed_air data 1
execute if block ^1 ^ ^ air run scoreboard players add bed_air data 1

$execute if score bed_air data matches 1.. if entity @a[team=!$(team), distance=..6.5, limit=1,sort=nearest] as @a[team=!$(team)] at @s run playsound minecraft:entity.ender_dragon.growl ambient @s
$execute if score bed_air data matches 1.. if entity @a[team=!$(team), distance=..6.5, limit=1,sort=nearest] run function bedwars:game/bed_destroyed {team:$(team), team_name:$(team_name), team_col:$(team_col)}

# check if bed was not destroyed
scoreboard players set or data 0
execute if score bed_air data matches 0 run scoreboard players add or data 1
$execute if entity @a[team=!$(team), distance=6.5.., limit=1,sort=nearest] run scoreboard players add or data 1
$execute if score or data matches 1.. as @e[tag=$(team)_bed, y_rotation=0..89] at @s run function bedwars:setup/place_bed {team:$(team), facing:"west"}
$execute if score or data matches 1.. as @e[tag=$(team)_bed, y_rotation=90..179] at @s run function bedwars:setup/place_bed {team:$(team), facing:"north"}
$execute if score or data matches 1.. as @e[tag=$(team)_bed, y_rotation=180..269] at @s run function bedwars:setup/place_bed {team:$(team), facing:"east"}
$execute if score or data matches 1.. as @e[tag=$(team)_bed, y_rotation=270..359] at @s run function bedwars:setup/place_bed {team:$(team), facing:"south"}