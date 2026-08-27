#Give all players saturation
effect give @a minecraft:saturation infinite 199 true

#BUTTONS | PATH 1
function mm:controls_tick

#DEBUG SETTINGS | PATH 2
function mm:debug_tick

#Add no damage attribute to new players
execute as @a unless score @s joined matches 0..1 run attribute @s minecraft:attack_damage base set 0
execute as @a unless score @s joined matches 0..1 run scoreboard players set @s joined 1

#GAME START COUNTDOWN
execute if score Countdown timer matches 1.. run scoreboard players remove Countdown timer 1
execute if score Countdown timer matches 100 run title @a title {"text":"5","color":"yellow","bold":true}
execute if score Countdown timer matches 100 at @a run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.2
execute if score Countdown timer matches 80 run title @a title {"text":"4","color":"yellow","bold":true}
execute if score Countdown timer matches 80 at @a run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.2
execute if score Countdown timer matches 60 run title @a title {"text":"3","color":"yellow","bold":true}
execute if score Countdown timer matches 60 at @a run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.2
execute if score Countdown timer matches 40 run title @a title {"text":"2","color":"yellow","bold":true}
execute if score Countdown timer matches 40 at @a run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.2
execute if score Countdown timer matches 20 run title @a title {"text":"1","color":"yellow","bold":true}
execute if score Countdown timer matches 20 at @a run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.2

#IMMEDIATE START | PATH 3
execute if score Countdown timer matches 0 run function mm:immediate_start

execute if score PvpTimer pvptimer matches 0.. run function mm:death_manager/logic
execute as @a[tag=mm_dead] at @s if score PvpTimer pvptimer matches 0.. if score @s EnforceTimer matches 1.. run function mm:death_manager/enforce_position
execute as @a[tag=mm_dead] if score @s EnforceTimer matches 1.. run scoreboard players remove @s EnforceTimer 1
execute as @a[tag=mm_dead] if score @s EnforceTimer matches 0 run tag @s remove mm_dead

#For museum map shady alley
execute as @a if score @s mm_disc_cd matches 1.. run scoreboard players remove @s mm_disc_cd 1
execute as @a unless score @s mm_disc_cd matches -2147483648..2147483647 run scoreboard players set @s mm_disc_cd 0
execute as @a if score @s mm_disc_cd matches ..0 if entity @s[x=-421,y=9,z=683,distance=..64] run stopsound @s record
execute as @a if score @s mm_disc_cd matches ..0 if entity @s[x=-421,y=9,z=683,distance=..64] run playsound minecraft:music_disc.mellohi record @s -421 9 683 4 1
execute as @a if score @s mm_disc_cd matches ..0 if entity @s[x=-421,y=9,z=683,distance=..64] run scoreboard players set @s mm_disc_cd 1920

#Run function to clear totem display after used
function mm:shop/clear_extralife_display

#Run function to give back sword after freeze
function mm:shop/freeze_tick

#Run function to enable the decoy
function mm:shop/decoy_tick

#Enable fly_tick function
function mm:throw_sword/fly_tick

#GOLD DROP
execute if score PvpTimer pvptimer matches 0.. run function mm:gold/gold_tick

#Tag any freshly-dropped gold so it survives cleanup and is identifiable for pickup later
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",components:{"minecraft:custom_data":{mm_gold:1b}}}}] run tag @s add mm_gold
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",components:{"minecraft:custom_data":{mm_gold:1b}}}}] run tag @s add keep

#Tag purchased shop items so they survive cleanup too
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_shop_invisibility_real:1b}}}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_shop_speed_real:1b}}}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_shop_bow_real:1b}}}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_oneshot_arrow:1b}}}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_shop_extralife_real:1b}}}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_shop_extralife_display:1b}}}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_shop_detective_glow_real:1b}}}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_shop_freeze_real:1b}}}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_shop_darkness_real:1b}}}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_shop_murderer_deceive_real:1b}}}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_shop_rocket_real:1b}}}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{id:"minecraft:trial_key"}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{id:"minecraft:ominous_trial_key"}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] run tag @s add keep
execute as @e[type=item,nbt={Item:{id:"minecraft:pumpkin_seeds"}}] run tag @s add keep

