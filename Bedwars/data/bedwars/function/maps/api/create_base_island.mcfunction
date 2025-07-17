# clear area
fill ~-25 ~-10 ~-25 ~25 ~ ~25 air
fill ~-25 ~ ~-25 ~25 ~10 ~25 air
fill ~-25 ~10 ~-25 ~25 ~20 ~25 air
fill ~-25 ~20 ~-25 ~25 ~30 ~25 air
# create island
$setblock ~ ~ ~ structure_block{name:"bedwars:base",rotation:"$(rotation)",mirror:"NONE",mode:"LOAD", ignoreEntities:0b} replace
setblock ~ ~1 ~ redstone_block replace
setblock ~ ~ ~ air replace

# spawners
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

# add rotary items to the item shop
$function bedwars:shop/rotary_items_gen_team {team:$(team)}

$execute as @e[type=chest_minecart] at @s run function bedwars:shop/new_team_shop {team:$(team)}
execute as @e[type=chest_minecart] run kill @s

# team color
$fill ~-25 ~5 ~-25 ~25 ~35 ~25 $(team)_wool replace white_wool
$fill ~-25 ~5 ~-25 ~25 ~35 ~25 $(team)_concrete replace white_concrete
$fill ~-25 ~5 ~-25 ~25 ~35 ~25 $(team)_concrete_powder replace white_concrete_powder

$function bedwars:setup/place_bed {team:$(team), facing:$(facing)}
#$execute as @e[tag=red_bed] at @s run setblock ^-1 ^ ^ $(team)_bed[facing=$(facing),part=head]

kill @e[type=item]