$setblock ^-2 ^6 ^-2 $(team)_wool keep
$setblock ^-2 ^6 ^3 $(team)_wool keep
$setblock ^2 ^6 ^-2 $(team)_wool keep
$setblock ^2 ^6 ^3 $(team)_wool keep
$setblock ^ ^6 ^-2 $(team)_wool keep
$setblock ^ ^6 ^3 $(team)_wool keep
$setblock ^-3 ^6 ^-1 $(team)_wool keep
$setblock ^-3 ^6 ^2 $(team)_wool keep
$setblock ^3 ^6 ^-1 $(team)_wool keep
$setblock ^3 ^6 ^2 $(team)_wool keep
playsound minecraft:entity.chicken.egg ambient @a
execute if score enable_popup_teleport data matches 1 positioned ^ ^6 ^ run tp @a[distance=..2] ^ ^1 ^