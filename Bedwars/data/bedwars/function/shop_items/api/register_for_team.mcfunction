$data modify storage bedwars:shop_items $(team)_shop_items append value $(item)
scoreboard players add shop_item_team_specific_count data 1
execute if score shop_item_team_specific_count data matches 4.. run scoreboard players add shop_item_count data 1
execute if score shop_item_team_specific_count data matches 4.. run scoreboard players reset shop_item_team_specific_count data