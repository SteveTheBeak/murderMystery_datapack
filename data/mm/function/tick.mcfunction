#BUTTONS | PATH 1
function mm:controls_tick

#DEBUG SETTINGS | PATH 2
function mm:debug_tick

#GAME START COUNTDOWN
execute if score Countdown timer matches 1.. run scoreboard players remove Countdown timer 1
execute if score Countdown timer matches 100 run title @a title {"text":"5","color":"yellow","bold":true}
execute if score Countdown timer matches 100 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.2
execute if score Countdown timer matches 80 run title @a title {"text":"4","color":"yellow","bold":true}
execute if score Countdown timer matches 80 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.2
execute if score Countdown timer matches 60 run title @a title {"text":"3","color":"yellow","bold":true}
execute if score Countdown timer matches 60 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.2
execute if score Countdown timer matches 40 run title @a title {"text":"2","color":"yellow","bold":true}
execute if score Countdown timer matches 40 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.2
execute if score Countdown timer matches 20 run title @a title {"text":"1","color":"yellow","bold":true}
execute if score Countdown timer matches 20 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.2

#IMMEDIATE START | PATH 3
execute if score Countdown timer matches 0 run function mm:immediate_start

#5 MINUTE WARNING
execute if score PvpTimer pvptimer matches 6000 run title @a title {"text":"5 minutes remaining","color":"red","bold":false}
#1 MINUTE WARNING
execute if score PvpTimer pvptimer matches 1200 run title @a title {"text":"1 minute remaining","color":"red","bold":false}
#PVPTIMER DECREASE UNTIL -1
execute if score PvpTimer pvptimer matches 1.. run scoreboard players remove PvpTimer pvptimer 1

#GAME END SEQUENCE | PATH 4
execute if score PvpTimer pvptimer matches 0 run function mm:immediate_end
execute if score PvpTimer pvptimer matches -1 run clear @a

#KILL COOLDOWN MANAGER | PATH 5
execute if score GameActive config matches 1 run function mm:cooldown_manager/logic
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_sword"}}]