# check if it should be running
execute if score animatronic_enabled animatronics_data matches 0 run return fail

# reset the countdown
execute if score animatronic_move_in animatronics_data matches ..0 run function bedwars_extras:animatronics/move
execute if score animatronic_move_in animatronics_data matches ..0 if score animatronic_move_speed animatronics_data matches 100.. run scoreboard players remove animatronic_move_speed animatronics_data 6
execute if score animatronic_move_in animatronics_data matches ..0 store result score animatronic_move_in animatronics_data run scoreboard players get animatronic_move_speed animatronics_data
scoreboard players remove animatronic_move_in animatronics_data 1

execute if score alert_cooldown animatronics_data matches 1.. run scoreboard players remove alert_cooldown animatronics_data 1

execute as @e[type=armor_stand, tag=animatronic, tag=!foxy] at @s run function bedwars_extras:animatronics/anger

# kill jumpscared
scoreboard players add @a[tag=jumpscared] animatronics_death 1
gamemode adventure @a[scores={animatronics_death=19..}]
execute as @a[scores={animatronics_death=20..}] run damage @s 1000 minecraft:cramming
tag @a[scores={animatronics_death=20..}] remove jumpscared
scoreboard players set @a[scores={animatronics_death=20..}] animatronics_death 0


# foxy hunt
execute if score foxy_hunt animatronics_data matches 1 as @e[tag=foxy] at @s run function bedwars_extras:animatronics/foxy_hunt

# movement animation
execute as @e[tag=animatronic_move] at @s run function bedwars_extras:animatronics/new_movement/move_anim_tick

execute if score event data matches ..1200 as @a[gamemode=survival, x=-19,y=2,z=-19, dx=51,dy=7,dz=51, tag=!jumpscared] at @s run tag @s add jumpscared
execute if score event data matches ..1200 if entity @a[gamemode=!spectator,gamemode=!creative, tag=jumpscared] at @e[tag=animatronic, limit=1, sort=random] run function bedwars_extras:animatronics/jumpscare

execute if score event data matches 1200 run title @a times 20 40 20
execute if score event data matches 1200 run title @a title "12pm"
execute if score event data matches 1200 as @a at @s run playsound minecraft:block.bell.use ambient @s ~ ~ ~ 1 .5
execute if score event data matches 1240 as @a at @s run playsound minecraft:block.bell.use ambient @s ~ ~ ~ 1 .5
execute if score event data matches 1280 as @a at @s run playsound minecraft:block.bell.use ambient @s ~ ~ ~ 1 .5