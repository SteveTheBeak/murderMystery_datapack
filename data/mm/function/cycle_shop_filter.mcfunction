#CYCLE SHOP ITEMS | PATH 1.5

data remove entity @s interaction
execute if score Countdown timer matches 1.. run return 0
execute at @s run playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2

execute if entity @s[tag=innocent_shop] run scoreboard players add Innocent ShopIndex 1
execute if entity @s[tag=detective_shop] run scoreboard players add Detective ShopIndex 1
execute if entity @s[tag=murderer_shop] run scoreboard players add Murderer ShopIndex 1

#Wrap at the number of items in each group
execute if score Innocent ShopIndex matches 4.. run scoreboard players set Innocent ShopIndex 0
execute if score Detective ShopIndex matches 4.. run scoreboard players set Detective ShopIndex 0
execute if score Murderer ShopIndex matches 4.. run scoreboard players set Murderer ShopIndex 0

function mm:apply_shop_filter