#Common items
execute if score shop_invisibility config matches 1 run item replace entity @s inventory.12 with minecraft:potion[minecraft:custom_data={mm_shop_item:1b},minecraft:potion_contents={potion:"minecraft:invisibility"},minecraft:custom_name={"text":"Invisibility for 10 seconds","color":"aqua","italic":false},minecraft:lore=[{"text":"7 Gold","color":"gold","italic":false}],minecraft:tooltip_display={hidden_components:["minecraft:potion_contents"]}]
execute if score shop_invisibility config matches 0 run item replace entity @s inventory.12 with minecraft:gray_stained_glass_pane[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Item Disabled","color":"gray","italic":true}]


#Innocent items
execute as @a[team=innocent] if score shop_innocent_speed config matches 1 run item replace entity @s inventory.11 with minecraft:potion[minecraft:custom_data={mm_shop_item:1b},minecraft:potion_contents={potion:"minecraft:swiftness"},minecraft:custom_name={"text":"Speed for 8 seconds","color":"aqua","italic":false},minecraft:lore=[{"text":"5 Gold","color":"gold","italic":false}],minecraft:tooltip_display={hidden_components:["minecraft:potion_contents"]}]
execute as @a[team=innocent] if score shop_innocent_speed config matches 0 run item replace entity @s inventory.11 with minecraft:gray_stained_glass_pane[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Item Disabled","color":"gray","italic":true}]

execute as @a[team=innocent] if score shop_innocent_bow config matches 1 run item replace entity @s inventory.14 with minecraft:bow[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"One-shot bow","color":"aqua","italic":false},minecraft:lore=[{"text":"10 Gold","color":"gold","italic":false}]]
execute as @a[team=innocent] if score shop_innocent_bow config matches 0 run item replace entity @s inventory.14 with minecraft:gray_stained_glass_pane[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Item Disabled","color":"gray","italic":true}]

execute as @a[team=innocent] if score shop_innocent_extralife config matches 1 run item replace entity @s inventory.15 with minecraft:totem_of_undying[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Extra life","color":"aqua","italic":false},minecraft:lore=[{"text":"20 Gold","color":"gold","italic":false}]]
execute as @a[team=innocent] if score shop_innocent_extralife config matches 0 run item replace entity @s inventory.15 with minecraft:gray_stained_glass_pane[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Item Disabled","color":"gray","italic":true}]


#Detective items
execute as @a[team=detective] if score shop_detective_glow config matches 1 run item replace entity @s inventory.11 with minecraft:spyglass[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"3 random innocents will glow for 5 seconds","color":"aqua","italic":false},minecraft:lore=[{"text":"5 Gold","color":"gold","italic":false}]]
execute as @a[team=detective] if score shop_detective_glow config matches 0 run item replace entity @s inventory.11 with minecraft:gray_stained_glass_pane[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Item Disabled","color":"gray","italic":true}]

execute as @a[team=detective] if score shop_detective_freeze config matches 1 run item replace entity @s inventory.14 with minecraft:ice[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Murderers becomes frozen for 3 seconds","color":"aqua","italic":false},minecraft:lore=[{"text":"10 Gold","color":"gold","italic":false}]]
execute as @a[team=detective] if score shop_detective_freeze config matches 0 run item replace entity @s inventory.14 with minecraft:gray_stained_glass_pane[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Item Disabled","color":"gray","italic":true}]

execute as @a[team=detective] if score shop_detective_extralife config matches 1 run item replace entity @s inventory.15 with minecraft:totem_of_undying[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Extra life","color":"aqua","italic":false},minecraft:lore=[{"text":"20 Gold","color":"gold","italic":false}]]
execute as @a[team=detective] if score shop_detective_extralife config matches 0 run item replace entity @s inventory.15 with minecraft:gray_stained_glass_pane[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Item Disabled","color":"gray","italic":true}]


#Murderer items
execute as @a[team=murderer] if score shop_murderer_darkness config matches 1 run item replace entity @s inventory.11 with minecraft:sculk_sensor[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Nearby players receive darkness for 3 seconds","color":"aqua","italic":false},minecraft:lore=[{"text":"5 Gold","color":"gold","italic":false}]]
execute as @a[team=murderer] if score shop_murderer_darkness config matches 0 run item replace entity @s inventory.11 with minecraft:gray_stained_glass_pane[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Item Disabled","color":"gray","italic":true}]

execute as @a[team=murderer] if score shop_murderer_glow config matches 1 run item replace entity @s inventory.14 with minecraft:sea_lantern[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"All players glow for 5 seconds","color":"aqua","italic":false},minecraft:lore=[{"text":"10 Gold","color":"gold","italic":false}]]
execute as @a[team=murderer] if score shop_murderer_glow config matches 0 run item replace entity @s inventory.14 with minecraft:gray_stained_glass_pane[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Item Disabled","color":"gray","italic":true}]

execute as @a[team=murderer] if score shop_murderer_rocket config matches 1 run item replace entity @s inventory.15 with minecraft:crossbow[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"One-time rocket launcher","color":"aqua","italic":false},minecraft:lore=[{"text":"20 Gold","color":"gold","italic":false}]]
execute as @a[team=murderer] if score shop_murderer_rocket config matches 0 run item replace entity @s inventory.15 with minecraft:gray_stained_glass_pane[minecraft:custom_data={mm_shop_item:1b},minecraft:custom_name={"text":"Item Disabled","color":"gray","italic":true}]