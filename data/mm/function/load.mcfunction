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

scoreboard objectives add Move minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add Sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add Crouch minecraft.custom:minecraft.crouch_one_cm

scoreboard objectives add deaths deathCount

scoreboard objectives add MeleeCooldown dummy
scoreboard objectives add BowCooldown dummy
scoreboard objectives add ActiveCooldownMax dummy
scoreboard objectives add flight_time dummy
scoreboard objectives add spinstep dummy
scoreboard objectives add TempCalc dummy
scoreboard objectives add SwordAway dummy


data modify storage mm:shop items set value [{tag:"mm_shop_gold",slot:0,rawSlot:9,itemId:"minecraft:gold_ingot",giveFunction:"mm:shop/shop_menu"},{tag:"mm_shop_item",slot:11,rawSlot:20,itemId:"minecraft:potion",giveFunction:"mm:shop/give_shop_items"},{tag:"mm_shop_item",slot:14,rawSlot:23,itemId:"minecraft:bow",giveFunction:"mm:shop/give_shop_items"},{tag:"mm_shop_item",slot:15,rawSlot:24,itemId:"minecraft:totem_of_undying",giveFunction:"mm:shop/give_shop_items"}]


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
execute unless score shop_murderer_glow config matches -2147483648..2147483647 run scoreboard players set shop_murderer_glow config 1
execute unless score shop_murderer_rocket config matches -2147483648..2147483647 run scoreboard players set shop_murderer_rocket config 1


execute unless score GameActive config matches -2147483648..2147483647 run scoreboard players set GameActive config 0
execute unless score DebugMode config matches -2147483648..2147483647 run scoreboard players set DebugMode config 1

execute unless score HeightCheckCount config matches -2147483648..2147483647 run scoreboard players set HeightCheckCount config 0

function mm:apply_map_coords

say Murder Mystery datapack initialized