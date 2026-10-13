data modify storage mm:temp gm_uuid set from entity @s UUID
execute store success score #gmDiff temp run data modify storage mm:temp gm_uuid set from storage mm:temp gm_pid
execute if score #gmDiff temp matches 0 if score @s IsGm matches 1 run scoreboard players set #gmOk temp 1
execute if score #gmDiff temp matches 0 unless score @s IsGm matches 1 run tellraw @s {"text":"Only the Game Master can use the buttons!","color":"red"}