#Regive purchased shop items that got hotkey-swapped with the murderer's sword or detective's bow/arrow
function mm:shop/stop_swap

#SWORD
#Wipe and reassign only if the correct weapon isn't already in place
execute as @a[team=murderer] if score @s SwordAway matches 0 if score @s MeleeCooldown matches ..0 unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{mm_throw:1b}}}]}] run clear @s minecraft:iron_sword[minecraft:custom_data={mm_throw:1b}]
execute as @a[team=murderer] if score @s SwordAway matches 0 if score @s MeleeCooldown matches ..0 unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{mm_throw:1b}}}]}] run function mm:throw_sword/give_throwable

#Force-remove any dropped sword sitting on the ground
kill @e[type=item,tag=!keep]

#BOW/ARROW
#Bow: always enforce, same pattern as the sword
execute as @a[team=detective] unless entity @s[nbt={Inventory:[{Slot:7b,components:{"minecraft:custom_data":{mm_bow:1b}}}]}] run clear @s minecraft:bow[minecraft:custom_data={mm_bow:1b}]
execute as @a[team=detective] unless entity @s[nbt={Inventory:[{Slot:7b,components:{"minecraft:custom_data":{mm_bow:1b}}}]}] run item replace entity @s hotbar.7 with minecraft:bow[minecraft:enchantments={"minecraft:infinity":1},minecraft:enchantment_glint_override=false,minecraft:unbreakable={},minecraft:custom_data={mm_bow:1b}]

#Arrow: only present when off cooldown
execute as @a[team=detective] if score @s BowCooldown matches ..0 unless entity @s[nbt={Inventory:[{Slot:8b,components:{"minecraft:custom_data":{mm_arrow:1b}}}]}] run clear @s minecraft:arrow[minecraft:custom_data={mm_arrow:1b}]
execute as @a[team=detective] if score @s BowCooldown matches ..0 unless entity @s[nbt={Inventory:[{Slot:8b,components:{"minecraft:custom_data":{mm_arrow:1b}}}]}] run item replace entity @s hotbar.8 with minecraft:arrow[minecraft:custom_data={mm_arrow:1b}] 1

#Arrow: strip any stray copy while on cooldown (it shouldn't exist anywhere during this window)
execute as @a[team=detective] if score @s BowCooldown matches 1.. run clear @s minecraft:arrow[minecraft:custom_data={mm_arrow:1b}]

#Disable picking up stray one-shot arrows 
execute as @e[type=arrow,tag=!mm_handled,nbt={item:{components:{"minecraft:custom_data":{mm_oneshot_arrow:1b}}}}] run data merge entity @s {pickup:0b}
execute as @e[type=arrow,tag=!mm_handled,nbt={item:{components:{"minecraft:custom_data":{mm_oneshot_arrow:1b}}}}] run function mm:shop/clear_item with entity @s
execute as @e[type=arrow,tag=!mm_handled,nbt={item:{components:{"minecraft:custom_data":{mm_oneshot_arrow:1b}}}}] run tag @s add mm_handled

#Force-remove any dropped bow/arrow sitting on the ground
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_bow:1b}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_arrow:1b}}}}]


#Detective bow pickup — visual only, proximity-based, innocents only
execute as @e[tag=mm_detective_pickup] at @s as @a[team=innocent,distance=..1.5,sort=nearest,limit=1] at @s run function mm:death_manager/become_detective


#Detect and correct any duplicate copies of the throwable sword in inventory
execute as @a[team=murderer] store result score @s TempCalc run clear @s minecraft:iron_sword[minecraft:custom_data={mm_throw:1b}] 0
execute as @a[team=murderer] if score @s TempCalc matches 2.. run clear @s minecraft:iron_sword[minecraft:custom_data={mm_throw:1b}]
execute as @a[team=murderer] if score @s TempCalc matches 2.. run function mm:throw_sword/give_throwable
#Same for the fake cooldown sword
execute as @a[team=murderer] store result score @s TempCalc run clear @s minecraft:iron_sword[minecraft:custom_data={mm_fake:1b}] 0
execute as @a[team=murderer] if score @s TempCalc matches 2.. run clear @s minecraft:iron_sword[minecraft:custom_data={mm_fake:1b}]
execute as @a[team=murderer] if score @s TempCalc matches 2.. run item replace entity @s hotbar.1 with minecraft:iron_sword[minecraft:attribute_modifiers=[{id:"mm:zero_damage",type:"attack_damage",amount:0,operation:"add_value",slot:"mainhand"},{id:"mm:zero_knockback",type:"attack_knockback",amount:0,operation:"add_value",slot:"mainhand"}],minecraft:custom_data={mm_fake:1b}]

