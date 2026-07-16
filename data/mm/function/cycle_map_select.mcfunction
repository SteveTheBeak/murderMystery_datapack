#MAP CYCLE | PATH 1.3

data remove entity @s interaction
playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2
scoreboard players add MapSelectIndex config 1
execute if score MapSelectIndex config matches 6.. run scoreboard players set MapSelectIndex config 0

#APPLY MAP TO DISPLAY | PATH 1.3.1
function mm:apply_map_select_value

#APPLY MAP COORDS | PATH 1.3.2
function mm:apply_map_coords