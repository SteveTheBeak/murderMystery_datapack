data remove entity @s interaction
playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2
scoreboard players add MapSelectIndex config 1
execute if score MapSelectIndex config matches 4.. run scoreboard players set MapSelectIndex config 0
function mm:apply_map_select_value