#Detective's bow and arrow
execute as @a[team=detective] store result score @s TempCalc run clear @s minecraft:bow[minecraft:custom_data={mm_bow:1b}] 0
execute as @a[team=detective] if score @s TempCalc matches 2.. run clear @s minecraft:bow[minecraft:custom_data={mm_bow:1b}]
execute as @a[team=detective] if score @s TempCalc matches 2.. run item replace entity @s hotbar.7 with minecraft:bow[minecraft:enchantments={"minecraft:infinity":1},minecraft:enchantment_glint_override=false,minecraft:unbreakable={},minecraft:custom_data={mm_bow:1b}]

execute as @a[team=detective] store result score @s TempCalc run clear @s minecraft:arrow[minecraft:custom_data={mm_arrow:1b}] 0
execute as @a[team=detective] if score @s TempCalc matches 2.. run clear @s minecraft:arrow[minecraft:custom_data={mm_arrow:1b}]
execute as @a[team=detective] if score @s TempCalc matches 2.. run item replace entity @s hotbar.8 with minecraft:arrow[minecraft:custom_data={mm_arrow:1b}] 1


#Convert picked-up gold into score, then remove the physical copies entirely
execute as @a store result score @s TempCalc run clear @s minecraft:gold_ingot[minecraft:custom_data={mm_gold:1b}] 0
execute as @a if score @s TempCalc matches 1.. run scoreboard players operation @s gold += @s TempCalc
execute as @a if score @s TempCalc matches 1.. run clear @s minecraft:gold_ingot[minecraft:custom_data={mm_gold:1b}]

#Detect if player clicks shop icon
execute as @a if items entity @s player.cursor minecraft:emerald[minecraft:custom_data={mm_shop:1b}] run function mm:shop/shop_menu
execute as @a if items entity @s player.cursor minecraft:emerald[minecraft:custom_data={mm_shop:1b}] run scoreboard players set @s shopOpen 1
execute as @a if items entity @s player.cursor minecraft:emerald[minecraft:custom_data={mm_shop:1b}] run scoreboard players set @s Move 0
execute as @a[scores={Move=1..}] run scoreboard players set @s shopOpen 0
execute as @a if items entity @s player.cursor minecraft:emerald[minecraft:custom_data={mm_shop:1b}] run scoreboard players set @s Sprint 0
execute as @a[scores={Sprint=1..}] run scoreboard players set @s shopOpen 0
execute as @a if items entity @s player.cursor minecraft:emerald[minecraft:custom_data={mm_shop:1b}] run scoreboard players set @s Crouch 0
execute as @a[scores={Crouch=1..}] run scoreboard players set @s shopOpen 0
execute as @a if score @s shopOpen matches 0 run function mm:shop/close_shop

execute as @a if score @s shopOpen matches 1 run function mm:shop/enforce_all

#Failsafe: if the extra-life totem and its display icon got swapped, put them back in their correct slots before enforcement runs
execute as @a if items entity @s hotbar.4 minecraft:totem_of_undying[minecraft:custom_data={mm_shop_extralife_real:1b}] if items entity @s weapon.offhand minecraft:heart_of_the_sea[minecraft:custom_data={mm_shop_extralife_display:1b}] run item replace entity @s weapon.offhand with minecraft:totem_of_undying[minecraft:custom_data={mm_shop_extralife_real:1b}]
execute as @a if items entity @s hotbar.4 minecraft:totem_of_undying[minecraft:custom_data={mm_shop_extralife_real:1b}] if items entity @s weapon.offhand minecraft:totem_of_undying[minecraft:custom_data={mm_shop_extralife_real:1b}] run item replace entity @s hotbar.4 with minecraft:heart_of_the_sea[minecraft:custom_data={mm_shop_extralife_display:1b},minecraft:custom_name={"text":"Extra Life","color":"aqua","italic":false}]

