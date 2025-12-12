kill @e[tag=glowing_eyes, limit=1, sort=nearest, distance=..1.5]
summon text_display ~ ~1.43775 ~ {\
    Glowing:1b,\
    billboard:"fixed",\
    default_background:0b,\
    shadow:0b,\
    Tags:["glowing_eyes"],\
    glow_color_override:16383998,\
    brightness:{sky:15,block:15},\
    text:{"color":"white","text":".  ."},\
    background:0}


# x and y
execute store result entity @e[tag=glowing_eyes, limit=1, sort=nearest] Rotation[0] int 1 run data get entity @s Rotation[0] 1
#execute store result entity @e[tag=glowing_eyes, limit=1, sort=nearest, distance=..5] Rotation[1] int 1 run data get entity @s Rotation[0] 1

execute store result score input math run data get entity @s Pose.Head[0] 1
execute store result score input1 math run data get entity @s Pose.Head[1] -1
execute store result score input2 math run data get entity @s Pose.Head[2] -1
function math:euler_to_quaternion
data modify entity @e[tag=glowing_eyes, limit=1, sort=nearest] transformation.right_rotation set from storage math:quaternion output

# translation
data modify storage math:rotation input set from entity @s Pose.Head
scoreboard players set input math 10
scoreboard players set input1 math 270
scoreboard players set input2 math 328
function math:apply_euler

# translate
#execute as @e[tag=glowing_eyes,limit=1] at @s run function test:tp_rf with storage bedwars_extras:animatronic arg.translation
data modify entity @e[tag=glowing_eyes, limit=1, sort=nearest] transformation.translation set from storage math:rotation output

# reset rotation
execute store result entity @e[tag=glowing_eyes, limit=1, sort=nearest] Rotation[0] int 1 run data get entity @s Rotation[0] 1
data modify entity @e[tag=glowing_eyes, limit=1, sort=nearest] Rotation[1] set value 0