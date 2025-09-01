execute as @e[type=snowball,nbt={Item:{components: {"minecraft:item_name": {text: "Smoke Bomb"}}}}] run tag @s add smoke_bomb_init
execute at @e[tag=smoke_bomb_init] run summon arrow ~ ~ ~ {Tags:["smoke_bomb"],life:1000,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:blindness",amplifier:255,duration:1000,show_particles:1b,show_icon:0b},{id:"minecraft:slowness",amplifier:0,duration:500,show_particles:0b,show_icon:0b}]}}}}
execute as @e[tag=smoke_bomb_init] at @s run data modify entity @e[tag=smoke_bomb,sort=nearest,limit=1] Motion set from entity @s Motion
# teams
execute at @e[tag=smoke_bomb_init] as @a[sort=nearest,limit=1] if entity @s[team=red] run team join red @e[tag=smoke_bomb,sort=nearest,limit=1]
execute at @e[tag=smoke_bomb_init] as @a[sort=nearest,limit=1] if entity @s[team=lime] run team join lime @e[tag=smoke_bomb,sort=nearest,limit=1]
execute at @e[tag=smoke_bomb_init] as @a[sort=nearest,limit=1] if entity @s[team=yellow] run team join yellow @e[tag=smoke_bomb,sort=nearest,limit=1]
execute at @e[tag=smoke_bomb_init] as @a[sort=nearest,limit=1] if entity @s[team=blue] run team join blue @e[tag=smoke_bomb,sort=nearest,limit=1]
# init end
kill @e[tag=smoke_bomb_init]

function bedwars:items/smokebomb_teamed {team:red, color:[1.0,0.0,0.0]}
function bedwars:items/smokebomb_teamed {team:green, color:[0.0,1.0,0.0]}
function bedwars:items/smokebomb_teamed {team:yellow, color:[1.0,1.0,0.0]}
function bedwars:items/smokebomb_teamed {team:blue, color:[0.0,0.0,1.0]}
function bedwars:items/smokebomb_teamed {team:"", color:[1.0,1.0,1.0]}