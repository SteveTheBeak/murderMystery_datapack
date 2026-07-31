$execute if items entity @s player.cursor $(itemId)[minecraft:custom_data={$(tag):1b}] run item replace entity @s player.cursor with air
$execute if items entity @s player.cursor $(itemId)[minecraft:custom_data={$(tag):1b}] run function $(giveFunction) with storage mm:temp3

$execute store result score @s TempCalc run clear @s $(itemId)[minecraft:custom_data={$(tag):1b}] 0

$execute if score @s TempCalc matches 2.. run clear @s $(itemId)[minecraft:custom_data={$(tag):1b}]
$execute if score @s TempCalc matches 2.. run function $(giveFunction) with storage mm:temp3

$execute if score @s TempCalc matches 1 if data storage mm:temp3 {offhand:1b} unless entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{$(tag):1b}}}}}] run clear @s $(itemId)[minecraft:custom_data={$(tag):1b}]
$execute if score @s TempCalc matches 1 if data storage mm:temp3 {offhand:1b} unless entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{$(tag):1b}}}}}] run function $(giveFunction) with storage mm:temp3

$execute if score @s TempCalc matches 1 unless data storage mm:temp3 {offhand:1b} unless entity @s[nbt={Inventory:[{Slot:$(rawSlot)b,components:{"minecraft:custom_data":{$(tag):1b}}}]}] run clear @s $(itemId)[minecraft:custom_data={$(tag):1b}]
$execute if score @s TempCalc matches 1 unless data storage mm:temp3 {offhand:1b} unless entity @s[nbt={Inventory:[{Slot:$(rawSlot)b,components:{"minecraft:custom_data":{$(tag):1b}}}]}] run function $(giveFunction)