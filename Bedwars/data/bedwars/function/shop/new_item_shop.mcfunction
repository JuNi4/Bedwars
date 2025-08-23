data modify storage bedwars:shop_items args set value {}
$data modify storage bedwars:shop_items args.items set from storage bedwars:shop_items $(team)_shop_items
$data modify storage bedwars:shop_items args.team set value $(team)
function bedwars:shop/summon_item_shop with storage bedwars:shop_items args