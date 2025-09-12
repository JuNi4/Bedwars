# layer 1
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=1}] at @s run function bedwars:shop_items/utilities/tick/popuptower_stage_1 {team:$(team), facing:$(facing)}
# layer 2
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=4}] at @s run function bedwars:shop_items/utilities/tick/popuptower_stage_2 {team:$(team), facing:$(facing)}
# layer 3
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=8}] at @s run function bedwars:shop_items/utilities/tick/popuptower_stage_3 {team:$(team), facing:$(facing)}
# layer 4
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=12}] at @s run function bedwars:shop_items/utilities/tick/popuptower_stage_4 {team:$(team), facing:$(facing)}
# layer 5
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s run function bedwars:shop_items/utilities/tick/popuptower_stage_5 {team:$(team), facing:$(facing)}
# layer 6
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=20}] at @s run function bedwars:shop_items/utilities/tick/popuptower_stage_6 {team:$(team), facing:$(facing)}
# layer 7
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=24}] at @s run function bedwars:shop_items/utilities/tick/popuptower_stage_7 {team:$(team), facing:$(facing)}
