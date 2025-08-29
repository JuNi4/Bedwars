$execute as @e[tag=popupprocessed_init, tag=red] at @s run summon marker ~ ~ ~ {NoGravity:1b,Silent:1b,Rotation:[$(fx)F,$(fy)F],Tags:["red_popup_tower","popup_tower","south"]}
$execute as @e[tag=popupprocessed_init, tag=lime] at @s run summon marker ~ ~ ~ {NoGravity:1b,Silent:1b,Rotation:[$(fx)F,$(fy)F],Tags:["lime_popup_tower","popup_tower","south"]}
$execute as @e[tag=popupprocessed_init, tag=yellow] at @s run summon marker ~ ~ ~ {NoGravity:1b,Silent:1b,Rotation:[$(fx)F,$(fy)F],Tags:["yellow_popup_tower","popup_tower","south"]}
$execute as @e[tag=popupprocessed_init, tag=blue] at @s run summon marker ~ ~ ~ {NoGravity:1b,Silent:1b,Rotation:[$(fx)F,$(fy)F],Tags:["blue_popup_tower","popup_tower","south"]}
kill @e[tag=popupprocessed_init]