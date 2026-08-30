#MAP CYCLE BACKWARDS | PATH 1.3

data remove entity @s attack
execute at @s unless score Countdown timer matches 1.. run playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2

execute unless score Countdown timer matches 1.. run scoreboard players remove MapSelectIndex config 1
execute unless score Countdown timer matches 1.. if score MapSelectIndex config matches ..-1 run scoreboard players set MapSelectIndex config 8

#APPLY MAP TO DISPLAY | PATH 1.3.1
execute unless score Countdown timer matches 1.. run function mm:apply_map_select_value

#APPLY MAP COORDS | PATH 1.3.2
execute unless score Countdown timer matches 1.. run function mm:apply_map_coords