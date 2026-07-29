#Common
execute as @e[tag=shop_invisibility_display] if score shop_invisibility config matches 1 run data merge entity @s {text:{color:"green"}}
execute as @e[tag=shop_invisibility_display] if score shop_invisibility config matches 0 run data merge entity @s {text:{color:"red"}}


#Innocent
execute as @e[tag=shop_innocent_speed_display] if score shop_innocent_speed config matches 1 run data merge entity @s {text:{color:"green"}}
execute as @e[tag=shop_innocent_speed_display] if score shop_innocent_speed config matches 0 run data merge entity @s {text:{color:"red"}}

execute as @e[tag=shop_innocent_bow_display] if score shop_innocent_bow config matches 1 run data merge entity @s {text:{color:"green"}}
execute as @e[tag=shop_innocent_bow_display] if score shop_innocent_bow config matches 0 run data merge entity @s {text:{color:"red"}}

execute as @e[tag=shop_innocent_extralife_display] if score shop_innocent_extralife config matches 1 run data merge entity @s {text:{color:"green"}}
execute as @e[tag=shop_innocent_extralife_display] if score shop_innocent_extralife config matches 0 run data merge entity @s {text:{color:"red"}}


#Detective
execute as @e[tag=shop_detective_glow_display] if score shop_detective_glow config matches 1 run data merge entity @s {text:{color:"green"}}
execute as @e[tag=shop_detective_glow_display] if score shop_detective_glow config matches 0 run data merge entity @s {text:{color:"red"}}

execute as @e[tag=shop_detective_freeze_display] if score shop_detective_freeze config matches 1 run data merge entity @s {text:{color:"green"}}
execute as @e[tag=shop_detective_freeze_display] if score shop_detective_freeze config matches 0 run data merge entity @s {text:{color:"red"}}

execute as @e[tag=shop_detective_extralife_display] if score shop_detective_extralife config matches 1 run data merge entity @s {text:{color:"green"}}
execute as @e[tag=shop_detective_extralife_display] if score shop_detective_extralife config matches 0 run data merge entity @s {text:{color:"red"}}


#Murderer
execute as @e[tag=shop_murderer_darkness_display] if score shop_murderer_darkness config matches 1 run data merge entity @s {text:{color:"green"}}
execute as @e[tag=shop_murderer_darkness_display] if score shop_murderer_darkness config matches 0 run data merge entity @s {text:{color:"red"}}

execute as @e[tag=shop_murderer_glow_display] if score shop_murderer_glow config matches 1 run data merge entity @s {text:{color:"green"}}
execute as @e[tag=shop_murderer_glow_display] if score shop_murderer_glow config matches 0 run data merge entity @s {text:{color:"red"}}

execute as @e[tag=shop_murderer_rocket_display] if score shop_murderer_rocket config matches 1 run data merge entity @s {text:{color:"green"}}
execute as @e[tag=shop_murderer_rocket_display] if score shop_murderer_rocket config matches 0 run data merge entity @s {text:{color:"red"}}