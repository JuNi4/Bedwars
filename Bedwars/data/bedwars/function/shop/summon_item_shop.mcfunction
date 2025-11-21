# summons a villager with all trades that are in the item shop
# arguments are:
#  `team` the color of the team, determents the wool color
$summon villager ~ ~ ~ \
    { NoGravity:1b, Silent:1b, Invulnerable:1b, CustomNameVisible:1b, PersistenceRequired:1b, CanPickUpLoot:0b,\
      CustomName:"Item Shop", VillagerData:{level:5,profession:"minecraft:weaponsmith",type:"minecraft:plains"}, \
      Tags:["$(team)_item_shop", "item_shop"], Offers: { Recipes: $(items) } }


# add in the no move part