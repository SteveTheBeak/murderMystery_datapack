advancement revoke @s only mm:shop/freeze_detect

#Consume the ice
clear @s minecraft:ice[minecraft:custom_data={mm_shop_freeze_real:1b}]

#Freeze all murderers: slowness 255 and take away their sword for 3 seconds
effect give @a[team=murderer] minecraft:slowness 3 255 true
effect give @a[team=murderer] minecraft:jump_boost 3 255 true
execute as @a[team=murderer] run item replace entity @s hotbar.1 with air
execute as @a[team=murderer] run scoreboard players set @s SwordAway 1
scoreboard players set @a[team=murderer] FreezeTimer 60
execute as @a[team=murderer] run attribute @s minecraft:air_drag_modifier base set 2048

tellraw @s {"text":"You froze the murderers!","color":"aqua"}
playsound minecraft:entity.player.hurt_freeze player @s