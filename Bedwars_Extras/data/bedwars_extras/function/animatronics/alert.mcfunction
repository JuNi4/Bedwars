# Alerts the animatronics that a player is present somewhere

# check if animatronics are enabled
execute if score animatronic_enabled animatronics_data matches 0 run return fail

# only continue if the cooldown is not active
execute if score alert_cooldown animatronics_data matches 1.. run return fail

# reset cooldown
scoreboard players set alert_cooldown animatronics_data 300

# do the alerting
#say hi

# do the moving
function bedwars_extras:animatronics/move