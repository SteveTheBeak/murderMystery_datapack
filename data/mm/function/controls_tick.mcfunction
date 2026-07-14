execute as @e[type=interaction,tag=setting_timer] if data entity @s interaction run function mm:cycle_timer
execute as @e[type=interaction,tag=setting_murderer_count] if data entity @s interaction run function mm:cycle_murderer_count

execute as @e[type=interaction,tag=start_button] if data entity @s interaction run function mm:press_start