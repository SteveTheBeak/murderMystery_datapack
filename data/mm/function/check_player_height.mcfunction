scoreboard players add HeightCheckCount config 1
execute store result score @s temp run data get entity @s Pos[1] 1
execute if score @s temp < MapMinHeight config run data modify storage mm:temp target set value "@s"
execute if score @s temp < MapMinHeight config run function mm:spread_players with storage mm:temp
execute store result score @s temp run data get entity @s Pos[1] 1
execute if score @s temp < MapMinHeight config run function mm:check_player_height