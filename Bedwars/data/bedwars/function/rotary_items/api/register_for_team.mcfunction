$data modify storage bedwars:rotary_items $(team)_rotary_items append value $(item)

scoreboard players add rotary_item_team_specific_count data 1
execute if score rotary_item_team_specific_count data matches 4.. run scoreboard players add rotary_item_count data 1
execute if score rotary_item_team_specific_count data matches 4.. run scoreboard players reset rotary_item_team_specific_count data