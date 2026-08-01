#MURDERER COUNT CYCLE | PATH 1.2

data remove entity @s interaction
execute at @s unless score Countdown timer matches 1.. run playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2

execute unless score Countdown timer matches 1.. run scoreboard players add MurdererCountIndex config 1
execute unless score Countdown timer matches 1.. if score MurdererCountIndex config matches 3.. run scoreboard players set MurdererCountIndex config 0

#APPLY VALUE TO DISPLAY | PATH 1.2.1
execute unless score Countdown timer matches 1.. run function mm:apply_murderer_count_value