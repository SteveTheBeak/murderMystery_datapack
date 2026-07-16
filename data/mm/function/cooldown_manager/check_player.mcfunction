#CHECKS IF MURDERER HAS SWORD | PATH 5.1

execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run scoreboard players add @s MurdererCooldown 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run scoreboard players set @s MurdererCooldown 0

#GIVE SWORD AFTER SET TIME (100 TICKS) | PATH 5.1.1
execute if score @s MurdererCooldown matches 100.. run function mm:cooldown_manager/give_sword
execute if score @s MurdererCooldown matches 100.. run scoreboard players set @s MurdererCooldown 0
#Notice: If you change the cooldown time, remember to change the time for "CooldownTime" in load.mcfuntion as well

execute if score @s MurdererCooldown matches 1.. run title @s actionbar {"text":"Cooldown: [","color":"gray"}
execute if score @s MurdererCooldown matches 90.. run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 0.5