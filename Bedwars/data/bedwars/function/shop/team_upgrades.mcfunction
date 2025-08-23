# iron forge upgrade
$execute store success score upgrade_bought data run clear @a minecraft:furnace[minecraft:item_name="Iron Forge", custom_data={"team":"$(team)"}]
$execute if score upgrade_bought data matches 1 run data modify entity @e[tag=$(team)_teamupgrades,limit=1] Offers.Recipes[2] set value {maxUses:1,buy:{id:"diamond",count:8},sell:{id:"furnace",count:1,components:{"minecraft:item_name":"Golden Forge", "custom_data":{"team":"$(team)"}}}}
$execute if score upgrade_bought data matches 1 run tellraw @a[team=$(team)] ["",{"text":"Iron Forge","color":"white"},{"text":" team upgrade bought.","color":"gold"}]
$execute if score upgrade_bought data matches 1 run scoreboard players set @e[tag=iron_spawner, tag=$(team)_forge] spawn_cooldown_max 60
$execute if score upgrade_bought data matches 1 run function bedwars:shop/team_upgrades_sound {team:$(team)}
# golden forge upgrade
$execute store success score upgrade_bought data run clear @a minecraft:furnace[minecraft:item_name="Golden Forge", custom_data={"team":"$(team)"}]
$execute if score upgrade_bought data matches 1 run data modify entity @e[tag=$(team)_teamupgrades,limit=1] Offers.Recipes[2] set value {maxUses:1,buy:{id:"diamond",count:12},sell:{id:"furnace",count:1,components:{"minecraft:item_name":"Emerald Forge", "custom_data":{"team":"$(team)"}}}}
$execute if score upgrade_bought data matches 1 run tellraw @a[team=$(team)] ["",{"text":"Golden Forge","color":"yellow"},{"text":" team upgrade bought.","color":"gold"}]
$execute if score upgrade_bought data matches 1 run scoreboard players set @e[tag=gold_spawner, tag=$(team)_forge] spawn_cooldown_max 90
$execute if score upgrade_bought data matches 1 run function bedwars:shop/team_upgrades_sound {team:$(team)}
# emerald forge upgrade
$execute store success score upgrade_bought data run clear @a minecraft:furnace[minecraft:item_name="Emerald Forge", custom_data={"team":"$(team)"}]
$execute if score upgrade_bought data matches 1 run data modify entity @e[tag=$(team)_teamupgrades,limit=1] Offers.Recipes[2] set value {maxUses:1,buy:{id:"diamond",count:16},sell:{id:"furnace",count:1,components:{"minecraft:item_name":"Molten Forge", "custom_data":{"team":"$(team)"}}}}
$execute if score upgrade_bought data matches 1 run tellraw @a[team=$(team)] ["",{"text":"Emerald Forge","color":"green"},{"text":" team upgrade bought.","color":"gold"}]
$execute if score upgrade_bought data matches 1 as @e[tag=iron_spawner, tag=$(team)_forge] at @s run function bedwars:spawners/new {spawner:"emerald", team:$(team)}
$execute if score upgrade_bought data matches 1 run scoreboard players set @e[tag=emerald_spawner, tag=$(team)_forge] spawn_cooldown_max 1500
$execute if score upgrade_bought data matches 1 run function bedwars:shop/team_upgrades_sound {team:$(team)}
# molten forge upgrade
$execute store success score upgrade_bought data run clear @a minecraft:furnace[minecraft:item_name="Molten Forge", custom_data={"team":"$(team)"}]
$execute if score upgrade_bought data matches 1 run tellraw @a[team=$(team)] ["",{"text":"Molten Forge","color":"red"},{"text":" team upgrade bought.","color":"gold"}]
$execute if score upgrade_bought data matches 1 run scoreboard players set @e[tag=iron_spawner, tag=$(team)_forge] spawn_cooldown_max 40
$execute if score upgrade_bought data matches 1 run scoreboard players set @e[tag=gold_spawner, tag=$(team)_forge] spawn_cooldown_max 60
$execute if score upgrade_bought data matches 1 run scoreboard players set @e[tag=emerald_spawner, tag=$(team)_forge] spawn_cooldown_max 750
$execute if score upgrade_bought data matches 1 run function bedwars:shop/team_upgrades_sound {team:$(team)}

