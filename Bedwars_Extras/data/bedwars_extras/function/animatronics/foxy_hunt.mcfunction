# hunt part
execute if entity @s[tag=hunt] unless entity @e[type=marker, tag=animatronic_path_node_foxy_hunt_end, distance=...5] run tp @s ^ ^ ^.5
execute if entity @s[tag=hunt] if entity @e[type=marker, tag=animatronic_path_node_foxy_hunt_door, distance=..5, sort=nearest, limit=1] at @e[type=marker, tag=animatronic_path_node_foxy_hunt_door, distance=..5, sort=nearest, limit=1] run tp @s ~ ~ ~ facing entity @e[tag=bed, sort=nearest, limit=1]
execute if entity @s[tag=hunt] if entity @e[type=marker, tag=animatronic_path_node_foxy_hunt_door, distance=..5, sort=nearest, limit=1] unless entity @e[tag=bed, sort=nearest, limit=1, distance=..10] at @e[type=marker, tag=animatronic_path_node_foxy_hunt_door, distance=..5, sort=nearest, limit=1] run tp @s ~ ~ ~ ~-45 ~
execute if entity @s[tag=hunt] if entity @e[type=marker, tag=animatronic_path_node_foxy_hunt_door, distance=..1] run data modify entity @s Pose set value \
    {Body:[12.0f,22.0f,0.0f],Head:[20.0f,-2.0f,37.0f],LeftArm:[-49.0f,-3.0f,-10.0f],LeftLeg:[1.0f,0.0f,0.0f],RightArm:[32.0f,17.0f,13.0f],RightLeg:[23.0f,0.0f,0.0f]}
# check if the door has blocks in it
execute if entity @s[tag=hunt] if entity @e[type=marker, tag=animatronic_path_node_foxy_hunt_door, distance=..1] \
    unless block ~ ~ ~ #bedwars_extras:animatronic_hunt_breakable unless block ~ ~1 ~ #bedwars_extras:animatronic_hunt_breakable \
    run scoreboard players set foxy_hunt_reset animatronics_data 40
# no longer running
execute if entity @s[tag=hunt] if entity @e[type=marker, tag=animatronic_path_node_foxy_hunt_door, distance=..1] run tag @s remove hunt

# animation
execute if entity @s[tag=hunt] if score #foxy_frame animatronics_data matches 0 run data modify entity @s Pose set value \
    {Body:[2.0f,6.0f,0.0f],Head:[0.0f,0.0f,0.0f],LeftArm:[-53.0f,0.0f,-10.0f],LeftLeg:[-25.0f,0.0f,0.0f],RightArm:[-74.0f,0.0f,10.0f],RightLeg:[25.0f,0.0f,0.0f]}
execute if entity @s[tag=hunt] if score #foxy_frame animatronics_data matches 1 run data modify entity @s Pose set value \
    {Body:[1.0f,6.0f,0.0f],Head:[3.0f,3.0f,0.0f],LeftArm:[-49.0f,-3.0f,-10.0f],LeftLeg:[-10.0f,0.0f,0.0f],RightArm:[-61.0f,2.0f,13.0f],RightLeg:[10.0f,0.0f,0.0f]}
execute if entity @s[tag=hunt] if score #foxy_frame animatronics_data matches 2 run data modify entity @s Pose set value \
    {Body:[-1.0f,6.0f,0.0f],Head:[5.0f,-3.0f,2.0f],LeftArm:[-54.0f,-4.0f,-10.0f],LeftLeg:[10.0f,0.0f,0.0f],RightArm:[-64.0f,2.0f,13.0f],RightLeg:[-10.0f,0.0f,0.0f]}
execute if entity @s[tag=hunt] if score #foxy_frame animatronics_data matches 3 run data modify entity @s Pose set value \
    {Body:[-2.0f,6.0f,0.0f],Head:[9.0f,1.0f,-2.0f],LeftArm:[-54.0f,3.0f,-5.0f],LeftLeg:[25.0f,0.0f,0.0f],RightArm:[-68.0f,-5.0f,1.0f],RightLeg:[-25.0f,0.0f,0.0f]}

execute if entity @s[tag=hunt] run scoreboard players add #foxy_frame animatronics_data 1
execute if entity @s[tag=hunt] if score #foxy_frame animatronics_data matches 5.. run scoreboard players set #foxy_frame animatronics_data 0

