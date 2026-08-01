scoreboard players set @s HasShopItem 0
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{mm_shop_invisibility_real:1b}}}]}] run scoreboard players set @s HasShopItem 1
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{mm_shop_speed_real:1b}}}]}] run scoreboard players set @s HasShopItem 1
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{mm_shop_bow_real:1b}}}]}] run scoreboard players set @s HasShopItem 1
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{mm_shop_extralife_display:1b}}}]}] run scoreboard players set @s HasShopItem 1
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{mm_shop_extralife_real:1b}}}}}] run scoreboard players set @s HasShopItem 1
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{mm_shop_detective_glow_real:1b}}}]}] run scoreboard players set @s HasShopItem 1
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{mm_shop_freeze_real:1b}}}]}] run scoreboard players set @s HasShopItem 1
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{mm_shop_darkness_real:1b}}}]}] run scoreboard players set @s HasShopItem 1
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{mm_shop_murderer_glow_real:1b}}}]}] run scoreboard players set @s HasShopItem 1
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{mm_shop_rocket_real:1b}}}]}] run scoreboard players set @s HasShopItem 1



execute if score @s HasShopItem matches 1 run tellraw @s {"text":"You already bought an item!","color":"red"}
execute if score @s HasShopItem matches 1 at @s run playsound minecraft:entity.villager.no block @a ~ ~ ~ 1 1.2

#Common
#invisibility
execute if score @s ChosenItem matches 1 if score @s HasShopItem matches 0 if score @s gold matches ..6 run tellraw @s {"text":"Not enough gold!","color":"red"}
execute if score @s ChosenItem matches 1 if score @s HasShopItem matches 0 if score @s gold matches ..6 at @s run playsound minecraft:entity.villager.no block @a ~ ~ ~ 1 1.2
execute if score @s ChosenItem matches 1 if score @s HasShopItem matches 0 if score @s gold matches 7.. run item replace entity @s hotbar.4 with minecraft:potion[minecraft:custom_data={mm_shop_invisibility_real:1b},minecraft:potion_contents={custom_effects:[{id:"minecraft:invisibility",amplifier:0,duration:200,ambient:false,show_particles:false,show_icon:true}]},minecraft:custom_name={"text":"Invisibility","color":"aqua","italic":false},!minecraft:use_remainder]
execute if score @s ChosenItem matches 1 if score @s HasShopItem matches 0 if score @s gold matches 7.. run scoreboard players remove @s gold 7

#Innocent
#swiftness
execute if score @s ChosenItem matches 2 if score @s HasShopItem matches 0 if score @s gold matches ..4 run tellraw @s {"text":"Not enough gold!","color":"red"}
execute if score @s ChosenItem matches 2 if score @s HasShopItem matches 0 if score @s gold matches ..4 at @s run playsound minecraft:entity.villager.no block @a ~ ~ ~ 1 1.2
execute if score @s ChosenItem matches 2 if score @s HasShopItem matches 0 if score @s gold matches 5.. run item replace entity @s hotbar.4 with minecraft:potion[minecraft:custom_data={mm_shop_speed_real:1b},minecraft:potion_contents={custom_effects:[{id:"minecraft:speed",amplifier:1,duration:160,ambient:false,show_particles:false,show_icon:true}]},minecraft:custom_name={"text":"Speed","color":"aqua","italic":false},!minecraft:use_remainder]
execute if score @s ChosenItem matches 2 if score @s HasShopItem matches 0 if score @s gold matches 5.. run scoreboard players remove @s gold 5
#bow
execute if score @s ChosenItem matches 3 if score @s HasShopItem matches 0 if score @s gold matches ..9 run tellraw @s {"text":"Not enough gold!","color":"red"}
execute if score @s ChosenItem matches 3 if score @s HasShopItem matches 0 if score @s gold matches ..9 at @s run playsound minecraft:entity.villager.no block @a ~ ~ ~ 1 1.2
execute if score @s ChosenItem matches 3 if score @s HasShopItem matches 0 if score @s gold matches 10.. run item replace entity @s hotbar.4 with minecraft:bow[minecraft:custom_data={mm_shop_bow_real:1b},minecraft:custom_name={"text":"One-Shot Bow","color":"aqua","italic":false}]
execute if score @s ChosenItem matches 3 if score @s HasShopItem matches 0 if score @s gold matches 10.. run item replace entity @s hotbar.5 with minecraft:arrow[minecraft:custom_data={mm_oneshot_arrow:1b}]
execute if score @s ChosenItem matches 3 if score @s HasShopItem matches 0 if score @s gold matches 10.. run scoreboard players remove @s gold 10
#totem
execute if score @s ChosenItem matches 4 if score @s HasShopItem matches 0 if score @s gold matches ..19 run tellraw @s {"text":"Not enough gold!","color":"red"}
execute if score @s ChosenItem matches 4 if score @s HasShopItem matches 0 if score @s gold matches ..19 at @s run playsound minecraft:entity.villager.no block @a ~ ~ ~ 1 1.2
execute if score @s ChosenItem matches 4 if score @s HasShopItem matches 0 if score @s gold matches 20.. run item replace entity @s hotbar.4 with minecraft:heart_of_the_sea[minecraft:custom_data={mm_shop_extralife_display:1b},minecraft:custom_name={"text":"Extra Life","color":"aqua","italic":false}]
execute if score @s ChosenItem matches 4 if score @s HasShopItem matches 0 if score @s gold matches 20.. run item replace entity @s weapon.offhand with minecraft:totem_of_undying[minecraft:custom_data={mm_shop_extralife_real:1b}]
execute if score @s ChosenItem matches 4 if score @s HasShopItem matches 0 if score @s gold matches 20.. run scoreboard players remove @s gold 20

