#CANCEL GAME | PATH 1.4.2

scoreboard players set GameActive config 0
scoreboard players set Countdown timer -1
scoreboard players set PvpTimer pvptimer -1
scoreboard players set @a MurdererCooldown 0
gamerule pvp false
team empty murderer
team empty detective
team empty innocent
title @a clear
tellraw @a {"text":"Game cancelled.","color":"gray","italic":true}

execute as @e[type=text_display,tag=start_button_display,limit=1] run data merge entity @s {text:{text:"START GAME",color:"green",bold:true}}