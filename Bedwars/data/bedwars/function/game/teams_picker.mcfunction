## RED
# pick a person
$tag @a[tag=sorting_none, limit=$(playercount), sort=random] add sorting_joining
tag @a[tag=sorting_joining] remove sorting_none
# assign them to a team
team join red @a[tag=sorting_joining]
tag @a[tag=sorting_joining] remove sorting_joining
# spawn
function bedwars:game/spawn {team:"red"}

## GREEN (lime)
# pick a person
$tag @a[tag=sorting_none, limit=$(playercount), sort=random] add sorting_joining
tag @a[tag=sorting_joining] remove sorting_none
# assign them to a team
team join lime @a[tag=sorting_joining]
tag @a[tag=sorting_joining] remove sorting_joining
# spawn
function bedwars:game/spawn {team:"lime"}

## YELLOW
# pick a person
$execute if score teams data matches 3.. run tag @a[tag=sorting_none, limit=$(playercount), sort=random] add sorting_joining
execute if score teams data matches 3.. run tag @a[tag=sorting_joining] remove sorting_none
# assign them to a team
execute if score teams data matches 3.. run team join yellow @a[tag=sorting_joining]
execute if score teams data matches 3.. run tag @a[tag=sorting_joining] remove sorting_joining
# spawn
execute if score teams data matches 3.. run function bedwars:game/spawn {team:"yellow"}

## BLUE
# pick a person
$execute if score teams data matches 4.. run tag @a[tag=sorting_none, limit=$(playercount), sort=random] add sorting_joining
execute if score teams data matches 4.. run tag @a[tag=sorting_joining] remove sorting_none
# assign them to a team
execute if score teams data matches 4.. run team join blue @a[tag=sorting_joining]
execute if score teams data matches 4.. run tag @a[tag=sorting_joining] remove sorting_joining
# spawn
function bedwars:game/spawn {team:"blue"}
