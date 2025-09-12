$fill ^-1 ^1 ^-1 ^1 ^1 ^-1 $(team)_wool replace air
$fill ^-2 ^1 ^ ^-2 ^1 ^1 $(team)_wool replace air
$fill ^2 ^1 ^ ^2 ^1 ^1 $(team)_wool replace air
$setblock ^-1 ^1 ^2 $(team)_wool keep
$setblock ^1 ^1 ^2 $(team)_wool keep
$setblock ^ ^1 ^ ladder[facing=$(facing)] keep
playsound minecraft:entity.chicken.egg ambient @a
execute if score enable_popup_teleport data matches 1 positioned ^ ^1 ^ run tp @a[distance=..2] ^ ^1 ^