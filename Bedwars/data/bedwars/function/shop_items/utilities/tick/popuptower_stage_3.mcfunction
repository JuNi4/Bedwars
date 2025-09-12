$fill ^-1 ^2 ^-1 ^1 ^2 ^-1 $(team)_wool replace air
$fill ^-2 ^2 ^ ^-2 ^2 ^1 $(team)_wool replace air
$fill ^2 ^2 ^ ^2 ^2 ^1 $(team)_wool replace air
$fill ^-1 ^2 ^2 ^1 ^2 ^2 $(team)_wool replace air
$setblock ^ ^2 ^ ladder[facing=$(facing)] keep
playsound minecraft:entity.chicken.egg ambient @a
execute if score enable_popup_teleport data matches 1 positioned ^ ^2 ^ run tp @a[distance=..2] ^ ^1 ^