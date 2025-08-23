$function bedwars:shop_items/api/register_for_team {\
    team:$(team),\
    item: {\
        maxUses:9999999,\
        xp:0,\
        buy: {id:"minecraft:iron_ingot",count:4},\
        sell:{id:"minecraft:$(team)_wool",count:16}\
}}