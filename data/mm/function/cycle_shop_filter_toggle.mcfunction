#TOGGLE SELECTED SHOP ITEM ON/OFF | PATH 1.5

data remove entity @s attack
execute if score Countdown timer matches 1.. run return 0
execute at @s run playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2

execute if entity @s[tag=innocent_shop] if score Innocent ShopIndex matches 0 store success score shop_innocent_speed config unless score shop_innocent_speed config matches 1
execute if entity @s[tag=innocent_shop] if score Innocent ShopIndex matches 1 store success score shop_invisibility config unless score shop_invisibility config matches 1
execute if entity @s[tag=innocent_shop] if score Innocent ShopIndex matches 2 store success score shop_innocent_bow config unless score shop_innocent_bow config matches 1
execute if entity @s[tag=innocent_shop] if score Innocent ShopIndex matches 3 store success score shop_innocent_extralife config unless score shop_innocent_extralife config matches 1


execute if entity @s[tag=detective_shop] if score Detective ShopIndex matches 0 store success score shop_detective_glow config unless score shop_detective_glow config matches 1
execute if entity @s[tag=detective_shop] if score Detective ShopIndex matches 1 store success score shop_invisibility config unless score shop_invisibility config matches 1
execute if entity @s[tag=detective_shop] if score Detective ShopIndex matches 2 store success score shop_detective_freeze config unless score shop_detective_freeze config matches 1
execute if entity @s[tag=detective_shop] if score Detective ShopIndex matches 3 store success score shop_detective_extralife config unless score shop_detective_extralife config matches 1

execute if entity @s[tag=murderer_shop] if score Murderer ShopIndex matches 0 store success score shop_murderer_darkness config unless score shop_murderer_darkness config matches 1
execute if entity @s[tag=murderer_shop] if score Murderer ShopIndex matches 1 store success score shop_invisibility config unless score shop_invisibility config matches 1
execute if entity @s[tag=murderer_shop] if score Murderer ShopIndex matches 2 store success score shop_murderer_deceive config unless score shop_murderer_deceive config matches 1
execute if entity @s[tag=murderer_shop] if score Murderer ShopIndex matches 3 store success score shop_murderer_rocket config unless score shop_murderer_rocket config matches 1

function mm:apply_shop_filter