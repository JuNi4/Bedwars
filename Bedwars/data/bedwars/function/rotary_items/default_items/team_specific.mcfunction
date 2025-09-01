$function bedwars:rotary_items/api/register_for_team {\
    team:$(team),\
    item: {maxUses:9999999,xp:0,buy:{id:"minecraft:gold_ingot",count:4},\
        sell:{ id:"minecraft:cat_spawn_egg",count:1,components:{\
            "minecraft:entity_data":{id:"minecraft:marker",Tags:["jumpscare_init",$(team)]},\
            "minecraft:item_model":"minecraft:carved_pumpkin",\
            "minecraft:item_name":{"italic":false,"text":"Jumpscare Trap"},\
            "minecraft:lore":[{"italic":false,"text":"It's really loude"}]}}}\
    }