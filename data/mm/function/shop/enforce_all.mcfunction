scoreboard players set @s ChosenItem -1

#Common
execute if items entity @s player.cursor minecraft:potion[minecraft:custom_data={mm_shop_item:1b},minecraft:potion_contents={potion:"minecraft:invisibility"}] run scoreboard players set @s ChosenItem 1

#Innocent
execute if entity @s[team=innocent] if items entity @s player.cursor minecraft:potion[minecraft:custom_data={mm_shop_item:1b},minecraft:potion_contents={potion:"minecraft:swiftness"}] run scoreboard players set @s ChosenItem 2
execute if entity @s[team=innocent] if items entity @s player.cursor minecraft:bow[minecraft:custom_data={mm_shop_item:1b}] run scoreboard players set @s ChosenItem 3
execute if entity @s[team=innocent] if items entity @s player.cursor minecraft:totem_of_undying[minecraft:custom_data={mm_shop_item:1b}] run scoreboard players set @s ChosenItem 4

#Detective
execute if entity @s[team=detective] if items entity @s player.cursor minecraft:spyglass[minecraft:custom_data={mm_shop_item:1b}] run scoreboard players set @s ChosenItem 5
execute if entity @s[team=detective] if items entity @s player.cursor minecraft:ice[minecraft:custom_data={mm_shop_item:1b}] run scoreboard players set @s ChosenItem 6
execute if entity @s[team=detective] if items entity @s player.cursor minecraft:totem_of_undying[minecraft:custom_data={mm_shop_item:1b}] run scoreboard players set @s ChosenItem 7

#Murderer
execute if entity @s[team=murderer] if items entity @s player.cursor minecraft:sculk_sensor[minecraft:custom_data={mm_shop_item:1b}] run scoreboard players set @s ChosenItem 8
execute if entity @s[team=murderer] if items entity @s player.cursor minecraft:sea_lantern[minecraft:custom_data={mm_shop_item:1b}] run scoreboard players set @s ChosenItem 9
execute if entity @s[team=murderer] if items entity @s player.cursor minecraft:crossbow[minecraft:custom_data={mm_shop_item:1b}] run scoreboard players set @s ChosenItem 10

execute unless score @s ChosenItem matches -1 run function mm:shop/chosen_item

data modify storage mm: index set value 0
function mm:shop/enforce_loop with storage mm: