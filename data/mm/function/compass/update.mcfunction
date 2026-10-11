#Runs as + at a murderer. Finds the ONE nearest innocent/detective and re-aims the compass at them.
data remove storage mm:compass target
execute as @a[team=!murderer,tag=!mm_dead,gamemode=adventure,sort=nearest,limit=1] run function mm:compass/read_target

#Nobody to track
execute unless data storage mm:compass target run return 0

#Remove duplicate copies if there somehow are any
execute store result score @s TempCalc run clear @s minecraft:compass[minecraft:custom_data={mm_compass:1b}] 0
execute if score @s TempCalc matches 2.. run clear @s minecraft:compass[minecraft:custom_data={mm_compass:1b}]

function mm:compass/give with storage mm:compass target
