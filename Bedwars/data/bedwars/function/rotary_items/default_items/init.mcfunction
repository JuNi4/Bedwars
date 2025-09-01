# time warp pearl
function bedwars:rotary_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:emerald",count:2},\
        sell:{ id:"minecraft:ender_pearl", count:1, components:{\
            "minecraft:item_name":{"italic":false,"text":"Time Warp Pearl"},\
            "minecraft:lore":[{"italic":false,"text":"You have 10 seconds"}],\
            "enchantment_glint_override":true\
        }}}}
# remote detonator
function bedwars:rotary_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:16},\
        sell:{ id:"minecraft:snowball", count:1, components:{\
            "max_stack_size":1,\
            "item_model":"minecraft:tnt",\
            "item_name":"Remote Detonator",\
            "lore":["KABOOM! on command"],\
            "enchantment_glint_override":true\
        }}}}
# bouncy platform
function bedwars:rotary_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:iron_ingot",count:24},\
        sell:{ id:"minecraft:snowball", count:1, components:{\
            "max_stack_size":64,\
            "item_model":"minecraft:slime_block",\
            "item_name":{"italic":false,"text":"Bouncy Platform"},\
            "lore":[{"italic":false,"text":"Helps you when falling"}]\
        }}}}
# proximity mine
function bedwars:rotary_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:6},\
        sell:{ id:"minecraft:iron_golem_spawn_egg", count:1, components:{\
            "entity_data":{id:"minecraft:marker",Tags:["mine"]},\
            "item_name":{"italic":false,"text":"Proximity Mine"},\
            "lore":[{"italic":false,"text":"Do not step on it"}],\
            "item_model":"minecraft:stone_pressure_plate"\
        }}}}
# smoke bomb
function bedwars:rotary_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:6},\
        sell:{ id:"minecraft:snowball", count:1, components:{\
            "item_model":"minecraft:smoker",\
            "item_name":{"italic":false,"text":"Smoke Bomb"},\
            "lore":[{"italic":false,"text":"A lot of smoke"}],\
            "use_cooldown":{seconds:5,cooldown_group:"smoke_bomb"},\
            "max_stack_size":8\
        }}}}
# emetic grenade
function bedwars:rotary_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:6},\
        sell: { id:"minecraft:snowball",count:1,components:{\
            "item_name":{"italic":false,"text":"Emetic Granade"},\
            "item_model":"minecraft:blue_egg",lore:[{"italic":false,"text":"Try not to vomit"}],\
            "use_cooldown":{seconds:5,cooldown_group:"emetic_granade"}}}}}
# poison grenade
function bedwars:rotary_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:8},\
        sell: { id:"minecraft:snowball",count:1,components:{\
            "item_name":{"italic":false,"text":"Poison Granade"},\
            "item_model":"minecraft:waxed_weathered_copper_bulb",lore:[{"italic":false,"text":"Do not inhale!"}],\
            "use_cooldown":{seconds:5,cooldown_group:"poison_granade"}}}}}
# mace
function bedwars:rotary_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:mace",count:1}}}
# Wind charges
function bedwars:rotary_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:iron_ingot",count:24},sell:{id:"minecraft:wind_charge",count:8}}}
# Trident
function bedwars:rotary_items/api/register_all_teams {item:{maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:10},sell:{id:"minecraft:trident",count:1, components:{\
        "enchantments":{"minecraft:loyalty":3},\
        "unbreakable":{},\
        "item_name":"Throwable Trident",\
        "lore":[{"bold":false,"text":"Warning: not void-save"}],\
        "enchantment_glint_override":false,\
        "attribute_modifiers":[{"id":"attack_damage","type":"attack_damage","amount":4,"operation":"add_value"}]\
    }}}}

function bedwars:rotary_items/api/register_team_specific {function:"bedwars:rotary_items/default_items/team_specific"}