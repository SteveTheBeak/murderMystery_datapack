$execute if items entity @s player.cursor $(itemId)[minecraft:custom_data={$(tag):1b}] run item replace entity @s player.cursor with air
$execute store result score @s ShopCalc run clear @s $(itemId)[minecraft:custom_data={$(tag):1b}] 0
$execute if score @s ShopCalc matches 0 run function $(giveFunction)
$execute if score @s ShopCalc matches 2.. run clear @s $(itemId)[minecraft:custom_data={$(tag):1b}]
$execute if score @s ShopCalc matches 2.. run function $(giveFunction)
$execute if score @s ShopCalc matches 1 unless entity @s[nbt={Inventory:[{Slot:$(rawSlot)b,components:{"minecraft:custom_data":{$(tag):1b}}}]}] run clear @s $(itemId)[minecraft:custom_data={$(tag):1b}]
$execute if score @s ShopCalc matches 1 unless entity @s[nbt={Inventory:[{Slot:$(rawSlot)b,components:{"minecraft:custom_data":{$(tag):1b}}}]}] run function $(giveFunction)