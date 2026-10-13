$data modify storage mm:temp gm_pid set from entity @s $(kind).player
scoreboard players set #gmOk temp 0
execute as @a run function mm:gm/match_presser
$execute if score #gmOk temp matches 0 run data remove entity @s $(kind)