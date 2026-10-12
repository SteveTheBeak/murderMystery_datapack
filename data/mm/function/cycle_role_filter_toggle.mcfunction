#Toggle selected role

data remove entity @s attack
execute if score Countdown timer matches 1.. run return 0
execute at @s run playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2

#Flip the selected role
execute if score RoleFilterIndex config matches 0 store success score Jester roleFilter unless score Jester roleFilter matches 1

function mm:apply_role_filter