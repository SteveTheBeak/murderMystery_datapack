#BUTTON INTERACTION DETECTION SYSTEM | PATH 1

#Game master lock
execute if score GmActive config matches 1 run function mm:gm/lock_buttons

#TIMER CYCLE | PATH 1.1
execute as @e[type=interaction,tag=setting_timer] if data entity @s interaction run function mm:cycle_timer
execute as @e[type=interaction,tag=setting_timer] if data entity @s attack run function mm:cycle_timer_back

#MURDERER COUNT CYCLE | PATH 1.2
execute as @e[type=interaction,tag=setting_murderer_count] if data entity @s interaction run function mm:cycle_murderer_count
execute as @e[type=interaction,tag=setting_murderer_count] if data entity @s attack run function mm:cycle_murderer_count_back

#MAP CYCLE | PATH 1.3
execute as @e[type=interaction,tag=map_select] if data entity @s interaction run function mm:cycle_map_select
execute as @e[type=interaction,tag=map_select] if data entity @s attack run function mm:cycle_map_select_back

#Map filter cycle
execute as @e[type=interaction,tag=filter_map] if data entity @s interaction run function mm:cycle_map_filter
execute as @e[type=interaction,tag=filter_map] if data entity @s attack run function mm:cycle_map_filter_toggle

#Role filter cycle
execute as @e[type=interaction,tag=filter_role] if data entity @s interaction run function mm:cycle_role_filter
execute as @e[type=interaction,tag=filter_role] if data entity @s attack run function mm:cycle_role_filter_toggle

#START BUTTON | PATH 1.4
execute as @e[type=interaction,tag=start_button] if data entity @s interaction run function mm:press_start

#TOGGLE SHOP ITEMS | PATH 1.5
execute as @e[type=interaction,tag=setting_shop] if data entity @s interaction run function mm:cycle_toggle_items

#Game master vote
execute as @e[type=interaction,tag=gm_button] if data entity @s interaction run function mm:gm/press
execute as @e[type=interaction,tag=gm_button] if data entity @s attack run data remove entity @s attack
execute if score GmVoteTimer config matches 1.. run function mm:gm/vote_tick
execute if score GmCooldown config matches 1.. run scoreboard players remove GmCooldown config 1