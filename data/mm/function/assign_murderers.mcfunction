#Recursive function to assign murderers | PATH 3.3.1

execute as @r[team=!murderer] run function mm:make_murderer
scoreboard players remove MurdererLoop temp 1
execute if score MurdererLoop temp matches 1.. run function mm:assign_murderers