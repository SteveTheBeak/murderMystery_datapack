#Display text
execute if score RoleFilterIndex config matches 0 as @e[type=text_display,tag=filter_role_display,limit=1] run data merge entity @s {text:{text:"Toggle role: Jester",color:"yellow",bold:false}}

#Check if the selected role is disabled, 1 is disabled
execute if score RoleFilterIndex config matches 0 store success score RoleFilterOff config if score Jester roleFilter matches 1

#Change colour
execute if score RoleFilterOff config matches 0 as @e[type=text_display,tag=filter_role_display,limit=1] run data merge entity @s {text:{color:"green"}}
execute if score RoleFilterOff config matches 1 as @e[type=text_display,tag=filter_role_display,limit=1] run data merge entity @s {text:{color:"red"}}