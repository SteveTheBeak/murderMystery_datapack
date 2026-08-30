#MAP CYCLE | PATH 1.3

data remove entity @s interaction
execute at @s unless score Countdown timer matches 1.. run playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2

execute unless score Countdown timer matches 1.. run scoreboard players add MapSelectIndex config 1
execute unless score Countdown timer matches 1.. if score MapSelectIndex config matches 9.. run scoreboard players set MapSelectIndex config 0

#APPLY MAP TO DISPLAY | PATH 1.3.1
execute unless score Countdown timer matches 1.. run function mm:apply_map_select_value

#APPLY MAP COORDS | PATH 1.3.2
execute unless score Countdown timer matches 1.. run function mm:apply_map_coords