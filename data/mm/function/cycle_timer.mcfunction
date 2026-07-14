data remove entity @s interaction
playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2
scoreboard players add TimerIndex config 1
execute if score TimerIndex config matches 5.. run scoreboard players set TimerIndex config 0
function mm:apply_timer_value