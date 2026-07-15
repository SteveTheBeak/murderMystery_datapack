#Recursive function to assign murderers

execute as @r[team=!murderer] run team join murderer @s
scoreboard players remove MurdererLoop temp 1
execute if score MurdererLoop temp matches 1.. run function mm:assign_murderers 