#Runs as the chosen target player. Stores their position + dimension.
execute store result storage mm:compass target.x int 1 run data get entity @s Pos[0]
execute store result storage mm:compass target.y int 1 run data get entity @s Pos[1]
execute store result storage mm:compass target.z int 1 run data get entity @s Pos[2]
data modify storage mm:compass target.dim set from entity @s Dimension