#Detective
#Spyglass
execute if score @s ChosenItem matches 5 if score @s HasShopItem matches 0 if score @s gold matches ..4 run tellraw @s {"text":"Not enough gold!","color":"red"}
execute if score @s ChosenItem matches 5 if score @s HasShopItem matches 0 if score @s gold matches ..4 at @s run playsound minecraft:entity.villager.no block @a ~ ~ ~ 1 1.2
execute if score @s ChosenItem matches 5 if score @s HasShopItem matches 0 if score @s gold matches 5.. run item replace entity @s hotbar.4 with minecraft:spyglass[minecraft:custom_data={mm_shop_detective_glow_real:1b},minecraft:custom_name={"text":"Make Players Glow","color":"aqua","italic":false}]
execute if score @s ChosenItem matches 5 if score @s HasShopItem matches 0 if score @s gold matches 5.. run scoreboard players remove @s gold 5
#ice
execute if score @s ChosenItem matches 6 if score @s HasShopItem matches 0 if score @s gold matches ..9 run tellraw @s {"text":"Not enough gold!","color":"red"}
execute if score @s ChosenItem matches 6 if score @s HasShopItem matches 0 if score @s gold matches ..9 at @s run playsound minecraft:entity.villager.no block @a ~ ~ ~ 1 1.2
execute if score @s ChosenItem matches 6 if score @s HasShopItem matches 0 if score @s gold matches 10.. run item replace entity @s hotbar.4 with minecraft:ice[minecraft:custom_data={mm_shop_freeze_real:1b},minecraft:custom_name={"text":"Freeze Murderers","color":"aqua","italic":false},minecraft:food={nutrition:0,saturation:0,can_always_eat:true},minecraft:consumable={consume_seconds:2147483647}]
execute if score @s ChosenItem matches 6 if score @s HasShopItem matches 0 if score @s gold matches 10.. run scoreboard players remove @s gold 10
#totem
execute if score @s ChosenItem matches 7 if score @s HasShopItem matches 0 if score @s gold matches ..19 run tellraw @s {"text":"Not enough gold!","color":"red"}
execute if score @s ChosenItem matches 7 if score @s HasShopItem matches 0 if score @s gold matches ..19 at @s run playsound minecraft:entity.villager.no block @a ~ ~ ~ 1 1.2
execute if score @s ChosenItem matches 7 if score @s HasShopItem matches 0 if score @s gold matches 20.. run item replace entity @s hotbar.4 with minecraft:heart_of_the_sea[minecraft:custom_data={mm_shop_extralife_display:1b},minecraft:custom_name={"text":"Extra Life","color":"aqua","italic":false}]
execute if score @s ChosenItem matches 7 if score @s HasShopItem matches 0 if score @s gold matches 20.. run item replace entity @s weapon.offhand with minecraft:totem_of_undying[minecraft:custom_data={mm_shop_extralife_real:1b}]
execute if score @s ChosenItem matches 7 if score @s HasShopItem matches 0 if score @s gold matches 20.. run scoreboard players remove @s gold 20

