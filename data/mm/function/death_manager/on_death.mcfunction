gamemode spectator @s
tellraw @s {"text":"You died! Spectating until the round ends.","color":"red","italic":true}
team leave @s

scoreboard players set @s deaths 0

execute store result storage mm:temp x double 1 run data get entity @s Pos[0] 1
execute store result storage mm:temp y double 1 run data get entity @s Pos[1] 1
execute store result storage mm:temp z double 1 run data get entity @s Pos[2] 1
execute store result storage mm:temp yaw float 1 run data get entity @s Rotation[0] 1
data modify storage mm:temp uuid set from entity @s UUID
function mm:death_manager/spawn_body with storage mm:temp