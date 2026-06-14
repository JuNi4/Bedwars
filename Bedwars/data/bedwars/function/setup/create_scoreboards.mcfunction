# spawner data
scoreboard objectives add spawn_cooldown dummy
scoreboard objectives add spawn_cooldown_max dummy
scoreboard objectives add spawn_cooldown_display dummy
# general data
scoreboard objectives add data dummy
# item dissapear time
scoreboard objectives add item_deathtime dummy
# death counter for custom respawn
scoreboard objectives add deaths deathCount
scoreboard objectives add deathTimeInS dummy

# invisibility stuff
scoreboard objectives add damage_received minecraft.custom:minecraft.damage_taken
scoreboard objectives add fall_distance minecraft.custom:minecraft.fall_one_cm

# on leave
scoreboard objectives add left_game minecraft.custom:minecraft.leave_game

# health
scoreboard objectives add health health Health
scoreboard objectives setdisplay below_name health

# triggers
scoreboard objectives add start trigger
scoreboard objectives add reset trigger


# statistics
scoreboard objectives add statistic_wins dummy
scoreboard objectives add statistic_kills dummy
scoreboard objectives add statistic_kills_counter playerKillCount
scoreboard objectives add statistic_deaths dummy
scoreboard objectives add statistic_played_games dummy
scoreboard objectives add statistic_beds_destroyed dummy
scoreboard objectives add statistic_beds_destroyed_unchecked dummy
scoreboard objectives add statistic_beds_red minecraft.mined:minecraft.red_bed
scoreboard objectives add statistic_beds_yellow minecraft.mined:minecraft.yellow_bed
scoreboard objectives add statistic_beds_lime minecraft.mined:minecraft.lime_bed
scoreboard objectives add statistic_beds_blue minecraft.mined:minecraft.blue_bed