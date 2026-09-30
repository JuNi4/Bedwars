#:if version::isBelow("1.21.11")
gamerule doLimitedCrafting true
#:else
#::line("gamerule limited_crafting true")
#:endif
scoreboard players set disable_recipes data 1