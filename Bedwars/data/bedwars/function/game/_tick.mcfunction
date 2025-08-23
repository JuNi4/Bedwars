# clear area tick
execute if score run_clear data matches 1 as @e[tag=clear_from_tick] at @s run function bedwars:setup/clear_area_tick with storage bedwars:maps clear_data

# run the main tick function if the game is running
execute if score is_running data matches 1 run return run function bedwars:tick
# effects when not in game
effect give @a saturation 1 255 true
effect give @a regeneration 1 255 true

# quickly transport people in lobby back up
kill @a[x=-300,z=-300,y=0,dx=600,dy=64,dz=600,gamemode=!creative,gamemode=!spectator]