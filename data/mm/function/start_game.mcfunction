#START GAME | PATH 1.4.1.1

scoreboard players set GameActive config 1

scoreboard players set MapWasRandom config 0
execute if score MapSelectIndex config matches 7 run scoreboard players set MapWasRandom config 1
execute if score MapSelectIndex config matches 7 store result score MapSelectIndex config run random value 0..6
execute if score MapWasRandom config matches 1 run function mm:apply_map_coords

team empty murderer
team empty detective
team empty innocent

scoreboard players set Countdown timer 101

execute as @e[type=text_display,tag=start_button_display,limit=1] run data merge entity @s {text:{text:"CANCEL GAME",color:"red",bold:true}}