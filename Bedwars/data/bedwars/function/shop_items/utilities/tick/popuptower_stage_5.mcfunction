$setblock ^ ^4 ^ ladder[facing=$(facing)] keep
$fill ^-3 ^4 ^3 ^3 ^4 ^-2 $(team)_wool replace air
$execute if block ^-3 ^4 ^-2 $(team)_wool run setblock ^-3 ^4 ^-2 air
$execute if block ^-1 ^4 ^-2 $(team)_wool run setblock ^-1 ^4 ^-2 air
$execute if block ^1 ^4 ^-2 $(team)_wool run setblock ^1 ^4 ^-2 air
$execute if block ^3 ^4 ^-2 $(team)_wool run setblock ^3 ^4 ^-2 air
$execute if block ^-3 ^4 ^3 $(team)_wool run setblock ^-3 ^4 ^3 air
$execute if block ^-1 ^4 ^3 $(team)_wool run setblock ^-1 ^4 ^3 air
$execute if block ^1 ^4 ^3 $(team)_wool run setblock ^1 ^4 ^3 air
$execute if block ^3 ^4 ^3 $(team)_wool run setblock ^3 ^4 ^3 air
$fill ^-3 ^4 ^ ^-3 ^4 ^1 air replace $(team)_wool
$fill ^3 ^4 ^ ^3 ^4 ^1 air replace $(team)_wool
playsound minecraft:entity.chicken.egg ambient @a
execute if score enable_popup_teleport data matches 1 positioned ^ ^4 ^ run tp @a[distance=..2] ^ ^1 ^