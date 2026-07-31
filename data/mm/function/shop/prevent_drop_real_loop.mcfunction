$execute unless data storage mm:shop realItems[$(index)] run return 0
$data modify storage mm:temp4 tag set from storage mm:shop realItems[$(index)].tag
$data modify storage mm:temp4 giveFunction set from storage mm:shop realItems[$(index)].giveFunction
$data modify storage mm:temp4 itemDef set from storage mm:shop realItems[$(index)].itemDef
$data modify storage mm:temp4 rawSlot set from storage mm:shop realItems[$(index)].rawSlot
$data modify storage mm:temp4 giveSlot set from storage mm:shop realItems[$(index)].giveSlot
function mm:shop/prevent_drop_real_detect with storage mm:temp4
$scoreboard players set DropLoopIndex temp $(index)
scoreboard players add DropLoopIndex temp 1
execute store result storage mm:temp4 index int 1 run scoreboard players get DropLoopIndex temp
function mm:shop/prevent_drop_real_loop with storage mm:temp4