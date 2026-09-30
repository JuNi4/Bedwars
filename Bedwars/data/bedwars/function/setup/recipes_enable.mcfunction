#:if version::isBelow("1.21.11")
gamerule doLimitedCrafting false
#:else
#::line("gamerule limited_crafting false")
#:endif
scoreboard players set disable_recipes data 0