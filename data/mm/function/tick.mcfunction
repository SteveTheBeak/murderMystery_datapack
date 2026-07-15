function mm:controls_tick
function mm:debug_tick

execute if score Countdown timer matches 1.. run scoreboard players remove Countdown timer 1
execute if score Countdown timer matches 100 run title @a title {"text":"5","color":"yellow","bold":true}
execute if score Countdown timer matches 80 run title @a title {"text":"4","color":"yellow","bold":true}
execute if score Countdown timer matches 60 run title @a title {"text":"3","color":"yellow","bold":true}
execute if score Countdown timer matches 40 run title @a title {"text":"2","color":"yellow","bold":true}
execute if score Countdown timer matches 20 run title @a title {"text":"1","color":"yellow","bold":true}

execute if score Countdown timer matches 0 run function mm:immediate_start

execute if score PvpTimer pvptimer matches 6000 run title @a title {"text":"5 minutes remaining","color":"red","bold":false}
execute if score PvpTimer pvptimer matches 1200 run title @a title {"text":"1 minute remaining","color":"red","bold":false}
execute if score PvpTimer pvptimer matches 1.. run scoreboard players remove PvpTimer pvptimer 1

execute if score PvpTimer pvptimer matches 0 run function mm:immediate_end
execute if score PvpTimer pvptimer matches -1 run clear @a