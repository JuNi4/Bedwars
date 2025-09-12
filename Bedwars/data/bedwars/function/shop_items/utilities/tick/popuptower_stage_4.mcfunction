$fill ^-1 ^3 ^-1 ^1 ^3 ^-1 $(team)_wool replace air
$fill ^-2 ^3 ^ ^-2 ^3 ^1 $(team)_wool replace air
$fill ^2 ^3 ^ ^2 ^3 ^1 $(team)_wool replace air
$fill ^-1 ^3 ^2 ^1 ^3 ^2 $(team)_wool replace air
$setblock ^ ^3 ^ ladder[facing=$(facing)] keep
playsound minecraft:entity.chicken.egg ambient @a
execute if score enable_popup_teleport data matches 1 positioned ^ ^3 ^ run tp @a[distance=..2] ^ ^1 ^