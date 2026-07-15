#CHECK PLAYER HEIGHT | PATH 3.2

scoreboard players add HeightCheckCount config 1
scoreboard players add @s HeightRetries temp 1

execute store result score @s temp run data get entity @s Pos[1] 1
execute if score @s temp < MapMinHeight config if score @s HeightRetries temp matches ..5 run data modify storage mm:temp target set value "@s"
execute if score @s temp < MapMinHeight config if score @s HeightRetries temp matches ..5 run function mm:spread_players with storage mm:temp
execute if score @s temp < MapMinHeight config if score @s HeightRetries temp matches ..5 run function mm:check_player_height

execute if score @s temp < MapMinHeight config if score @s HeightRetries temp matches 6.. run tp @s 130 -40 204
execute if score @s temp < MapMinHeight config if score @s HeightRetries temp matches 6.. run scoreboard players set @s HeightRetries temp 0