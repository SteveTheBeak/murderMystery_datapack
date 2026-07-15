function mm:controls_tick
function mm:debug_tick

execute if score Countdown timer matches 1.. run scoreboard players remove Countdown timer 1
execute if score Countdown timer matches 100 run title @a title {"text":"5","color":"yellow","bold":true}
execute if score Countdown timer matches 80 run title @a title {"text":"4","color":"yellow","bold":true}
execute if score Countdown timer matches 60 run title @a title {"text":"3","color":"yellow","bold":true}
execute if score Countdown timer matches 40 run title @a title {"text":"2","color":"yellow","bold":true}
execute if score Countdown timer matches 20 run title @a title {"text":"1","color":"yellow","bold":true}

execute if score Countdown timer matches 0 run title @a title {"text":"GO!","color":"red","bold":true}
execute if score Countdown timer matches 0 run scoreboard players operation PvpTimer pvptimer = TimerLength config
execute if score Countdown timer matches 0 run scoreboard players operation PvpTimer pvptimer *= Const1200 const

execute if score Countdown timer matches 0 store result storage mm:temp x int 1 run scoreboard players get MapCenterX config
execute if score Countdown timer matches 0 store result storage mm:temp z int 1 run scoreboard players get MapCenterZ config
execute if score Countdown timer matches 0 store result storage mm:temp radius int 1 run scoreboard players get MapRadius config
execute if score Countdown timer matches 0 store result storage mm:temp maxheight int 1 run scoreboard players get MapMaxHeight config
execute if score Countdown timer matches 0 run data modify storage mm:temp target set value "@a"
execute if score Countdown timer matches 0 run function mm:spread_players with storage mm:temp
execute if score Countdown timer matches 0 run execute as @a run function mm:check_player_height

execute if score Countdown timer matches 0 run scoreboard players set GameActive config 0
execute if score Countdown timer matches 0 as @e[type=text_display,tag=start_button_display,limit=1] run data merge entity @s {text:{text:"START GAME",color:"green",bold:true}}
execute if score Countdown timer matches 0 run scoreboard players set Countdown timer -1

execute if score PvpTimer pvptimer matches 6000 run title @a title {"text":"5 minutes remaining","color":"red","bold":false}
execute if score PvpTimer pvptimer matches 1200 run title @a title {"text":"1 minute remaining","color":"red","bold":false}
execute if score PvpTimer pvptimer matches 1.. run scoreboard players remove PvpTimer pvptimer 1
execute if score PvpTimer pvptimer matches 0 run gamerule pvp false
execute if score PvpTimer pvptimer matches 0 run tellraw @a {"text":"PvP has been disabled.","color":"gray","italic":true}
execute if score PvpTimer pvptimer matches 0 run scoreboard players set PvpTimer pvptimer -1