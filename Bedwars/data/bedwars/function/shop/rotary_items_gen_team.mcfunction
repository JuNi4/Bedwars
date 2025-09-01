# void generateForTeam(team, count)
# {
#     items = {/* Shop items here */};
#     i = 0;
#     generateItems(count);
# }

# create rotary items storage
$data modify storage bedwars:rotary_items items set from storage bedwars:rotary_items $(team)_rotary_items

# store the team value in args
$data modify storage bedwars:rotary_items args.team set value "$(team)"

# reset index value
scoreboard players set rotary_items_i data 0

function bedwars:shop/rotary_items_gen_loop