#MURDERER COUNT CYCLE BACKWARDS | PATH 1.2

data remove entity @s attack
execute at @s unless score Countdown timer matches 1.. run playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2

execute unless score Countdown timer matches 1.. run scoreboard players remove MurdererCountIndex config 1
execute unless score Countdown timer matches 1.. if score MurdererCountIndex config matches ..-1 run scoreboard players set MurdererCountIndex config 2

#APPLY VALUE TO DISPLAY | PATH 1.2.1
execute unless score Countdown timer matches 1.. run function mm:apply_murderer_count_value