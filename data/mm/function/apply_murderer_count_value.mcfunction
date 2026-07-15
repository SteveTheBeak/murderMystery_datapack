#APPLY VALUE TO DISPLAY | PATH 1.2.1

execute if score MurdererCountIndex config matches 0 run scoreboard players set MurdererCountLength config 1
execute if score MurdererCountIndex config matches 1 run scoreboard players set MurdererCountLength config 2
execute if score MurdererCountIndex config matches 2 run scoreboard players set MurdererCountLength config 3

execute if score MurdererCountIndex config matches 0 as @e[type=text_display,tag=setting_murderer_count_display,limit=1] run data merge entity @s {text:{text:"Murderers: 1",color:"yellow",bold:false}}
execute if score MurdererCountIndex config matches 1 as @e[type=text_display,tag=setting_murderer_count_display,limit=1] run data merge entity @s {text:{text:"Murderers: 2",color:"yellow",bold:false}}
execute if score MurdererCountIndex config matches 2 as @e[type=text_display,tag=setting_murderer_count_display,limit=1] run data merge entity @s {text:{text:"Murderers: 3",color:"yellow",bold:false}}