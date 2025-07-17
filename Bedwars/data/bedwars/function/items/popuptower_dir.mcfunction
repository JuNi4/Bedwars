$execute as @e[tag=$(team)_popup_tower, tag=!popup_tower, y_rotation=0..89] at @s run summon marker ~ ~ ~ {NoGravity:1b,Rotation:[0F,0F],Tags:["$(team)_popup_tower","south", "popup_tower"]}
$execute as @e[tag=$(team)_popup_tower, tag=!popup_tower, y_rotation=90..179] at @s run summon marker ~ ~ ~ {NoGravity:1b,Rotation:[90F,0F],Tags:["$(team)_popup_tower","west", "popup_tower"]}
$execute as @e[tag=$(team)_popup_tower, tag=!popup_tower, y_rotation=180..269] at @s run summon marker ~ ~ ~ {NoGravity:1b,Rotation:[180F,0F],Tags:["$(team)_popup_tower","north", "popup_tower"]}
$execute as @e[tag=$(team)_popup_tower, tag=!popup_tower, y_rotation=270..359] at @s run summon marker ~ ~ ~ {NoGravity:1b,Rotation:[-90F,0F],Tags:["$(team)_popup_tower","east", "popup_tower"]}
$kill @e[tag=$(team)_popup_tower,tag=tmp]

$function bedwars:items/popuptower_place {team:$(team), facing:north}
$function bedwars:items/popuptower_place {team:$(team), facing:east}
$function bedwars:items/popuptower_place {team:$(team), facing:south}
$function bedwars:items/popuptower_place {team:$(team), facing:west}