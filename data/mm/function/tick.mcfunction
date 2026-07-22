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
execute if score Countdown timer matches 100 run playsound minecraft:block.note_block.pling block @a -40 -55 3 2 1.2
execute if score Countdown timer matches 80 run title @a title {"text":"4","color":"yellow","bold":true}
execute if score Countdown timer matches 80 run playsound minecraft:block.note_block.pling block @a -40 -55 3 2 1.2
execute if score Countdown timer matches 60 run title @a title {"text":"3","color":"yellow","bold":true}
execute if score Countdown timer matches 60 run playsound minecraft:block.note_block.pling block @a -40 -55 3 2 1.2
execute if score Countdown timer matches 40 run title @a title {"text":"2","color":"yellow","bold":true}
execute if score Countdown timer matches 40 run playsound minecraft:block.note_block.pling block @a -40 -55 3 2 1.2
execute if score Countdown timer matches 20 run title @a title {"text":"1","color":"yellow","bold":true}
execute if score Countdown timer matches 20 run playsound minecraft:block.note_block.pling block @a -40 -55 3 2 1.2

#IMMEDIATE START | PATH 3
execute if score Countdown timer matches 0 run function mm:immediate_start

execute if score PvpTimer pvptimer matches 0.. run function mm:death_manager/logic

#Enable fly_tick function
function mm:throw_sword/fly_tick



#SWORD
#Wipe and reassign only if the correct weapon isn't already in place
execute as @a[team=murderer] if score @s SwordAway matches 0 if score @s MeleeCooldown matches ..0 unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{mm_throw:1b}}}]}] run clear @s minecraft:iron_sword[minecraft:custom_data={mm_throw:1b}]
execute as @a[team=murderer] if score @s SwordAway matches 0 if score @s MeleeCooldown matches ..0 unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{mm_throw:1b}}}]}] run function mm:throw_sword/give_throwable

execute as @a[team=murderer] if score @s SwordAway matches 0 if score @s MeleeCooldown matches 1.. unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{mm_fake:1b}}}]}] run clear @s minecraft:iron_sword[minecraft:custom_data={mm_fake:1b}]
execute as @a[team=murderer] if score @s SwordAway matches 0 if score @s MeleeCooldown matches 1.. unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{mm_fake:1b}}}]}] run item replace entity @s hotbar.1 with minecraft:iron_sword[minecraft:attribute_modifiers=[{id:"mm:zero_damage",type:"attack_damage",amount:0,operation:"add_value",slot:"mainhand"}],minecraft:custom_data={mm_fake:1b}]

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

#Force-remove any dropped bow/arrow sitting on the ground
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_bow:1b}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_arrow:1b}}}}]



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