# footstep noises
execute if entity @s[tag=hunt] if score #foxy_frame animatronics_data matches 0 run playsound minecraft:block.chain.step hostile @a
execute if entity @s[tag=hunt] if score #foxy_frame animatronics_data matches 3 run playsound minecraft:block.chain.step hostile @a

# break blocks while it is running
execute if entity @s[tag=hunt] if block ~ ~ ~ #bedwars_extras:animatronic_hunt_breakable run setblock ~ ~ ~ air destroy
execute if entity @s[tag=hunt] if block ~ ~1 ~ #bedwars_extras:animatronic_hunt_breakable run setblock ~ ~1 ~ air destroy

# reset if it runs into anything that it cant break
execute if entity @s[tag=hunt] unless block ~ ~ ~ #bedwars_extras:animatronic_hunt_breakable unless block ~ ~1 ~ #bedwars_extras:animatronic_hunt_breakable run scoreboard players set foxy_hunt_reset animatronics_data 40
execute if entity @s[tag=hunt] unless block ~ ~ ~ #bedwars_extras:animatronic_hunt_breakable unless block ~ ~1 ~ #bedwars_extras:animatronic_hunt_breakable run tag @s remove hunt

# kill anyone after a bit of time
execute if entity @s[tag=hunt] run tag @a remove raycast_hit
execute if entity @s[tag=hunt] as @a[gamemode=!spectator, gamemode=!creative, distance=..10] run function bedwars_extras:raycast/cast
execute if entity @s[tag=hunt] if entity @a[tag=raycast_hit, distance=..10] run execute unless score @s animatronics_visible matches 40.. run scoreboard players add @s animatronics_visible 1
execute if entity @s[tag=hunt] unless entity @a[tag=raycast_hit, distance=..10] unless score @s animatronics_visible matches ..0 run scoreboard players remove @s animatronics_visible 1
execute if entity @s[tag=hunt] if score @s animatronics_visible matches 20 run function bedwars_extras:animatronics/jumpscare
execute if entity @s[tag=hunt] if score @s animatronics_visible matches 20 run scoreboard players set @s animatronics_visible 0

# kill anyone that is right there
execute if entity @s[tag=hunt] as @a[distance=..1.5] run damage @s 1000 minecraft:cramming

# wait for a second after hunt
execute unless entity @s[tag=hunt] run scoreboard players add foxy_hunt_reset animatronics_data 1
# do the killing
execute if score foxy_hunt_reset animatronics_data matches 39 run tag @a remove raycast_hit
execute if score foxy_hunt_reset animatronics_data matches 39 as @a[gamemode=!spectator, gamemode=!creative, distance=..10] run function bedwars_extras:raycast/cast
execute if score foxy_hunt_reset animatronics_data matches 39 run function bedwars_extras:animatronics/jumpscare
# break the bed
execute if score foxy_hunt_reset animatronics_data matches 39 store result score foxy_bed_los_req animatronics_data run fill ^ ^15 ^1 ^ ^15 ^4 white_wool
execute if score foxy_hunt_reset animatronics_data matches 39 run fill ^ ^15 ^1 ^ ^15 ^4 air
execute if score foxy_hunt_reset animatronics_data matches 39 store result score foxy_bed_los animatronics_data run fill ^ ^ ^1 ^ ^ ^4 barrier replace air
execute if score foxy_hunt_reset animatronics_data matches 39 run fill ^ ^ ^1 ^ ^ ^4 air replace barrier
execute if score foxy_hunt_reset animatronics_data matches 39 if score foxy_bed_los animatronics_data = foxy_bed_los_req animatronics_data as @e[tag=bed, sort=nearest, limit=1] run function bedwars_extras:animatronics/foxy_destroy_bed
# reset
execute if score foxy_hunt_reset animatronics_data matches 40.. run scoreboard players set foxy_hunt animatronics_data 0
execute if score foxy_hunt_reset animatronics_data matches 40.. run function bedwars_extras:animatronics/assign_pose
execute if score foxy_hunt_reset animatronics_data matches 40.. at @e[tag=animatronic_path_node_stage_foxy, limit=1] run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator, gamemode=!creative]
execute if score foxy_hunt_reset animatronics_data matches 40.. run scoreboard players reset foxy_hunt_reset animatronics_data
