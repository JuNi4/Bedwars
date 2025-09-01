execute as @e[type=minecraft:snowball,nbt={Item: {components: {"minecraft:item_name": {text: "Emetic Granade"}}}}] run tag @s add emetic_granade_init
execute as @e[tag=emetic_granade_init] at @s run summon arrow ~ ~ ~ {Tags:["emetic_granade"],life:800,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:nausea",amplifier:0,duration:2000}]}}}}
execute as @e[tag=emetic_granade] at @s run data modify entity @s Motion set from entity @e[type=snowball,sort=nearest,limit=1,tag=emetic_granade_init] Motion
kill @e[tag=emetic_granade_init]

execute as @e[tag=emetic_granade, nbt={inGround:0b}] at @s run particle minecraft:dust{color:[0.24, 0.17, 0.14],scale:1} ~ ~ ~ 0 0 0 0 1 normal
execute as @e[tag=emetic_granade,nbt={inGround:1b}] at @s run particle minecraft:dust{color:[0.24, 0.17, 0.14],scale:2} ~ ~ ~ 3 3 3 0 25 normal
execute as @e[tag=emetic_granade,nbt={inGround:1b}] at @s run effect give @a[distance=..6,tag=!poison_imune] minecraft:nausea 5 0 false