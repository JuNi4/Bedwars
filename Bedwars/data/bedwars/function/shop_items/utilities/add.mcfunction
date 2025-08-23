$function bedwars:shop_items/api/register_for_team {\
    team:$(team),\
    item:{maxUses:9999999,xp:0,buy:{id:"minecraft:iron_ingot",count:24},\
    sell:{ id:"minecraft:armor_stand", count:1, components:{\
        "minecraft:item_model":"minecraft:chest",\
        "minecraft:item_name":{"italic":false,"text":"Popup Tower"},\
        "minecraft:lore":[{"italic":false,"text":"A tower ... in a chest"}],\
        "minecraft:entity_data":{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["$(team)_popup_tower","tmp"]}\
    }}}}