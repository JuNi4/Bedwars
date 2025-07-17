# for a team
$execute as @e[tag=smoke_bomb,nbt={inGround:0b}] at @s if entity @s[team=$(team)] run particle dust{color:$(color),scale:0.5} ~ ~ ~ 0 0 0 .5 3 normal
$execute as @e[tag=smoke_bomb,nbt={inGround:1b}] at @s if entity @s[team=$(team)] run particle dust{color:$(color),scale:4} ~ ~ ~ 3 2.5 3 .5 42 normal @a[team=!$(team)]
$execute as @e[tag=smoke_bomb,nbt={inGround:1b}] at @s if entity @s[team=$(team)] run particle dust{color:$(color),scale:0.5} ~ ~ ~ 3 2.5 3 .5 4 normal @a[team=$(team)]