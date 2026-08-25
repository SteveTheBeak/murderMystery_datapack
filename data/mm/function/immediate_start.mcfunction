#IMMEDIATE START | PATH 3

scoreboard players set GameActive config 1

clear @a
kill @e[tag=dead_body]
kill @e[tag=mm_detective_pickup]
kill @e[tag=mm_decoy]
kill @e[type=arrow]

#TIMER SETUP
execute run scoreboard players operation PvpTimer pvptimer = TimerLength config
execute run scoreboard players operation PvpTimer pvptimer *= Const1200 const

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

scoreboard players set @a retries 0

#IN GAME PROCEDURES | PATH 3.3
execute run function mm:in_game

#Reset museum side quest
execute if score MapSelectIndex config matches 4 run fill -431 6 554 -436 10 554 minecraft:light_gray_stained_glass_pane

#If map is museum, place side quest key
execute if score MapSelectIndex config matches 4 run summon minecraft:item_frame -434 7 559 {Item:{id:"minecraft:ominous_trial_key",Count:1b,components:{"minecraft:custom_name":{text:"The Granny Resurfacer 3000",color:"gold",italic:false}}},Facing:3b,Invisible:1b}

#Remove oats
kill @e[type=minecraft:item_frame,x=-398,y=3,z=403]
