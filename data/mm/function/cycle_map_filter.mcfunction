#Cycle through maps to filter out for randomizer
data remove entity @s interaction
execute at @s unless score Countdown timer matches 1.. run playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2

execute unless score Countdown timer matches 1.. run scoreboard players add MapFilterIndex config 1
execute unless score Countdown timer matches 1.. if score MapFilterIndex config matches 9.. run scoreboard players set MapFilterIndex config 0

execute unless score Countdown timer matches 1.. run function mm:apply_map_filter
