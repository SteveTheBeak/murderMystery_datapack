#Cycle through roles to enable/disable
data remove entity @s interaction
execute at @s unless score Countdown timer matches 1.. run playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2

execute unless score Countdown timer matches 1.. run scoreboard players add RoleFilterIndex config 1
execute unless score Countdown timer matches 1.. if score RoleFilterIndex config matches 1.. run scoreboard players set RoleFilterIndex config 0

execute unless score Countdown timer matches 1.. run function mm:apply_role_filter