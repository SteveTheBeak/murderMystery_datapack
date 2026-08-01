advancement revoke @s only mm:shop/darkness_detect

#Consume the sculk sensor
clear @s minecraft:sculk_sensor[minecraft:custom_data={mm_shop_darkness_real:1b}]

#Give darkness to all nearby non-murderers (innocents and detective)
effect give @a[distance=..15,team=!murderer] minecraft:darkness 6 0 true
effect give @a[distance=..15,team=!murderer] minecraft:blindness 6 0 true

tellraw @s {"text":"Nearby players are blinded!","color":"aqua"}
playsound minecraft:entity.warden.sonic_boom player @s