#Murderer
#sculk sensor
execute if score @s ChosenItem matches 8 if score @s HasShopItem matches 0 if score @s gold matches ..4 run tellraw @s {"text":"Not enough gold!","color":"red"}
execute if score @s ChosenItem matches 8 if score @s HasShopItem matches 0 if score @s gold matches ..4 at @s run playsound minecraft:entity.villager.no block @a ~ ~ ~ 1 1.2
execute if score @s ChosenItem matches 8 if score @s HasShopItem matches 0 if score @s gold matches 5.. run item replace entity @s hotbar.4 with minecraft:sculk_sensor[minecraft:custom_data={mm_shop_darkness_real:1b},minecraft:custom_name={"text":"Give Players Darkness","color":"aqua","italic":false},minecraft:food={nutrition:0,saturation:0,can_always_eat:true},minecraft:consumable={consume_seconds:2147483647}]
execute if score @s ChosenItem matches 8 if score @s HasShopItem matches 0 if score @s gold matches 5.. run scoreboard players remove @s gold 5
#player head
execute if score @s ChosenItem matches 9 if score @s HasShopItem matches 0 if score @s gold matches ..9 run tellraw @s {"text":"Not enough gold!","color":"red"}
execute if score @s ChosenItem matches 9 if score @s HasShopItem matches 0 if score @s gold matches ..9 at @s run playsound minecraft:entity.villager.no block @a ~ ~ ~ 1 1.2
execute if score @s ChosenItem matches 9 if score @s HasShopItem matches 0 if score @s gold matches 10.. run item replace entity @s hotbar.4 with minecraft:player_head[minecraft:custom_data={mm_shop_murderer_deceive_real:1b},minecraft:custom_name={"text":"Transform into random player","color":"aqua","italic":false},minecraft:food={nutrition:0,saturation:0,can_always_eat:true},minecraft:consumable={consume_seconds:2147483647}]
execute if score @s ChosenItem matches 9 if score @s HasShopItem matches 0 if score @s gold matches 10.. run scoreboard players remove @s gold 10
#crossbow
execute if score @s ChosenItem matches 10 if score @s HasShopItem matches 0 if score @s gold matches ..19 run tellraw @s {"text":"Not enough gold!","color":"red"}
execute if score @s ChosenItem matches 10 if score @s HasShopItem matches 0 if score @s gold matches ..19 at @s run playsound minecraft:entity.villager.no block @a ~ ~ ~ 1 1.2
execute if score @s ChosenItem matches 10 if score @s HasShopItem matches 0 if score @s gold matches 20.. run item replace entity @s hotbar.4 with minecraft:crossbow[minecraft:custom_data={mm_shop_rocket_real:1b},minecraft:custom_name={"text":"Rocket Launcher","color":"aqua","italic":false},minecraft:enchantments={"minecraft:multishot":1},minecraft:charged_projectiles=[{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[16711680],has_trail:false,has_twinkle:false}],flight_duration:1}}},{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[16711680],has_trail:false,has_twinkle:false}],flight_duration:1}}},{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[16711680],has_trail:false,has_twinkle:false}],flight_duration:1}}}],minecraft:tooltip_display={hidden_components:["minecraft:charged_projectiles"]}]
execute if score @s ChosenItem matches 10 if score @s HasShopItem matches 0 if score @s gold matches 20.. run scoreboard players remove @s gold 20


#Refresh gold ingot
execute if items entity @s inventory.0 minecraft:gold_ingot[minecraft:custom_data={mm_shop_gold:1b}] run item replace entity @s inventory.0 with air