$say $(team)

$execute unless entity @e[tag=$(team)_bed] run return fail
$execute as @e[tag=$(team)_bed] at @s run summon minecraft:marker ~ ~ ~ {Tags:["$(team)_bed_remover"]}
$kill @e[tag=$(team)_bed]
$execute as @e[tag=$(team)_bed_remover] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace $(team)_bed
$kill @e[tag=$(team)_bed_remover]
$function bedwars_extras:animatronics/bed_destroyed {team:$(team), team_name:$(team_name), team_col:$(team_col)}