# prot 1 upgrade
$execute store success score upgrade_bought data run clear @a minecraft:iron_chestplate[minecraft:item_name="Protection I", custom_data={"team":"$(team)"}]
$execute if score upgrade_bought data matches 1 run data modify entity @e[tag=$(team)_teamupgrades,limit=1] Offers.Recipes[1] set value {maxUses:1,buy:{id:"diamond",count:10},sell:{id:"iron_chestplate",count:1,components:{"minecraft:item_name":"Protection II", "custom_data":{"team":"$(team)"}}}}
$execute if score upgrade_bought data matches 1 run tellraw @a[team=$(team)] ["",{"text":"Protection I","color":"white"},{"text":" team upgrade bought.","color":"gold"}]
$execute if score upgrade_bought data matches 1 run tag @a[team=$(team)] add prot_1
$execute if score upgrade_bought data matches 1 run tag @a[team=$(team)] add equipp
$execute if score upgrade_bought data matches 1 run function bedwars:shop/team_upgrades_sound {team:$(team)}
# prot 2 upgrade
$execute store success score upgrade_bought data run clear @a minecraft:iron_chestplate[minecraft:item_name="Protection II", custom_data={"team":"$(team)"}]
$execute if score upgrade_bought data matches 1 run data modify entity @e[tag=$(team)_teamupgrades,limit=1] Offers.Recipes[1] set value {maxUses:1,buy:{id:"diamond",count:20},sell:{id:"iron_chestplate",count:1,components:{"minecraft:item_name":"Protection III", "custom_data":{"team":"$(team)"}}}}
$execute if score upgrade_bought data matches 1 run tellraw @a[team=$(team)] ["",{"text":"Protection II","color":"white"},{"text":" team upgrade bought.","color":"gold"}]
$execute if score upgrade_bought data matches 1 run tag @a[team=$(team)] remove prot_1
$execute if score upgrade_bought data matches 1 run tag @a[team=$(team)] add prot_2
$execute if score upgrade_bought data matches 1 run tag @a[team=$(team)] add equipp
$execute if score upgrade_bought data matches 1 run function bedwars:shop/team_upgrades_sound {team:$(team)}
# prot 3 upgrade
$execute store success score upgrade_bought data run clear @a minecraft:iron_chestplate[minecraft:item_name="Protection III", custom_data={"team":"$(team)"}]
$execute if score upgrade_bought data matches 1 run data modify entity @e[tag=$(team)_teamupgrades,limit=1] Offers.Recipes[1] set value {maxUses:1,buy:{id:"diamond",count:30},sell:{id:"iron_chestplate",count:1,components:{"minecraft:item_name":"Protection IV", "custom_data":{"team":"$(team)"}}}}
$execute if score upgrade_bought data matches 1 run tellraw @a[team=$(team)] ["",{"text":"Protection III","color":"white"},{"text":" team upgrade bought.","color":"gold"}]
$execute if score upgrade_bought data matches 1 run tag @a[team=$(team)] remove prot_2
$execute if score upgrade_bought data matches 1 run tag @a[team=$(team)] add prot_3
$execute if score upgrade_bought data matches 1 run tag @a[team=$(team)] add equipp
$execute if score upgrade_bought data matches 1 run function bedwars:shop/team_upgrades_sound {team:$(team)}
# prot 4 upgrade
$execute store success score upgrade_bought data run clear @a minecraft:iron_chestplate[minecraft:item_name="Protection IV", custom_data={"team":"$(team)"}]
$execute if score upgrade_bought data matches 1 run tellraw @a[team=$(team)] ["",{"text":"Protection IV","color":"white"},{"text":" team upgrade bought.","color":"gold"}]
$execute if score upgrade_bought data matches 1 run tag @a[team=$(team)] remove prot_3
$execute if score upgrade_bought data matches 1 run tag @a[team=$(team)] add prot_4
$execute if score upgrade_bought data matches 1 run tag @a[team=$(team)] add equipp
$execute if score upgrade_bought data matches 1 run function bedwars:shop/team_upgrades_sound {team:$(team)}

# sharpness
$execute store success score upgrade_bought data run clear @a minecraft:iron_sword[minecraft:item_name="Sharpened Swords", custom_data={"team":"$(team)"}]
$execute if score upgrade_bought data matches 1 run tellraw @a[team=$(team)] ["",{"text":"Sharpened Swords","color":"white"},{"text":" team upgrade bought.","color":"gold"}]
$execute if score upgrade_bought data matches 1 run tag @a[team=$(team)] add sharp_1
$execute if score upgrade_bought data matches 1 run function bedwars:shop/team_upgrades_sound {team:$(team)}

# healpool
$execute store success score upgrade_bought data run clear @a minecraft:beacon[minecraft:item_name="Healpool", custom_data={"team":"$(team)"}]
$execute if score upgrade_bought data matches 1 run tellraw @a[team=$(team)] ["",{"text":"Healpool","color":"green"},{"text":" team upgrade bought.","color":"gold"}]
$execute if score upgrade_bought data matches 1 run tag @e[tag=$(team)_spawnpoint, limit=1] add healpool
$execute if score upgrade_bought data matches 1 run function bedwars:shop/team_upgrades_sound {team:$(team)}

$function bedwars:shop/healpool {team:$(team)}

# trap
$execute store success score upgrade_bought data run clear @a minecraft:redstone_torch[minecraft:item_name="Alarm Trap", custom_data={"team":"$(team)"}]
$execute if score upgrade_bought data matches 1 run tellraw @a[team=$(team)] ["",{"text":"Alarm Trap","color":"red"},{"text":" bought.","color":"gold"}]
$execute if score upgrade_bought data matches 1 run tag @e[tag=$(team)_spawnpoint, limit=1] add alarm_trap
$execute if score upgrade_bought data matches 1 run function bedwars:shop/team_upgrades_sound {team:$(team)}
$function bedwars:game/alarm_trap {team:$(team)}