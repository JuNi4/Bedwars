# golden apple
function bedwars:shop_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:3},sell:{id:"minecraft:golden_apple",count:1}}}
# tnt
function bedwars:shop_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:8},\
    sell:{ id:"minecraft:creeper_spawn_egg", count:1, components:{\
        "minecraft:lore":[{"italic":false,"text":"It's ignited"}],\
        "minecraft:item_name":{"italic":false,"text":"TNT"},\
        "minecraft:use_cooldown":{"seconds":1},\
        "minecraft:item_model":"minecraft:tnt",\
        "minecraft:entity_data":{"id":"minecraft:marker","NoGravity":1b,"Silent":1b,"Tags":["primed_tnt"]}\
    }}}}
# eggbridge
function bedwars:shop_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:emerald",count:1},\
    sell:{ id:"minecraft:egg", count:1, components:{\
        "minecraft:lore":[{"italic":false,"text":"A bridge ... in an egg"}],\
        "minecraft:item_name":{"italic":false,"text":"Bridge Egg"},\
        "minecraft:use_cooldown":{seconds:1,cooldown_group:"bridge_egg"}\
    }}}}
# ender pearl
function bedwars:shop_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:ender_pearl",count:1}}}
# fireball
function bedwars:shop_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:iron_ingot",count:40},\
    sell:{ id:"minecraft:snowball", count:1, components:{\
        "minecraft:lore":[{"italic":false,"text":"Can be thrown"}],\
        "minecraft:item_name":{"italic":false,"text":"Fireball"},\
        "minecraft:item_model":"minecraft:fire_charge",\
        "minecraft:use_cooldown":{seconds:0.1,cooldown_group:"fireball"},\
        "minecraft:max_stack_size":64\
    }}}}
# water bucket
function bedwars:shop_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:3},sell:{id:"minecraft:water_bucket",count:1}}}
# sponge (anti water bucket)
function bedwars:shop_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:3},\
    sell:{ id:"minecraft:bat_spawn_egg", count:1, components:{\
        "minecraft:entity_data":{\
            id:"minecraft:marker",Tags:["sponge"]},\
            "minecraft:item_model":"minecraft:sponge",\
            "minecraft:item_name":{"italic":false,"text":"Sponge"},\
            "minecraft:lore":[{"italic":false,"text":"Water be gone!"}]\
    }}}}

# popup tower, 
function bedwars:shop_items/api/register_team_specific {function:"bedwars:shop_items/utilities/add"}