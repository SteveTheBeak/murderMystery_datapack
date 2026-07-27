$execute unless data storage mm:shop items[$(index)] run return 0
$data modify storage mm:temp tag set from storage mm:shop items[$(index)].tag
$data modify storage mm:temp slot set from storage mm:shop items[$(index)].slot
$data modify storage mm:temp itemId set from storage mm:shop items[$(index)].itemId
$data modify storage mm:temp giveFunction set from storage mm:shop items[$(index)].giveFunction
function mm:shop/enforce_item with storage mm:temp
$scoreboard players set ShopLoopIndex temp $(index)
scoreboard players add ShopLoopIndex temp 1
execute store result storage mm:temp index int 1 run scoreboard players get ShopLoopIndex temp
function mm:shop/enforce_loop with storage mm:temp