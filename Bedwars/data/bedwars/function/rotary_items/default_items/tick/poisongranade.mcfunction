execute as @e[type=minecraft:snowball,nbt={Item: {components: {"minecraft:item_name": {text: "Poison Granade"}}}}] run tag @s add poison_granade_init
execute as @e[tag=poison_granade_init] at @s run summon arrow ~ ~ ~ {Tags:["poison_granade", "poison_granade_arrow_init"],life:800,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:2000,show_particles:1b,show_icon:0b}]}}}}
execute as @e[tag=poison_granade_arrow_init] at @s run data modify entity @s Owner set from entity @p UUID
tag @e[tag=poison_granade_arrow_init] remove poison_granade_arrow_init
execute as @e[tag=poison_granade] at @s run data modify entity @s Motion set from entity @e[type=snowball,sort=nearest,limit=1,tag=poison_granade_init] Motion
kill @e[tag=poison_granade_init]

execute as @e[tag=poison_granade, nbt={inGround:0b}] at @s run particle minecraft:dust{color:[0.0,0.5,0.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal
execute as @e[tag=poison_granade,nbt={inGround:1b}] at @s run particle minecraft:dust{color:[0.0,0.5,0.0],scale:2} ~ ~ ~ 3 3 3 0 25 normal
execute as @e[tag=poison_granade,nbt={inGround:1b}] at @s run effect give @a[distance=..6,tag=!poison_immune] minecraft:poison 5 0 false
