#Reset all per-player cooldowns and combat state for the new round
scoreboard players set @a MeleeCooldown -1
scoreboard players set @a BowCooldown -1
scoreboard players set @a ActiveCooldownMax 0
scoreboard players set @a SwordAway 0
scoreboard players set @a deaths 0
scoreboard players set @a retries 0
scoreboard players set @a HeightCheckCount 0
scoreboard players set @a spinstep 0
scoreboard players set @a flight_time 0
scoreboard players set @a TempCalc 0
tag @a remove mm_was_murderer

#TEST IF GAME CAN START | PATH 1.4.1

scoreboard players set PlayerCount config 0
execute as @a run scoreboard players add PlayerCount config 1

scoreboard players set CanStart config 1
execute if score MurdererCountLength config matches 1 if score PlayerCount config matches ..3 run scoreboard players set CanStart config 0
execute if score MurdererCountLength config matches 2 if score PlayerCount config matches ..7 run scoreboard players set CanStart config 0
execute if score MurdererCountLength config matches 3 if score PlayerCount config matches ..15 run scoreboard players set CanStart config 0

#START GAME | PATH 1.4.1.1
execute if score CanStart config matches 1 run function mm:start_game

#GAME NOT ABLE TO START
execute if score CanStart config matches 0 run tellraw @a {"text":"Not enough players!","color":"red","bold":true}
execute if score MurdererCountLength config matches 1 if score CanStart config matches 0 run tellraw @a {"text":"Need at least 4 players","color":"red","bold":false}
execute if score MurdererCountLength config matches 2 if score CanStart config matches 0 run tellraw @a {"text":"Need at least 8 players","color":"red","bold":false}
execute if score MurdererCountLength config matches 3 if score CanStart config matches 0 run tellraw @a {"text":"Need at least 16 players","color":"red","bold":false}
execute if score CanStart config matches 0 run playsound minecraft:block.note_block.bass block @a -40 -55 3 1 0.5