# is the extras datapack loaded
scoreboard players set extras_loaded data 0
function #bedwars:before_load

# register all maps
function bedwars:maps/registry
# register all rotary items
function bedwars:rotary_items/registry
# register all shop items
function bedwars:shop_items/registry
