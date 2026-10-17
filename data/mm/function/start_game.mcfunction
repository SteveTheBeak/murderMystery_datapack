#START GAME | PATH 1.4.1.1

scoreboard players set GameActive config 1

tag @a remove mm_dead
tag @a remove mm_spec_blocked
scoreboard players set @a EnforceTimer 0

scoreboard players set MapWasRandom config 0
execute if score MapSelectIndex config matches 9 run scoreboard players set MapWasRandom config 1
execute if score MapSelectIndex config matches 9 run function mm:pick_random_map
execute if score MapWasRandom config matches 1 run function mm:apply_map_coords

#Change time of day depending on map
execute if score MapSelectIndex config matches 0 run time set minecraft:noon
execute if score MapSelectIndex config matches 1 run time set minecraft:noon
execute if score MapSelectIndex config matches 2 run time set minecraft:noon
execute if score MapSelectIndex config matches 3 run time set minecraft:noon
execute if score MapSelectIndex config matches 4 run time set minecraft:noon
execute if score MapSelectIndex config matches 5 run time set minecraft:midnight
execute if score MapSelectIndex config matches 6 run time set minecraft:noon
execute if score MapSelectIndex config matches 7 run time set minecraft:midnight
execute if score MapSelectIndex config matches 8 run time set minecraft:midnight

#Reset pool table if map is airship
forceload add 241 -1 202 27
execute run setblock 220 -37 12 repeater[facing=west]

team empty murderer
team empty detective
team empty innocent
team empty jester

scoreboard players set Countdown timer 101

execute as @e[type=text_display,tag=start_button_display,limit=1] run data merge entity @s {text:{text:"CANCEL GAME",color:"red",bold:true}}