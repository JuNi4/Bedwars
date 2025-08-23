# TODO: better implementation
execute at @e[tag=primed_tnt] run playsound minecraft:entity.tnt.primed block @a ~ ~ ~
execute at @e[tag=primed_tnt] run summon tnt ~ ~ ~ {Motion:[0d, 0.1d, 0d]}
kill @e[tag=primed_tnt]