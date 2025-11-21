fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace water
setblock ~ ~ ~ sponge
playsound minecraft:block.sponge.place block @a ~ ~ ~
tag @s add primed_sponge
scoreboard players add @s item_deathtime 0
execute as @s[tag=primed_sponge] run tag @s remove sponge