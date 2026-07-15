#START GAME | PATH 1.4.1.1

scoreboard players set GameActive config 1

team empty murderer
team empty detective
team empty innocent

scoreboard players set Countdown timer 101

execute as @e[type=text_display,tag=start_button_display,limit=1] run data merge entity @s {text:{text:"CANCEL GAME",color:"red",bold:true}}