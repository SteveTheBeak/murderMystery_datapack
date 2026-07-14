execute if score TimerIndex config matches 0 run scoreboard players set TimerLength config 5
execute if score TimerIndex config matches 1 run scoreboard players set TimerLength config 8
execute if score TimerIndex config matches 2 run scoreboard players set TimerLength config 10
execute if score TimerIndex config matches 3 run scoreboard players set TimerLength config 12
execute if score TimerIndex config matches 4 run scoreboard players set TimerLength config 15

execute if score TimerIndex config matches 0 as @e[type=text_display,tag=setting_timer_display,limit=1] run data merge entity @s {text:{text:"Time limit: 5 minutes",color:"yellow",bold:false}}
execute if score TimerIndex config matches 1 as @e[type=text_display,tag=setting_timer_display,limit=1] run data merge entity @s {text:{text:"Time limit: 8 minutes",color:"yellow",bold:false}}
execute if score TimerIndex config matches 2 as @e[type=text_display,tag=setting_timer_display,limit=1] run data merge entity @s {text:{text:"Time limit: 10 minutes",color:"yellow",bold:false}}
execute if score TimerIndex config matches 3 as @e[type=text_display,tag=setting_timer_display,limit=1] run data merge entity @s {text:{text:"Time limit: 12 minutes",color:"yellow",bold:false}}
execute if score TimerIndex config matches 4 as @e[type=text_display,tag=setting_timer_display,limit=1] run data merge entity @s {text:{text:"Time limit: 15 minutes",color:"yellow",bold:false}}