$setblock ~ ~ ~ structure_block{name:"$(structure)",rotation:"NONE",mirror:"NONE",mode:"LOAD", ignoreEntities:0b, posX:0,posY:1,posZ:0} replace
setblock ~1 ~ ~ redstone_block replace
setblock ~1 ~ ~ air replace
setblock ~ ~ ~ air replace

## base things ##
$execute as @e[type=tnt_minecart] at @s run summon marker ~ ~ ~ {NoGravity:1b,Silent:1b,Tags:["$(team)_spawnpoint"]}
execute as @e[type=tnt_minecart] run kill @s

$execute as @e[type=minecart] at @s run summon marker ~ ~ ~ {NoGravity:1b,Silent:1b,Tags:["bed","$(team)_bed"]}
$tp @e[tag=$(team)_bed] @e[type=minecart,limit=1]
execute as @e[type=minecart] at @s run kill @s

$execute as @e[type=furnace_minecart] at @s run function bedwars:spawners/new {spawner:"iron", team:$(team)}
$execute as @e[type=furnace_minecart] at @s run function bedwars:spawners/new {spawner:"gold", team:$(team)}
execute as @e[type=furnace_minecart] at @s run kill @s

$execute as @e[type=hopper_minecart] at @s run function bedwars:shop/new_item_shop {team:$(team)}
execute as @e[type=hopper_minecart] at @s run kill @s

$function bedwars:shop/rotary_items_gen_team {team:$(team)}

$execute as @e[type=chest_minecart] at @s run function bedwars:shop/new_team_shop {team:$(team)}
execute as @e[type=chest_minecart] run kill @s

$function bedwars:setup/place_bed {team:$(team), facing:$(facing)}

kill @e[type=item]