# summons a villager with all trades that are in the item shop
# arguments are:
#  `team` the color of the team, determents the wool color
$summon villager ~ ~ ~ \
    { NoGravity:1b, Silent:1b, Invulnerable:1b, CustomNameVisible:1b, PersistenceRequired:1b, CanPickUpLoot:0b,\
      CustomName:"Item Shop", VillagerData:{level:99,profession:"minecraft:weaponsmith",type:"minecraft:plains"}, \
      Tags:["$(team)_item_shop", "item_shop"], Offers: { Recipes: [\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:$(team)_wool",count:16}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:oak_planks",count:16}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:iron_ingot",count:24},sell:{id:"minecraft:end_stone",count:12}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:obsidian",count:4}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:7},sell:{id:"minecraft:iron_sword",count:1, components:{"minecraft:unbreakable":{}}}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_sword",count:1, components:{"minecraft:unbreakable":{}}}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:12},sell:{id:"minecraft:iron_chestplate",count:1, components:{"minecraft:unbreakable":{}, "item_name":"Permanent Iron Armor"}}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:emerald",count:6},sell:{id:"minecraft:diamond_chestplate",count:1, components:{"minecraft:unbreakable":{}, "item_name":"Permanent Diamond Armor"}}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:iron_ingot",count:10},sell:{id:"minecraft:wooden_pickaxe",count:1, components:{"minecraft:unbreakable":{}}}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:iron_ingot",count:10},sell:{id:"minecraft:wooden_axe",count:1, components:{"minecraft:unbreakable":{}, "attribute_modifiers":[{"id":"attack_damage","type":"attack_damage","amount":2,"operation":"add_value"}] }}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:5},sell:{id:"minecraft:iron_pickaxe",count:1, components:{"minecraft:unbreakable":{}}}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:5},sell:{id:"minecraft:iron_axe",count:1, components:{"minecraft:unbreakable":{}, "attribute_modifiers":[{"id":"attack_damage","type":"attack_damage","amount":4,"operation":"add_value"}] }}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:iron_ingot",count:20},sell:{id:"minecraft:shears",count:1, components:{"minecraft:unbreakable":{}}}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:3},sell:{id:"minecraft:golden_apple",count:1}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:8},\
            sell:{ id:"minecraft:creeper_spawn_egg", count:1, components:{\
                "minecraft:lore":[{"italic":false,"text":"It's ignited"}],\
                "minecraft:item_name":{"italic":false,"text":"TNT"},\
                "minecraft:use_cooldown":{"seconds":1},\
                "minecraft:item_model":"minecraft:tnt",\
                "minecraft:entity_data":{"id":"minecraft:marker","NoGravity":1b,"Silent":1b,"Tags":["primed_tnt"]}\
            }}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:emerald",count:1},\
            sell:{ id:"minecraft:egg", count:1, components:{\
                "minecraft:lore":[{"italic":false,"text":"A bridge ... in an egg"}],\
                "minecraft:item_name":{"italic":false,"text":"Bridge Egg"},\
                "minecraft:use_cooldown":{seconds:1,cooldown_group:"bridge_egg"}\
            }}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:ender_pearl",count:1}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:iron_ingot",count:40},\
            sell:{ id:"minecraft:snowball", count:1, components:{\
                "minecraft:lore":[{"italic":false,"text":"Can be thrown"}],\
                "minecraft:item_name":{"italic":false,"text":"Fireball"},\
                "minecraft:item_model":"minecraft:fire_charge",\
                "minecraft:use_cooldown":{seconds:0.1,cooldown_group:"fireball"},\
                "minecraft:max_stack_size":64\
            }}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:iron_ingot",count:24},\
            sell:{ id:"minecraft:armor_stand", count:1, components:{\
                "minecraft:item_model":"minecraft:chest",\
                "minecraft:item_name":{"italic":false,"text":"Popup Tower"},\
                "minecraft:lore":[{"italic":false,"text":"A tower ... in a chest"}],\
                "minecraft:entity_data":{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["$(team)_popup_tower","tmp"]},\
            }}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:3},sell:{id:"minecraft:water_bucket",count:1}},\
        {maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:3},\
            sell:{ id:"minecraft:bat_spawn_egg", count:1, components:{\
                "minecraft:entity_data":{\
                    id:"minecraft:marker",Tags:["sponge"]},\
                    "minecraft:item_model":"minecraft:sponge",\
                    "minecraft:item_name":{"italic":false,"text":"Sponge"},\
                    "minecraft:lore":[{"italic":false,"text":"Water be gone!" \
                }]} \
        }},\
]}}
