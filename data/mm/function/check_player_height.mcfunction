#CHECK PLAYER HEIGHT | PATH 3.2

scoreboard players add HeightCheckCount config 1
scoreboard players add @s retries 1

execute store result score @s temp run data get entity @s Pos[1] 1
execute if score @s temp < MapMinHeight config if score @s retries matches ..5 run data modify storage mm:temp target set value "@s"
execute if score @s temp < MapMinHeight config if score @s retries matches ..5 run function mm:spread_players with storage mm:temp
execute if score @s temp < MapMinHeight config if score @s retries matches ..5 run function mm:check_player_height


#If map is skeld and height has been checked more than 6 times, teleport to set location
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 0 if score @s retries matches 6.. run tp @s 152 -48 169
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 0 if score @s retries matches 6.. run scoreboard players set @s retries 0

#If map is airship
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 1 if score @s retries matches 6.. run tp @s 124 -42 67
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 1 if score @s retries matches 6.. run scoreboard players set @s retries 0

#If map is palace
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 2 if score @s retries matches 6.. run tp @s 538 -49 312
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 2 if score @s retries matches 6.. run scoreboard players set @s retries 0

#If map is cruise
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 3 if score @s retries matches 6.. run tp @s -24 -13 475
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 3 if score @s retries matches 6.. run scoreboard players set @s retries 0

#If map is museum
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 4 if score @s retries matches 6.. run tp @s -387 5 513
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 4 if score @s retries matches 6.. run scoreboard players set @s retries 0

#If map is backrooms
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 5 if score @s retries matches 6.. run tp @s 306 -56 -255
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 5 if score @s retries matches 6.. run scoreboard players set @s retries 0

#If map is underwater base
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 6 if score @s retries matches 6.. run tp @s -348 -57 157
execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches 6 if score @s retries matches 6.. run scoreboard players set @s retries 0