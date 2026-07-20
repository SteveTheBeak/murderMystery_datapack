#Move both the visible sword and its hitbox forward together
execute as @e[tag=thrown_sword,type=item_display] at @s run tp @s ^ ^ ^0.8
execute as @e[tag=thrown_sword_hitbox,type=interaction] at @s run tp @s ^ ^ ^0.8

#If hit a block, remove sword and hitbox and give new sword
execute as @e[tag=thrown_sword_hitbox,type=interaction] if score @s flight_time matches 5.. at @s unless block ~ ~ ~ #minecraft:replaceable run execute as @a[team=murderer] run scoreboard players set @s SwordAway 0
execute as @e[tag=thrown_sword_hitbox,type=interaction] if score @s flight_time matches 5.. at @s unless block ~ ~ ~ #minecraft:replaceable run kill @e[tag=thrown_sword,limit=1,sort=nearest]
execute as @e[tag=thrown_sword_hitbox,type=interaction] if score @s flight_time matches 5.. at @s unless block ~ ~ ~ #minecraft:replaceable run kill @s

#Advance the spin (visual only)
execute as @e[tag=thrown_sword,type=item_display] run scoreboard players add @s spinstep 1
execute as @e[tag=thrown_sword,type=item_display] run scoreboard players operation @s spinstep %= Const8 const
execute as @e[tag=thrown_sword,type=item_display] run function mm:throw_sword/spin_lookup

#Check for a hit using the dedicated hitbox entity
execute as @e[tag=thrown_sword_hitbox,type=interaction] if score @s flight_time matches 5.. run function mm:throw_sword/check_hit

#Track flight duration, despawn at max range
execute as @e[tag=thrown_sword,type=item_display] run scoreboard players add @s flight_time 1
execute as @e[tag=thrown_sword_hitbox,type=interaction] run scoreboard players add @s flight_time 1
execute as @e[tag=thrown_sword_hitbox,type=interaction] if score @s flight_time matches 100.. run execute as @a[team=murderer] run scoreboard players set @s SwordAway 0
execute as @e[tag=thrown_sword_hitbox,type=interaction] if score @s flight_time matches 100.. run kill @e[tag=thrown_sword,limit=1,sort=nearest]
execute as @e[tag=thrown_sword_hitbox,type=interaction] if score @s flight_time matches 100.. run kill @s