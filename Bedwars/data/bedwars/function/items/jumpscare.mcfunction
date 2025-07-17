execute as @e[tag=jumpscare_init] at @s unless block ~ ~ ~ air run tag @s add jumpscare_misplaced
# teamed reset
function bedwars:items/jumpscare_reset_teamed {team:"red"}
function bedwars:items/jumpscare_reset_teamed {team:"lime"}
function bedwars:items/jumpscare_reset_teamed {team:"yellow"}
function bedwars:items/jumpscare_reset_teamed {team:"blue"}

kill @e[tag=jumpscare_misplaced]

execute as @e[tag=jumpscare_init] at @s run setblock ~ ~ ~ stone_button[face=floor]
tag @e[tag=jumpscare_init] add jumpscare
execute as @e[tag=jumpscare_init,tag=jumpscare] run tag @s remove jumpscare_init

execute as @e[tag=jumpscare] at @s unless block ~ ~ ~ stone_button run kill @s

# teamed functionality
execute as @e[tag=jumpscare] at @s if entity @s[tag=red] run function bedwars:items/jumpscare_teamed {team:red}
execute as @e[tag=jumpscare] at @s if entity @s[tag=lime] run function bedwars:items/jumpscare_teamed {team:lime}
execute as @e[tag=jumpscare] at @s if entity @s[tag=yellow] run function bedwars:items/jumpscare_teamed {team:yellow}
execute as @e[tag=jumpscare] at @s if entity @s[tag=blue] run function bedwars:items/jumpscare_teamed {team:blue}

# cleanup
execute at @e[tag=jumpscare_play] run setblock ~ ~ ~ air
kill @e[tag=jumpscare_play]

# do not drop stone buttons
kill @e[type=item,nbt={Item: {id: "minecraft:stone_button"}}]