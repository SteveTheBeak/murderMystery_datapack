$execute unless data storage mm:shop realItems[$(index)] run return 0
$data modify storage mm:temp3 tag set from storage mm:shop realItems[$(index)].tag
$data modify storage mm:temp3 itemId set from storage mm:shop realItems[$(index)].itemId
$data modify storage mm:temp3 rawSlot set from storage mm:shop realItems[$(index)].rawSlot
$data modify storage mm:temp3 giveFunction set from storage mm:shop realItems[$(index)].giveFunction
$data modify storage mm:temp3 itemDef set from storage mm:shop realItems[$(index)].itemDef
function mm:shop/enforce_item_real with storage mm:temp3
$scoreboard players set RealLoopIndex temp $(index)
scoreboard players add RealLoopIndex temp 1
execute store result storage mm:temp3 index int 1 run scoreboard players get RealLoopIndex temp
function mm:shop/enforce_loop_real with storage mm:temp3