#function bedwars_extras:animatronics/new_movement/setup_movement {team:"red", team_r:"yellow",team_l:"blue"}
data modify storage bedwars_extras:animatronic current_movement.paths set from storage bedwars_extras:animatronic bonny_path_nodes
scoreboard players operation #direction animatronics_data = bonny_direction animatronics_data