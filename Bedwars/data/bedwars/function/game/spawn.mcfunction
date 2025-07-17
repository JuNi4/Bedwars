$tp @a[team=$(team), tag=spawn] @e[tag=$(team)_spawnpoint, limit=1]
$execute at @a[team=$(team), tag=spawn] run tp @a[team=$(team), tag=spawn] ~ ~ ~ facing entity @e[tag=$(team)_bed,limit=1]
$gamemode survival @a[team=$(team), tag=spawn]
$execute at @e[tag=$(team)_spawnpoint, limit=1] run spawnpoint @a[team=$(team), tag=spawn]
$effect give @a[team=$(team), tag=spawn] minecraft:resistance 3 5 true
$tag @a[team=$(team), tag=spawn] remove spawn