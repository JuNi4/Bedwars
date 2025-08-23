# summons a villager with all trades that are in the team upgrades shop
$summon villager ~ ~ ~ \
    { NoGravity:1b, Silent:1b, Invulnerable:1b, CustomNameVisible:1b, PersistenceRequired:1b, CanPickUpLoot:0b,\
      CustomName:"Team Upgrades", VillagerData:{level:5,profession:"minecraft:cleric",type:"minecraft:plains"},\
      Tags: ["$(team)_teamupgrades"], Offers: { Recipes: [\
        {maxUses:1,xp:0,buy:{id:"minecraft:diamond",count:8},sell:{id:"minecraft:iron_sword",count:1, components:{"minecraft:item_name":"Sharpened Swords", "custom_data":{"team":"$(team)"}}}},\
        {maxUses:1,xp:0,buy:{id:"minecraft:diamond",count:5},sell:{id:"minecraft:iron_chestplate",count:1, components:{"minecraft:item_name":"Protection I", "custom_data":{"team":"$(team)"}}}},\
        {maxUses:1,xp:0,buy:{id:"minecraft:diamond",count:4},sell:{id:"minecraft:furnace",count:1, components:{"minecraft:item_name":"Iron Forge", "custom_data":{"team":"$(team)"}}}},\
        {maxUses:1,xp:0,buy:{id:"minecraft:diamond",count:3},sell:{id:"minecraft:beacon",count:1, components:{"minecraft:item_name":"Healpool", "custom_data":{"team":"$(team)"}}}},\
        {maxUses:1,xp:0,buy:{id:"minecraft:diamond",count:1},sell:{id:"minecraft:redstone_torch",count:1, components:{"minecraft:item_name":"Alarm Trap", "custom_data":{"team":"$(team)"}}}},\
]}}