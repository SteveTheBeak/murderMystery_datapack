data remove entity @s interaction
playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2
scoreboard players add MurdererCountIndex config 1
execute if score MurdererCountIndex config matches 3.. run scoreboard players set MurdererCountIndex config 0
function mm:apply_murderer_count_value