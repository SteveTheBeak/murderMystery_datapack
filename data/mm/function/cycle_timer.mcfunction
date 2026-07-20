#TIMER CYCLE | PATH 1.1

data remove entity @s interaction
playsound minecraft:ui.button.click block @a -49 -55 3 1 1.2
scoreboard players add TimerIndex config 1
execute if score TimerIndex config matches 5.. run scoreboard players set TimerIndex config 0

#APPLY VALUE TO TIMER | PATH 1.1.2
function mm:apply_timer_value