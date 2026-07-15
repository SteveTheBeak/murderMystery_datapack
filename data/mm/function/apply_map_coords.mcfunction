#The Skeld
execute if score MapSelectIndex config matches 0 run scoreboard players set MapCenterX config 130
execute if score MapSelectIndex config matches 0 run scoreboard players set MapCenterZ config 166
execute if score MapSelectIndex config matches 0 run scoreboard players set MapRadius config 60
execute if score MapSelectIndex config matches 0 run scoreboard players set MapMaxHeight config -48
execute if score MapSelectIndex config matches 0 run scoreboard players set MapMinHeight config -49

execute if score MapSelectIndex config matches 1 run scoreboard players set MapCenterX config 5000
execute if score MapSelectIndex config matches 1 run scoreboard players set MapCenterZ config 0
execute if score MapSelectIndex config matches 1 run scoreboard players set MapRadius config 150