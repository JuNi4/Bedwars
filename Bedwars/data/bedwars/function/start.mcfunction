execute unless entity @e[tag=clear_from_tick] run return run function bedwars:setup/start
tellraw @a {"text":"Can't start a game whilest map clear is in progress.","color":"red"}