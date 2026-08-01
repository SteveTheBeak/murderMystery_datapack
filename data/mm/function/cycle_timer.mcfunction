#TIMER CYCLE | PATH 1.1

data remove entity @s interaction
execute at @s unless score Countdown timer matches 1.. run playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2

execute unless score Countdown timer matches 1.. run scoreboard players add TimerIndex config 1
execute unless score Countdown timer matches 1.. if score TimerIndex config matches 5.. run scoreboard players set TimerIndex config 0

#APPLY VALUE TO TIMER | PATH 1.1.2
execute unless score Countdown timer matches 1.. run function mm:apply_timer_value