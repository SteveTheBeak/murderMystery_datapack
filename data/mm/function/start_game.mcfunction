scoreboard players set GameActive config 1

team empty murderer
team empty detective
team empty innocent
execute as @r run team join murderer @s
execute as @r[team=!murderer] run team join detective @s
team join innocent @a[team=!murderer,team=!detective]
execute as @a[team=murderer] run give @s iron_sword
execute as @a[team=detective] run give @s compass
execute as @a[team=innocent] run give @s bread
gamerule pvp true
scoreboard players set Countdown timer 101

execute as @e[type=text_display,tag=start_button_display,limit=1] run data merge entity @s {text:{text:"CANCEL GAME",color:"red",bold:true}}