#Lock purchased shop items - no relocation, no duplication, no free refill (must run before the cursor wipe below)
execute as @a run data modify storage mm:temp3 index set value 0
execute as @a run function mm:shop/enforce_loop_real with storage mm:temp3

#If the shop bow is present but the arrow got removed by a hotkey swap, restore it
execute as @a if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{mm_shop_bow_real:1b}}}]}] unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{mm_oneshot_arrow:1b}}}]}] run item replace entity @s hotbar.5 with minecraft:arrow[minecraft:custom_data={mm_oneshot_arrow:1b}]

execute as @a if score @s shopOpen matches 1 if items entity @s player.cursor *[minecraft:custom_data={mm_shop_item:1b}] run item replace entity @s player.cursor with air

#Prevent purchased shop items from being dropped
data modify storage mm:temp4 index set value 0
function mm:shop/prevent_drop_real_loop with storage mm:temp4

#Remove decoy if murderer dies
execute as @e[tag=mm_decoy] if entity @n[gamemode=spectator,type=player] run kill @s  



#SHOP
#Keep the shop icon pinned in place, immune to both duplication and relocation
execute as @a store result score @s TempCalc run clear @s minecraft:emerald[minecraft:custom_data={mm_shop:1b}] 0
execute as @a if score PvpTimer pvptimer matches 0.. if score @s TempCalc matches 0 run function mm:shop/give_shop_icon
execute as @a if score PvpTimer pvptimer matches 0.. if score @s TempCalc matches 2.. run clear @s minecraft:emerald[minecraft:custom_data={mm_shop:1b}]
execute as @a if score PvpTimer pvptimer matches 0.. if score @s TempCalc matches 2.. run function mm:shop/give_shop_icon
execute as @a if score PvpTimer pvptimer matches 0.. if score @s TempCalc matches 1 unless entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_data":{mm_shop:1b}}}]}] run clear @s minecraft:emerald[minecraft:custom_data={mm_shop:1b}]
execute as @a if score PvpTimer pvptimer matches 0.. if score @s TempCalc matches 1 unless entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_data":{mm_shop:1b}}}]}] run function mm:shop/give_shop_icon

#Make players glow at 2 minutes
execute if score PvpTimer pvptimer matches 2400 run title @a title {"text":""}
execute if score PvpTimer pvptimer matches 2400 run title @a subtitle {"text":"Players are now glowing!","color":"aqua","bold":false}
execute if score PvpTimer pvptimer matches 2400 run effect give @e[team=innocent] glowing infinite 1
execute if score PvpTimer pvptimer matches 2400 run effect give @e[team=detective] glowing infinite 1

#5 MINUTE WARNING
execute if score PvpTimer pvptimer matches 6001 run title @a title {"text":"5 minutes remaining","color":"red","bold":false}
#1 MINUTE WARNING
execute if score PvpTimer pvptimer matches 1200 run title @a title {"text":"1 minute remaining","color":"red","bold":false}
#PVPTIMER DECREASE UNTIL -1
execute if score PvpTimer pvptimer matches 1.. run scoreboard players remove PvpTimer pvptimer 1

#Check which players are alive for early game end
execute if score PvpTimer pvptimer matches 0.. unless entity @a[team=murderer] run function mm:immediate_end
execute if score PvpTimer pvptimer matches 0.. unless entity @a[team=innocent] unless entity @a[team=detective] run function mm:immediate_end

#Settle falling mannequin body
execute as @e[type=minecraft:mannequin,tag=falling_body] at @s if entity @s[nbt={OnGround:1b}] run data merge entity @s {immovable:1b}
execute as @e[type=minecraft:mannequin,tag=falling_body] at @s if entity @s[nbt={OnGround:1b}] run tag @s remove falling_body

#GAME END SEQUENCE | PATH 4
execute if score PvpTimer pvptimer matches 0 run function mm:immediate_end
execute if score PvpTimer pvptimer matches 0 run clear @a

#KILL COOLDOWN MANAGER | PATH 5
function mm:cooldown_manager/logic