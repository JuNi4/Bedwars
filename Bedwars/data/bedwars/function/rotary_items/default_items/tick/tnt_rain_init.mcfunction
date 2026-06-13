summon marker ~ ~ ~ {Tags:["tnt_rain"]}
scoreboard players set @e[tag=tnt_rain,distance=..1,tag=!done] item_deathtime 100
tag @e[tag=tnt_rain,distance=..1,tag=!done] add done
kill @s