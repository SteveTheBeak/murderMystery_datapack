#CORE GAME SETTINGS

#OBJECTIVE SCOREBOARDS
scoreboard objectives add timer dummy
scoreboard objectives add pvptimer dummy
scoreboard objectives add config dummy
scoreboard objectives add temp dummy
scoreboard objectives add const dummy
scoreboard objectives add retries dummy
scoreboard objectives add joined dummy
scoreboard objectives add InnocentHits dummy
scoreboard objectives add gold dummy
scoreboard objectives add shopOpen dummy
scoreboard objectives add ShopCalc dummy
scoreboard objectives add DisplaySegment dummy
scoreboard objectives add ChosenItem dummy
scoreboard objectives add HasShopItem dummy
scoreboard objectives add HurtCheck dummy

scoreboard objectives add Move minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add Sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add Crouch minecraft.custom:minecraft.crouch_one_cm

scoreboard objectives add TotemUsed minecraft.used:minecraft.totem_of_undying

scoreboard objectives add deaths deathCount

scoreboard objectives add mm_disc_cd dummy
scoreboard players set global mm_disc_cd 0

scoreboard objectives add MeleeCooldown dummy
scoreboard objectives add BowCooldown dummy
scoreboard objectives add ActiveCooldownMax dummy
scoreboard objectives add flight_time dummy
scoreboard objectives add spinstep dummy
scoreboard objectives add TempCalc dummy
scoreboard objectives add SwordAway dummy
scoreboard objectives add FreezeTimer dummy
scoreboard objectives add DecoyTimer dummy


data modify storage mm:shop items set value [{tag:"mm_shop_gold",slot:0,rawSlot:9,itemId:"minecraft:gold_ingot",giveFunction:"mm:shop/shop_menu"},{tag:"mm_shop_item",slot:11,rawSlot:20,itemId:"minecraft:potion",giveFunction:"mm:shop/give_shop_items"},{tag:"mm_shop_item",slot:12,rawSlot:21,itemId:"minecraft:potion",giveFunction:"mm:shop/give_shop_items"},{tag:"mm_shop_item",slot:14,rawSlot:23,itemId:"minecraft:bow",giveFunction:"mm:shop/give_shop_items"},{tag:"mm_shop_item",slot:15,rawSlot:24,itemId:"minecraft:totem_of_undying",giveFunction:"mm:shop/give_shop_items"}]
data modify storage mm:shop realItems set value [{tag:"mm_shop_invisibility_real",rawSlot:4,giveSlot:"hotbar.4",itemId:"minecraft:potion",giveFunction:"mm:shop/give_real_item",itemDef:'minecraft:potion[minecraft:custom_data={mm_shop_invisibility_real:1b},minecraft:potion_contents={custom_effects:[{id:"minecraft:invisibility",amplifier:0,duration:200,ambient:false,show_particles:false,show_icon:true}]},minecraft:custom_name={"text":"Invisibility","color":"aqua","italic":false},!minecraft:use_remainder]'},{tag:"mm_shop_speed_real",rawSlot:4,giveSlot:"hotbar.4",itemId:"minecraft:potion",giveFunction:"mm:shop/give_real_item",itemDef:'minecraft:potion[minecraft:custom_data={mm_shop_speed_real:1b},minecraft:potion_contents={custom_effects:[{id:"minecraft:speed",amplifier:1,duration:160,ambient:false,show_particles:false,show_icon:true}]},minecraft:custom_name={"text":"Speed","color":"aqua","italic":false},!minecraft:use_remainder]'},{tag:"mm_shop_bow_real",rawSlot:4,giveSlot:"hotbar.4",itemId:"minecraft:bow",giveFunction:"mm:shop/give_real_item",itemDef:'minecraft:bow[minecraft:custom_data={mm_shop_bow_real:1b},minecraft:custom_name={"text":"One-Shot Bow","color":"aqua","italic":false}]'},{tag:"mm_shop_extralife_display",rawSlot:4,giveSlot:"hotbar.4",itemId:"minecraft:heart_of_the_sea",giveFunction:"mm:shop/give_real_item",itemDef:'minecraft:heart_of_the_sea[minecraft:custom_data={mm_shop_extralife_display:1b},minecraft:custom_name={"text":"Extra Life","color":"aqua","italic":false}]'},{tag:"mm_shop_extralife_real",rawSlot:-1,giveSlot:"weapon.offhand",offhand:1b,itemId:"minecraft:totem_of_undying",giveFunction:"mm:shop/give_real_item",itemDef:'minecraft:totem_of_undying[minecraft:custom_data={mm_shop_extralife_real:1b}]'},{tag:"mm_shop_detective_glow_real",rawSlot:4,giveSlot:"hotbar.4",itemId:"minecraft:spyglass",giveFunction:"mm:shop/give_real_item",itemDef:'minecraft:spyglass[minecraft:custom_data={mm_shop_detective_glow_real:1b},minecraft:custom_name={"text":"Make Players Glow","color":"aqua","italic":false}]'},{tag:"mm_shop_freeze_real",rawSlot:4,giveSlot:"hotbar.4",itemId:"minecraft:ice",giveFunction:"mm:shop/give_real_item",itemDef:'minecraft:ice[minecraft:custom_data={mm_shop_freeze_real:1b},minecraft:custom_name={"text":"Freeze Murderers","color":"aqua","italic":false},minecraft:food={nutrition:0,saturation:0,can_always_eat:true},minecraft:consumable={consume_seconds:2147483647}]'},{tag:"mm_shop_darkness_real",rawSlot:4,giveSlot:"hotbar.4",itemId:"minecraft:sculk_sensor",giveFunction:"mm:shop/give_real_item",itemDef:'minecraft:sculk_sensor[minecraft:custom_data={mm_shop_darkness_real:1b},minecraft:custom_name={"text":"Give Players Darkness","color":"aqua","italic":false},minecraft:food={nutrition:0,saturation:0,can_always_eat:true},minecraft:consumable={consume_seconds:2147483647}]'},{tag:"mm_shop_murderer_deceive_real",rawSlot:4,giveSlot:"hotbar.4",itemId:"minecraft:player_head",giveFunction:"mm:shop/give_real_item",itemDef:'minecraft:player_head[minecraft:custom_data={mm_shop_murderer_deceive_real:1b},minecraft:custom_name={"text":"Transform into random player","color":"aqua","italic":false},minecraft:food={nutrition:0,saturation:0,can_always_eat:true},minecraft:consumable={consume_seconds:2147483647}]'},{tag:"mm_shop_rocket_real",rawSlot:4,giveSlot:"hotbar.4",itemId:"minecraft:crossbow",giveFunction:"mm:shop/give_real_item",itemDef:'minecraft:crossbow[minecraft:custom_data={mm_shop_rocket_real:1b},minecraft:custom_name={"text":"Rocket Launcher","color":"aqua","italic":false},minecraft:enchantments={"minecraft:multishot":1},minecraft:charged_projectiles=[{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[16711680],has_trail:false,has_twinkle:false}],flight_duration:1}}},{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[16711680],has_trail:false,has_twinkle:false}],flight_duration:1}}},{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[16711680],has_trail:false,has_twinkle:false}],flight_duration:1}}}],minecraft:tooltip_display={hidden_components:["minecraft:charged_projectiles"]}]'},{tag:"mm_oneshot_arrow",rawSlot:5,giveSlot:"hotbar.5",itemId:"minecraft:arrow",giveFunction:"mm:shop/give_real_item",itemDef:'minecraft:arrow[minecraft:custom_data={mm_oneshot_arrow:1b}]'}]

