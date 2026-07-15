#BUTTON INTERACTION DETECTION SYSTEM | PATH 1

#TIMER CYCLE | PATH 1.1
execute as @e[type=interaction,tag=setting_timer] if data entity @s interaction run function mm:cycle_timer

#MURDERER COUNT CYCLE | PATH 1.2
execute as @e[type=interaction,tag=setting_murderer_count] if data entity @s interaction run function mm:cycle_murderer_count

#MAP CYCLE | PATH 1.3
execute as @e[type=interaction,tag=map_select] if data entity @s interaction run function mm:cycle_map_select

#START BUTTON | PATH 1.4
execute as @e[type=interaction,tag=start_button] if data entity @s interaction run function mm:press_start