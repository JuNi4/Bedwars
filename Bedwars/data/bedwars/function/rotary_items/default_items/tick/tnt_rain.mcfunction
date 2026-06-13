execute as @e[type=snowball,nbt={Item:{components: {"minecraft:item_name": {text: "TNT Rain"}}}}] at @s run function bedwars:rotary_items/default_items/tick/tnt_rain_init
execute as @e[tag=tnt_rain] at @s run function bedwars:rotary_items/default_items/tick/tnt_rain_exec
