# layer 1
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=1}] at @s run fill ^-1 ^ ^-1 ^1 ^ ^-1 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=1}] at @s run fill ^-2 ^ ^ ^-2 ^ ^1 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=1}] at @s run fill ^2 ^ ^ ^2 ^ ^1 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=1}] at @s run setblock ^-1 ^ ^2 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=1}] at @s run setblock ^1 ^ ^2 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=1}] at @s run setblock ^ ^ ^ ladder[facing=$(facing)] keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=1}] at @s run playsound minecraft:entity.chicken.egg ambient @a
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=1}] at @s run tp @a[distance=..2] ^ ^1 ^
# layer 2
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=4}] at @s run fill ^-1 ^1 ^-1 ^1 ^1 ^-1 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=4}] at @s run fill ^-2 ^1 ^ ^-2 ^1 ^1 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=4}] at @s run fill ^2 ^1 ^ ^2 ^1 ^1 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=4}] at @s run setblock ^-1 ^1 ^2 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=4}] at @s run setblock ^1 ^1 ^2 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=4}] at @s run setblock ^ ^1 ^ ladder[facing=$(facing)] keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=4}] at @s run playsound minecraft:entity.chicken.egg ambient @a
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=4}] at @s positioned ^ ^1 ^ run tp @a[distance=..2] ^ ^1 ^
# layer 3
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=8}] at @s run fill ^-1 ^2 ^-1 ^1 ^2 ^-1 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=8}] at @s run fill ^-2 ^2 ^ ^-2 ^2 ^1 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=8}] at @s run fill ^2 ^2 ^ ^2 ^2 ^1 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=8}] at @s run fill ^-1 ^2 ^2 ^1 ^2 ^2 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=8}] at @s run setblock ^ ^2 ^ ladder[facing=$(facing)] keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=8}] at @s run playsound minecraft:entity.chicken.egg ambient @a
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=8}] at @s positioned ^ ^2 ^ run tp @a[distance=..2] ^ ^1 ^
# layer 4
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=12}] at @s run fill ^-1 ^3 ^-1 ^1 ^3 ^-1 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=12}] at @s run fill ^-2 ^3 ^ ^-2 ^3 ^1 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=12}] at @s run fill ^2 ^3 ^ ^2 ^3 ^1 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=12}] at @s run fill ^-1 ^3 ^2 ^1 ^3 ^2 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=12}] at @s run setblock ^ ^3 ^ ladder[facing=$(facing)] keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=12}] at @s run playsound minecraft:entity.chicken.egg ambient @a
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=12}] at @s positioned ^ ^3 ^ run tp @a[distance=..2] ^ ^1 ^
# layer 5
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s run setblock ^ ^4 ^ ladder[facing=$(facing)] keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s run fill ^-3 ^4 ^3 ^3 ^4 ^-2 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s if block ^-3 ^4 ^-2 $(team)_wool run setblock ^-3 ^4 ^-2 air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s if block ^-1 ^4 ^-2 $(team)_wool run setblock ^-1 ^4 ^-2 air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s if block ^1 ^4 ^-2 $(team)_wool run setblock ^1 ^4 ^-2 air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s if block ^3 ^4 ^-2 $(team)_wool run setblock ^3 ^4 ^-2 air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s if block ^-3 ^4 ^3 $(team)_wool run setblock ^-3 ^4 ^3 air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s if block ^-1 ^4 ^3 $(team)_wool run setblock ^-1 ^4 ^3 air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s if block ^1 ^4 ^3 $(team)_wool run setblock ^1 ^4 ^3 air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s if block ^3 ^4 ^3 $(team)_wool run setblock ^3 ^4 ^3 air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s run fill ^-3 ^4 ^ ^-3 ^4 ^1 air replace $(team)_wool
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s run fill ^3 ^4 ^ ^3 ^4 ^1 air replace $(team)_wool
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s run playsound minecraft:entity.chicken.egg ambient @a
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=16}] at @s positioned ^ ^4 ^ run tp @a[distance=..2] ^ ^1 ^
# layer 6
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=20}] at @s run fill ^-2 ^5 ^-2 ^2 ^5 ^-2 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=20}] at @s run fill ^-3 ^5 ^-1 ^-3 ^5 ^2 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=20}] at @s run fill ^3 ^5 ^-1 ^3 ^5 ^2 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=20}] at @s run fill ^-2 ^5 ^3 ^2 ^5 ^3 $(team)_wool replace air
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=20}] at @s run playsound minecraft:entity.chicken.egg ambient @a
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=20}] at @s positioned ^ ^5 ^ run tp @a[distance=..2] ^ ^1 ^
# layer 7
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=24}] at @s run setblock ^-2 ^6 ^-2 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=24}] at @s run setblock ^-2 ^6 ^3 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=24}] at @s run setblock ^2 ^6 ^-2 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=24}] at @s run setblock ^2 ^6 ^3 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=24}] at @s run setblock ^ ^6 ^-2 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=24}] at @s run setblock ^ ^6 ^3 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=24}] at @s run setblock ^-3 ^6 ^-1 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=24}] at @s run setblock ^-3 ^6 ^2 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=24}] at @s run setblock ^3 ^6 ^-1 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=24}] at @s run setblock ^3 ^6 ^2 $(team)_wool keep
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=24}] at @s run playsound minecraft:entity.chicken.egg ambient @a
$execute as @e[tag=$(team)_popup_tower, tag=$(facing),scores={item_deathtime=24}] at @s positioned ^ ^6 ^ run tp @a[distance=..2] ^ ^1 ^
