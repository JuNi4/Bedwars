$fill ^-2 ^5 ^-2 ^2 ^5 ^-2 $(team)_wool replace air
$fill ^-3 ^5 ^-1 ^-3 ^5 ^2 $(team)_wool replace air
$fill ^3 ^5 ^-1 ^3 ^5 ^2 $(team)_wool replace air
$fill ^-2 ^5 ^3 ^2 ^5 ^3 $(team)_wool replace air
playsound minecraft:entity.chicken.egg ambient @a
execute if score enable_popup_teleport data matches 1 positioned ^ ^5 ^ run tp @a[distance=..2] ^ ^1 ^