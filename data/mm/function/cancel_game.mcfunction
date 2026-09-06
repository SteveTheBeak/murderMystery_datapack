#CANCEL GAME | PATH 1.4.2

scoreboard players set GameActive config 0
execute if score MapWasRandom config matches 1 run scoreboard players set MapSelectIndex config 8
execute if score MapWasRandom config matches 1 run function mm:apply_map_select_value

scoreboard players set Countdown timer -1
scoreboard players set PvpTimer pvptimer -1
team empty murderer
team empty detective
team empty innocent
title @a clear
tellraw @a {"text":"Game cancelled.","color":"gray","italic":true}

kill @e[tag=dead_body]
kill @e[tag=mm_detective_pickup]
kill @e[tag=mm_decoy]
kill @e[type=item_frame,tag=mm_gold_frame]
kill @e[type=item,tag=mm_gold]
tag @e[tag=gold_active] remove gold_active

execute as @e[type=text_display,tag=start_button_display,limit=1] run data merge entity @s {text:{text:"START GAME",color:"green",bold:true}}