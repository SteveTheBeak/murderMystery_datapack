#Move each flying sword forward along its own facing direction
execute as @e[tag=thrown_sword,type=item_display] at @s run tp @s ^ ^ ^0.6

#Advance the spin
execute as @e[tag=thrown_sword,type=item_display] run scoreboard players add @s spinstep 1
execute as @e[tag=thrown_sword,type=item_display] run scoreboard players operation @s spinstep %= Const8 const
execute as @e[tag=thrown_sword,type=item_display] run function mm:throw_sword/spin_lookup

#Track flight duration, despawn at max range
execute as @e[tag=thrown_sword,type=item_display] run scoreboard players add @s flight_time 1
execute as @e[tag=thrown_sword,type=item_display] if score @s flight_time matches 67.. run function mm:throw_sword/despawn_projectile