scoreboard players set BowCooldownMax const 60

scoreboard players set Const8 const 8
scoreboard players set Const10 const 10
scoreboard players set Const20 const 20
scoreboard players set Const1200 const 1200

#TEAM LOGIC
team add murderer Murderer
team add detective Detective
team add innocent Innocent

team modify murderer color red
team modify detective color blue
team modify innocent color green

#team modify murderer color reset
#team modify detective color reset
#team modify innocent color reset

team modify murderer friendlyFire false
team modify detective friendlyFire false

team modify murderer nametagVisibility never
team modify detective nametagVisibility never
team modify innocent nametagVisibility never


#PLAYER ATTRIBUTES
#No punching
execute as @a run attribute @s minecraft:attack_damage base set 0

#SETTINGS
execute unless score TimerLength config matches -2147483648..2147483647 run scoreboard players set TimerLength config 10
execute unless score MurdererCountLength config matches -2147483648..2147483647 run scoreboard players set MurdererCountLength config 10

execute unless score TimerIndex config matches -2147483648..2147483647 run scoreboard players set TimerIndex config 0
execute unless score MurdererCountIndex config matches -2147483648..2147483647 run scoreboard players set MurdererCountIndex config 0
execute unless score MapSelectIndex config matches -2147483648..2147483647 run scoreboard players set MapSelectIndex config 0
execute unless score MapWasRandom config matches -2147483648..2147483647 run scoreboard players set MapWasRandom config 0

#Toggle shop items enables
#Common
execute unless score shop_invisibility config matches -2147483648..2147483647 run scoreboard players set shop_invisibility config 1
#Innocent
execute unless score shop_innocent_speed config matches -2147483648..2147483647 run scoreboard players set shop_innocent_speed config 1
execute unless score shop_innocent_bow config matches -2147483648..2147483647 run scoreboard players set shop_innocent_bow config 1
execute unless score shop_innocent_extralife config matches -2147483648..2147483647 run scoreboard players set shop_innocent_extralife config 1
#Detective
execute unless score shop_detective_glow config matches -2147483648..2147483647 run scoreboard players set shop_detective_glow config 1
execute unless score shop_detective_freeze config matches -2147483648..2147483647 run scoreboard players set shop_detective_freeze config 1
execute unless score shop_detective_extralife config matches -2147483648..2147483647 run scoreboard players set shop_detective_extralife config 1
#Murderer
execute unless score shop_murderer_darkness config matches -2147483648..2147483647 run scoreboard players set shop_murderer_darkness config 1
execute unless score shop_murderer_deceive config matches -2147483648..2147483647 run scoreboard players set shop_murderer_deceive config 1
execute unless score shop_murderer_rocket config matches -2147483648..2147483647 run scoreboard players set shop_murderer_rocket config 1


execute unless score GameActive config matches -2147483648..2147483647 run scoreboard players set GameActive config 0
execute unless score DebugMode config matches -2147483648..2147483647 run scoreboard players set DebugMode config 1

execute unless score HeightCheckCount config matches -2147483648..2147483647 run scoreboard players set HeightCheckCount config 0

function mm:apply_map_coords

say Murder Mystery datapack initialized