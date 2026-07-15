#IMMEDIATE START | PATH 3

#TIMER SETUP
execute run title @a title {"text":"GO!","color":"red","bold":true}
execute run scoreboard players operation PvpTimer pvptimer = TimerLength config
execute run scoreboard players operation PvpTimer pvptimer *= Const1200 const

#MURDERER COUNT INDEX
execute run scoreboard players operation Murderers murderers = MurdererCountIndex config

#TELEPORT
execute store result storage mm:temp x int 1 run scoreboard players get MapCenterX config
execute store result storage mm:temp z int 1 run scoreboard players get MapCenterZ config
execute store result storage mm:temp radius int 1 run scoreboard players get MapRadius config
execute store result storage mm:temp maxheight int 1 run scoreboard players get MapMaxHeight config
execute run data modify storage mm:temp target set value "@a"

#SPREAD PLAYERS | PATH 3.1
execute run function mm:spread_players with storage mm:temp

#CHECK PLAYER HEIGHT | PATH 3.2
execute run execute as @a run function mm:check_player_height

execute run scoreboard players set GameActive config 0
execute as @e[type=text_display,tag=start_button_display,limit=1] run data merge entity @s {text:{text:"START GAME",color:"green",bold:true}}
execute run scoreboard players set Countdown timer -1

#IN GAME PROCEDURES | PATH 3.3
execute run function mm:in_game